#! /usr/bin/env python
import rospy
import tf
import math
import almath
import numpy as np
from naoqi import ALProxy
from std_msgs.msg import Header, Float32, String
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Quaternion
from my_kinnect.msg import SkeletonCoords, NaoCoords

class Monkey():

    CALIBRATION_LIMIT = 50
    GAIN = 400

    PART = {
		'LShoulder': ['LShoulderPitch', 'LShoulderRoll'],
		'RShoulder': ['RShoulderPitch', 'RShoulderRoll'],
		'LElbow': ['LElbowYaw', 'LElbowRoll'],
		'RElbow': ['RElbowYaw', 'RElbowRoll'],
		'Head': ['HeadYaw', 'HeadPitch'],
	}
    LIMITS = {
		'Head': [[-2.0, 2.0], [-0.67, 0.51]],
		'LShoulder': [[-2.0, 2.0], [-0.31, 1.32]],
		'RShoulder': [[-2.0, 2.0], [-1.32, 0.31]],
		'LElbow': [[-2.0, 2.0], [-1.54, -0.03]],
		'RElbow': [[-2.0, 2.0], [0.03, 1.54]],
	}
    def toRAD(self,angle):
	return angle*almath.TO_RAD

    def __init__(self):
	self.calibration = True
	self.vector = None
	self.rot = None
	self.msg_count = 0
        rospy.init_node('imitate_mykinect', anonymous=True)
	self.myFrame = 'imitate_nao'
	#Skeleton Listener
	self.tf = tf.TransformListener()
	self.nao_init()
	self.r = rospy.Rate(1)		#rospy.Rate(1) = 1Hz
	rospy.loginfo("Start tracking for 3s...")
        rospy.sleep(3.0)
	rospy.loginfo("Tracking started!")
	for i in range(1, 4):	
	#Get all nessecery joins. (Right side = Left side if you stand front to sensor)		
		try:
			self.j_head = "{0}_{1}".format(rospy.get_param('~target_joint', '/head'), i)
			self.j_l_hand = "{0}_{1}".format(rospy.get_param('~target_joint', '/left_hand'), i) 
			self.j_r_hand = "{0}_{1}".format(rospy.get_param('~target_joint', '/right_hand'), i)
			self.j_l_shoul = "{0}_{1}".format(rospy.get_param('~target_joint', '/left_shoulder'), i)
			self.j_r_shoul = "{0}_{1}".format(rospy.get_param('~target_joint', '/right_shoulder'), i)
			self.j_l_ehand = "{0}_{1}".format(rospy.get_param('~target_joint', '/left_elbow'), i)
			self.j_r_ehand = "{0}_{1}".format(rospy.get_param('~target_joint', '/right_elbow'), i)
			break
		except:
			pass

    def nao_init(self):
	#NAO CONNECT AND INIT
	# PORT AND IP NAO ROBOT
	#ip = rospy.get_param('~ip', '127.0.0.1')
	#port = int(rospy.get_param('~port', '45404'))
	ip = rospy.get_param('~ip', '10.104.16.53')
	port = int(rospy.get_param('~port', '9559'))

	self.al = ALProxy("ALAutonomousLife", ip, port)
	self.postureProxy = ALProxy("ALRobotPosture", ip, port)
	self.tts = ALProxy("ALTextToSpeech", ip, port)
	self.motionProxy = ALProxy("ALMotion", ip, port)
	self.al.setState("disabled")
	self.postureProxy.goToPosture("StandInit", 0.5)	


    def nao_imitate(self):
	while not rospy.is_shutdown():
		trans, rot_l_should = self.tf.lookupTransform('/openni_depth_frame', self.j_l_shoul, rospy.Duration())
		trans, rot_r_should = self.tf.lookupTransform('/openni_depth_frame', self.j_r_shoul, rospy.Duration())
		try:
			self.motionProxy.setAngles(["LShoulderRoll","LShoulderPitch"], [self.toRAD(rot_l_should[0]*100),self.toRAD(rot_l_should[3]*100)], 0.1);
			self.motionProxy.setAngles(["RShoulderRoll","RShoulderPitch"], [self.toRAD(-75.0 + (rot_r_should[0])*100),self.toRAD(rot_r_should[2]*100)], 0.1);
		except:
			pass
		self.r.sleep()



if __name__ == '__main__':
    try:
        target = Monkey()
	target.nao_imitate()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass

