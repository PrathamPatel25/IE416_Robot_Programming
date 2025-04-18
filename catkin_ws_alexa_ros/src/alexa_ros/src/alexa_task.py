#!/usr/bin/env python3

# Import necessary ROS and actionlib libraries
import rospy  # ROS library for Python
import actionlib  # Library for implementing action servers
import sys  # System-specific parameters and functions

# Import required message types
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint  # Message type for controlling robot joint movements
from alexa_ros.msg import AlexaTaskAction, AlexaTaskResult, AlexaTaskGoal  # Custom ROS message definitions for Alexa tasks


class AlexaServer(object):
    """
    ROS Action Server to handle Alexa voice commands and execute robot movement tasks.
    """

    # Create a result message instance for the action server
    result_ = AlexaTaskResult()

    # Store joint goal positions for different tasks
    goal_positions = []

    def __init__(self, name):
        """
        Constructor for the AlexaServer class.
        Initializes the action server and starts it.
        
        :param name: Name of the action server.
        """
        self.action_name_ = name  # Store the action name
        
        # Initialize an action server with the given name
        self.as_ = actionlib.SimpleActionServer(
            self.action_name_,  # Action name
            AlexaTaskAction,  # Action message type
            execute_cb=self.execute_cb,  # Callback function for goal execution
            auto_start=False  # Prevent auto-starting the server
        )
        
        # Start the action server
        self.as_.start()
        rospy.loginfo("Simple Action Server Started")  # Log message indicating successful initialization

    def execute_cb(self, goal):
        """
        Callback function that executes when a new goal is received.
        It moves the robot arm to predefined positions based on the task number.
        
        :param goal: Received goal from the action client, containing a task number.
        """
        success = True  # Variable to track execution status

        # Define the ROS topic for sending trajectory commands
        controller_name = "/manipulator/main_controller/command"

        # Define a ROS publisher for trajectory messages
        trajectory_publisher = rospy.Publisher(controller_name, JointTrajectory, queue_size=10)

        # Define joint names for the robotic arm
        kuka_joints = [
            "link_1_joint", "link_2_joint", "link_3_joint",
            "link_4_joint", "link_grip_l_joint", "link_grip_r_joint"
        ]

        # Assign predefined joint positions based on the task number
        if goal.task_number == 0:
            # Task 0: Move to ready position (wake-up)
            self.goal_positions = [0, 0.84, 0.53, -1.48, -0.01, 0.02]
            rospy.sleep(1)
        
        elif goal.task_number == 1:
            # Task 1: Move to pick position (pick up an object)
            self.goal_positions = [0.0, 1.40, 0.40, -0.61, -0.01, 0.019]
            rospy.sleep(1)

        elif goal.task_number == 2:
            # Task 2: Move to rest position (sleep mode)
            self.goal_positions = [-0.90, 0.4, 2.0, -1.075, 0.0, 0.019]
            rospy.sleep(1)

        elif goal.task_number == 3:
            # Task 3: Move to wake-up position (from sleep mode)
            self.goal_positions = [-0.80, -0.52, 2.00, -0.44, -0.01, 0.01]
            rospy.sleep(1)

        elif goal.task_number == 4:
            # Task 4: Move to shutdown position (turning off the system)
            self.goal_positions = [-0.80, -2.0, 2.0, -0.44, -0.01, 0.01]
            rospy.sleep(1)

        else:
            # Handle invalid task numbers
            rospy.logerr("Invalid goal")
            return  # Exit function without proceeding

        # Create a message to publish the joint trajectory
        dual_armR_traj_msgs = JointTrajectory()
        dual_armR_traj_msgs.joint_names = kuka_joints  # Assign joint names

        # Define a single trajectory point
        dual_armR_traj_msgs.points.append(JointTrajectoryPoint())

        # Assign the pre-defined goal positions to the trajectory point
        dual_armR_traj_msgs.points[0].positions = self.goal_positions

        # Set zero velocities and accelerations for a smooth movement
        dual_armR_traj_msgs.points[0].velocities = [0.0 for _ in kuka_joints]
        dual_armR_traj_msgs.points[0].accelerations = [0.0 for _ in kuka_joints]

        # Set the duration for completing the motion (3 seconds)
        dual_armR_traj_msgs.points[0].time_from_start = rospy.Duration(3)

        # Small delay to ensure proper execution
        rospy.sleep(1)

        # Publish the trajectory message to move the robot
        trajectory_publisher.publish(dual_armR_traj_msgs)

        # Check if the goal has been preempted (canceled by the client)
        if self.as_.is_preempt_requested():
            rospy.loginfo(f"{self.action_name_}: Preempted")  # Log message
            self.as_.set_preempted()  # Mark as preempted
            success = False  # Update success flag
        
        # If the task was executed successfully, send a success response
        if success:
            self.result_.success = True  # Set result as success
            rospy.loginfo(f"{self.action_name_}: Succeeded")  # Log success message
            self.as_.set_succeeded(self.result_)  # Notify action client of success


if __name__ == "__main__":
    # Initialize the ROS node
    rospy.init_node("alexa_task")

    # Create an instance of the AlexaServer
    server = AlexaServer(rospy.get_name())

    # Keep the node running
    rospy.spin()

