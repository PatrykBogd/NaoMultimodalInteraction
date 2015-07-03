; Auto-generated. Do not edit!


(cl:in-package my_kinnect-msg)


;//! \htmlinclude SkeletonCoords.msg.html

(cl:defclass <SkeletonCoords> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trans
    :reader trans
    :initarg :trans
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rot
    :reader rot
    :initarg :rot
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass SkeletonCoords (<SkeletonCoords>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SkeletonCoords>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SkeletonCoords)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_kinnect-msg:<SkeletonCoords> is deprecated: use my_kinnect-msg:SkeletonCoords instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SkeletonCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_kinnect-msg:header-val is deprecated.  Use my_kinnect-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trans-val :lambda-list '(m))
(cl:defmethod trans-val ((m <SkeletonCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_kinnect-msg:trans-val is deprecated.  Use my_kinnect-msg:trans instead.")
  (trans m))

(cl:ensure-generic-function 'rot-val :lambda-list '(m))
(cl:defmethod rot-val ((m <SkeletonCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_kinnect-msg:rot-val is deprecated.  Use my_kinnect-msg:rot instead.")
  (rot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SkeletonCoords>) ostream)
  "Serializes a message object of type '<SkeletonCoords>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trans) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SkeletonCoords>) istream)
  "Deserializes a message object of type '<SkeletonCoords>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trans) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SkeletonCoords>)))
  "Returns string type for a message object of type '<SkeletonCoords>"
  "my_kinnect/SkeletonCoords")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SkeletonCoords)))
  "Returns string type for a message object of type 'SkeletonCoords"
  "my_kinnect/SkeletonCoords")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SkeletonCoords>)))
  "Returns md5sum for a message object of type '<SkeletonCoords>"
  "d725e741d905a092b304b60154f00b8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SkeletonCoords)))
  "Returns md5sum for a message object of type 'SkeletonCoords"
  "d725e741d905a092b304b60154f00b8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SkeletonCoords>)))
  "Returns full string definition for message of type '<SkeletonCoords>"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 trans~%geometry_msgs/Quaternion rot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SkeletonCoords)))
  "Returns full string definition for message of type 'SkeletonCoords"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 trans~%geometry_msgs/Quaternion rot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SkeletonCoords>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trans))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SkeletonCoords>))
  "Converts a ROS message object to a list"
  (cl:list 'SkeletonCoords
    (cl:cons ':header (header msg))
    (cl:cons ':trans (trans msg))
    (cl:cons ':rot (rot msg))
))
