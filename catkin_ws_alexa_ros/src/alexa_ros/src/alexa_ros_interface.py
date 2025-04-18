#!/usr/bin/env python3

# Import necessary libraries
from flask import Flask  # Flask web framework to create a local server
from ask_sdk_core.skill_builder import SkillBuilder  # Alexa Skill Builder
from flask_ask_sdk.skill_adapter import SkillAdapter  # Alexa SDK Flask adapter
from ask_sdk_core.utils import is_request_type, is_intent_name  # Utilities for Alexa intent handling
from ask_sdk_core.handler_input import HandlerInput  # Handler input object for Alexa
from ask_sdk_model import Response  # Alexa response model
from ask_sdk_model.ui import SimpleCard  # UI card for Alexa skill
from ask_sdk_core.dispatch_components import AbstractExceptionHandler, AbstractRequestHandler  # Base classes for handling Alexa requests
from alexa_ros.msg import AlexaTaskAction, AlexaTaskGoal  # Custom ROS message types for Alexa task handling
import rospy  # ROS Python client library
import actionlib  # Action library for ROS
import threading  # Used to run ROS initialization in a separate thread

# Start a ROS node in a separate thread to avoid conflicts with Flask server
threading.Thread(target=lambda: rospy.init_node('alexa_ros_interface', disable_signals=True)).start()

# Create a ROS action client to send tasks to the robot
client = actionlib.SimpleActionClient('alexa_task', AlexaTaskAction)

# Initialize Flask application
app = Flask(__name__)

# Define Alexa intent handlers
class LaunchRequestHandler(AbstractRequestHandler):
    """Handles Alexa's Launch Request (when skill is started)."""
    
    def can_handle(self, handler_input):
        return is_request_type("LaunchRequest")(handler_input)

    def handle(self, handler_input):
        speech_text = "Welcome Master, How can I help you ?"
        
        # Send task 0 to ROS (e.g., wake-up command)
        goal = AlexaTaskGoal(task_number=0)
        client.send_goal(goal)

        return handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Online", speech_text)).set_should_end_session(False).response


class PickIntentHandler(AbstractRequestHandler):
    """Handles 'PickIntent' (command to pick an object)."""

    def can_handle(self, handler_input):
        return is_intent_name("PickIntent")(handler_input)

    def handle(self, handler_input):
        speech_text = "Affirmative Master, I am grabbing the object now!!"
        
        # Send task 1 to ROS (pick object)
        goal = AlexaTaskGoal(task_number=1)
        client.send_goal(goal)

        return handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Pick", speech_text)).set_should_end_session(False).response


class SleepIntentHandler(AbstractRequestHandler):
    """Handles 'SleepIntent' (command to put the robot in sleep mode)."""

    def can_handle(self, handler_input):
        return is_intent_name("SleepIntent")(handler_input)

    def handle(self, handler_input):
        speech_text = "Okay Master, I am going to sleep now"
        
        # Send task 2 to ROS (sleep mode)
        goal = AlexaTaskGoal(task_number=2)
        client.send_goal(goal)

        return handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Sleep", speech_text)).set_should_end_session(False).response


class WakeIntentHandler(AbstractRequestHandler):
    """Handles 'WakeIntent' (command to wake up the robot)."""

    def can_handle(self, handler_input):
        return is_intent_name("WakeIntent")(handler_input)

    def handle(self, handler_input):
        speech_text = "Master, I am online now. What would you like to do now?"
        
        # Send task 3 to ROS (wake-up)
        goal = AlexaTaskGoal(task_number=3)
        client.send_goal(goal)

        return handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Wake", speech_text)).set_should_end_session(False).response


class ExitIntentHandler(AbstractRequestHandler):
    """Handles 'ExitIntent' (command to shut down the robot)."""

    def can_handle(self, handler_input):
        return is_intent_name("ExitIntent")(handler_input)

    def handle(self, handler_input):
        speech_text = "Master, I am killing myself now. Goodbye, have a nice day!"
        
        # Send task 4 to ROS (shutdown)
        goal = AlexaTaskGoal(task_number=4)
        client.send_goal(goal)

        return handler_input.response_builder.speak(speech_text).set_card(
            SimpleCard("Exit", speech_text)).set_should_end_session(True).response


class AllExceptionHandler(AbstractExceptionHandler):
    """Handles any unexpected errors during skill execution."""

    def can_handle(self, handler_input, exception):
        return True

    def handle(self, handler_input, exception):
        speech = "Master, I am not getting what you are saying to me."
        return handler_input.response_builder.speak(speech).ask(speech).response


# Build the Alexa skill and register intent handlers
skill_builder = SkillBuilder()
skill_builder.add_request_handler(LaunchRequestHandler())
skill_builder.add_request_handler(PickIntentHandler())
skill_builder.add_request_handler(SleepIntentHandler())
skill_builder.add_request_handler(WakeIntentHandler())
skill_builder.add_request_handler(ExitIntentHandler())
skill_builder.add_exception_handler(AllExceptionHandler())

# Create a Skill Adapter for integrating with Flask
skill_adapter = SkillAdapter(
    skill=skill_builder.create(), 
    skill_id="amzn1.ask.skill.d21f7ac9-707f-4d9f-8cea-3bd52e0f64c0", 
    app=app
)

# Register skill adapter route
skill_adapter.register(app=app, route="/")

# Start Flask server
if __name__ == '__main__':
    app.run()

