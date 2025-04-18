
(cl:in-package :asdf)

(defsystem "alexa_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AlexaTaskAction" :depends-on ("_package_AlexaTaskAction"))
    (:file "_package_AlexaTaskAction" :depends-on ("_package"))
    (:file "AlexaTaskActionFeedback" :depends-on ("_package_AlexaTaskActionFeedback"))
    (:file "_package_AlexaTaskActionFeedback" :depends-on ("_package"))
    (:file "AlexaTaskActionGoal" :depends-on ("_package_AlexaTaskActionGoal"))
    (:file "_package_AlexaTaskActionGoal" :depends-on ("_package"))
    (:file "AlexaTaskActionResult" :depends-on ("_package_AlexaTaskActionResult"))
    (:file "_package_AlexaTaskActionResult" :depends-on ("_package"))
    (:file "AlexaTaskFeedback" :depends-on ("_package_AlexaTaskFeedback"))
    (:file "_package_AlexaTaskFeedback" :depends-on ("_package"))
    (:file "AlexaTaskGoal" :depends-on ("_package_AlexaTaskGoal"))
    (:file "_package_AlexaTaskGoal" :depends-on ("_package"))
    (:file "AlexaTaskResult" :depends-on ("_package_AlexaTaskResult"))
    (:file "_package_AlexaTaskResult" :depends-on ("_package"))
  ))