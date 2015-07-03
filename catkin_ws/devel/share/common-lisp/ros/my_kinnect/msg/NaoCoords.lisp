; Auto-generated. Do not edit!


(cl:in-package my_kinnect-msg)


;//! \htmlinclude NaoCoords.msg.html

(cl:defclass <NaoCoords> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Part
    :reader Part
    :initarg :Part
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (Angles1
    :reader Angles1
    :initarg :Angles1
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (Angles2
    :reader Angles2
    :initarg :Angles2
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass NaoCoords (<NaoCoords>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaoCoords>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaoCoords)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_kinnect-msg:<NaoCoords> is deprecated: use my_kinnect-msg:NaoCoords instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NaoCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_kinnect-msg:header-val is deprecated.  Use my_kinnect-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Part-val :lambda-list '(m))
(cl:defmethod Part-val ((m <NaoCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_kinnect-msg:Part-val is deprecated.  Use my_kinnect-msg:Part instead.")
  (Part m))

(cl:ensure-generic-function 'Angles1-val :lambda-list '(m))
(cl:defmethod Angles1-val ((m <NaoCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_kinnect-msg:Angles1-val is deprecated.  Use my_kinnect-msg:Angles1 instead.")
  (Angles1 m))

(cl:ensure-generic-function 'Angles2-val :lambda-list '(m))
(cl:defmethod Angles2-val ((m <NaoCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_kinnect-msg:Angles2-val is deprecated.  Use my_kinnect-msg:Angles2 instead.")
  (Angles2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaoCoords>) ostream)
  "Serializes a message object of type '<NaoCoords>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Part) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Angles1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Angles2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaoCoords>) istream)
  "Deserializes a message object of type '<NaoCoords>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Part) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Angles1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Angles2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaoCoords>)))
  "Returns string type for a message object of type '<NaoCoords>"
  "my_kinnect/NaoCoords")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaoCoords)))
  "Returns string type for a message object of type 'NaoCoords"
  "my_kinnect/NaoCoords")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaoCoords>)))
  "Returns md5sum for a message object of type '<NaoCoords>"
  "b94c4e0951bd6ceb9b4d6c9e266caa85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaoCoords)))
  "Returns md5sum for a message object of type 'NaoCoords"
  "b94c4e0951bd6ceb9b4d6c9e266caa85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaoCoords>)))
  "Returns full string definition for message of type '<NaoCoords>"
  (cl:format cl:nil "Header header~%std_msgs/String Part~%std_msgs/Float32 Angles1~%std_msgs/Float32 Angles2~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaoCoords)))
  "Returns full string definition for message of type 'NaoCoords"
  (cl:format cl:nil "Header header~%std_msgs/String Part~%std_msgs/Float32 Angles1~%std_msgs/Float32 Angles2~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaoCoords>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Part))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Angles1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Angles2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaoCoords>))
  "Converts a ROS message object to a list"
  (cl:list 'NaoCoords
    (cl:cons ':header (header msg))
    (cl:cons ':Part (Part msg))
    (cl:cons ':Angles1 (Angles1 msg))
    (cl:cons ':Angles2 (Angles2 msg))
))
