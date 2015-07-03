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
	self.r = rospy.Rate(20)		#rospy.Rate(1) = 1Hz
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
			self.j_torso = "{0}_{1}".format(rospy.get_param('~target_joint', '/torso'), i)
			break
		except:
			pass

    def nao_init(self):
	#NAO CONNECT AND INIT
	# PORT AND IP NAO ROBOT
	ip = rospy.get_param('~ip', '127.0.0.1')
	port = int(rospy.get_param('~port', '35137'))
	#ip = rospy.get_param('~ip', '10.104.16.53')
	#port = int(rospy.get_param('~port', '9559'))

	self.al = ALProxy("ALAutonomousLife", ip, port)
	self.postureProxy = ALProxy("ALRobotPosture", ip, port)
	self.tts = ALProxy("ALTextToSpeech", ip, port)
	self.motionProxy = ALProxy("ALMotion", ip, port)
	self.al.setState("disabled")
	self.postureProxy.goToPosture("StandInit", 0.5)	


    def nao_imitate(self):
	while not rospy.is_shutdown():
		trans_hand, rot_hand = self.tf.lookupTransform('/openni_depth_frame', self.j_l_hand, rospy.Duration())
		vec_hand = Vector3(*trans_hand)
		trans_torso, rot = self.tf.lookupTransform('/openni_depth_frame', self.j_torso, rospy.Duration())
		vec_torso = Vector3(*trans_torso)

		
		trans_handR, rot_handR = self.tf.lookupTransform('/openni_depth_frame', self.j_r_hand, rospy.Duration())
		vec_handR = Vector3(*trans_handR)
		
		x = vec_torso.x-vec_hand.x
		y = vec_torso.y-vec_hand.y
		z = (vec_torso.z-vec_hand.z) * (-1)
		x = (int)(1000*x/2.5)
		y = (int)(-1000*y/2.5)
		z = (int)(1000*(z)/2.5)

		xr = vec_torso.x-vec_handR.x
		yr = vec_torso.y-vec_handR.y
		zr = (vec_torso.z-vec_handR.z) * (-1)
		xr = (int)(1000*xr/2.5)
		yr = (int)(-1000*yr/2.5)
		zr = (int)(1000*(zr)/2.5)
		#print(x)
		#print(y)
		#print(z)
		#print("-----------------")
		try:
			(w1,w2,w3,w4) = self.nao_imitate_with_kinematic_right_hand(self.get_transform_matrix((xr,yr,zr),(rot_handR[0],rot_handR[1],rot_handR[2])))
			self.motionProxy.setAngles(["RShoulderRoll","RShoulderPitch"], [w2,w1], 0.1);
			self.motionProxy.setAngles(["RElbowRoll","RElbowYaw"],[w4,w3],0.1)
		except:
			pass
		try:
			(q1,q2,q3,q4) = self.nao_imitate_with_kinematic_left_hand(self.get_transform_matrix((x,y,z),(rot_hand[0],rot_hand[1],rot_hand[2])))
			self.motionProxy.setAngles(["LShoulderRoll","LShoulderPitch"], [q2,q1], 0.1);
			self.motionProxy.setAngles(["LElbowRoll","LElbowYaw"],[q4,q3],0.1)
			#print(q1)
			#print(q2)
			#print(q3)
			#print(q4)
		except:
			pass
		self.r.sleep()


    def get_transform_matrix(self,(px,py,pz),(ax,ay,az)):	
	A = np.array([[1,0,0,px],[0,1,0,py],[0,0,1,pz],[0,0,0,1]])
	#print(A)
	Rz = np.array([[math.cos(az),-math.sin(az),0,0],[math.sin(az),math.cos(az),0,0],[0,0,1,0],[0,0,0,1]])
	#print(Rz)	
	Ry = np.array([[math.cos(ay),0,math.sin(ay),0],[0,1,0,0],[-math.sin(ay),0,math.cos(ay),0],[0,0,0,1]])
	#print(Ry)
	Rx = np.array([[1,0,0,0],[0,math.cos(ax),-math.sin(ax),0],[0,math.sin(ax),math.cos(ax),0],[0,0,0,1]])
	#print(Rx)
	t = A*Rz*Ry*Rx
	
	
	for i in range(0,3):
		for j in range(0,3):
			t[i][j] = A[i][0]*Rz[0][j] +  A[i][1]*Rz[1][j] +  A[i][2]*Rz[2][j] +  A[i][3]*Rz[3][j]
	
	for i in range(0,3):
		for j in range(0,3):
			t[i][j] = t[i][0]*Ry[0][j] +  t[i][1]*Ry[1][j] +  t[i][2]*Ry[2][j] +  t[i][3]*Ry[3][j]
	for i in range(0,3):
		for j in range(0,3):
			t[i][j] = t[i][0]*Rx[0][j] +  t[i][1]*Rx[1][j] +  t[i][2]*Rx[2][j] +  t[i][3]*Rx[3][j]

	t[0][3] = px
	t[1][3] = py
	t[2][3] = pz
	t[3][3] = 1
	#print("-----------------")
	#print(t)
	#print("-----------------")
	return (t[0][0],t[0][1],t[0][2],t[0][3],t[1][0],t[1][1],t[1][2],t[1][3],t[2][0],t[2][1],t[2][2],t[2][3],t[3][0],t[3][1],t[3][2],t[3][3])



    def nao_imitate_with_kinematic_head_position(self,(px,py,pz)):
	l1 = 53.9	#cameraX
	l2 = 67.9	#cameraZ
	l3 = 126.5	#NeckOffsetZ.
	q2 = math.pi - math.asin( (-pz+l3)/math.sqrt(pow(l1,2)+pow(l2,2)) ) - math.atan(l1/l2) + math.pi/2
	q1 = math.acos( px / ( l2*math.cos(q2-math.pi/2)-l1*math.sin(q2-math.pi/2) ) )
	return (q1,q2)


    def nao_imitate_with_kinematic_head_angle(self,(az,ay)):
	q1 = az
	q2 = ay
	return (q1,q2)




    def nao_imitate_with_kinematic_left_hand(self,(t11,t12,t13,t14,t21,t22,t23,t24,t31,t32,t33,t34,t41,t42,t43,t44)):
	l1 = 98.0  		#ShoulderOffsetY
	l2 = 100.0+15.0		#ShoulderOffsetZ + ElbowOffsetY
	l3 = 105.0		#UpperArmLength
	l4 = 57.75+55.95	#HandOffsetX + LowerArmLength
	s = (0,l1,l2)
	p = (t14,t24,t34)
	d = math.sqrt(	pow(s[0]-p[0],2) + pow(s[1]-p[1],2) + pow(s[2]-p[2],2)	)
	#print("HERE2")
	#Now, we can use the law of cosines to find the interior angle q4' between the upper and lower arm sides of the triangle
	tmp = round((pow(l3,2)+pow(l4,2)-pow(d,2))/(2*l3*l4),2)
	#print(tmp)
	q4p = round(math.acos(tmp),2)
	#print("HERE3")
	#q4p = math.acos(  ( pow(l3,2) + pow(l4,2) - pow(d,2) )/2*l3*l4	)
	q4pp = math.pi - q4p
	q4 = -q4pp	#q4 - LElbowRoll
	#print("HERE4")
	#because l3+l4*cos(q4) + l4 * sin(q4)^2 / cos(q4)  > 0
	q2d = math.acos(round( (p[1] - l1 - (l4*math.sin(q4)*t22)/math.cos(q4)) 	/ 	(l3+l4*math.cos(q4)+l4*pow(math.sin(q4),2)/math.cos(q4)),2)	)
	q2 = q2d + math.pi/2
	q3d = math.asin(  t23/ math.sin(q2-math.pi/2)   )
	q3 = -q3d
	q1 = 0.0
	if (round(q3,5) != round(math.pi/2,5)):
		q1 = math.acos( 	(t33 + t13*math.sin(-q3)*math.cos(q2-math.pi/2)/math.cos(-q3) ) / (math.cos(-q3)+pow(math.cos(q2-math.pi/2),2)*pow(math.sin(-q3),2)/math.cos(-q3) ) 	)
	elif (round(q3,5) == round(math.pi/2,5) and q2 != 0):
		q1 = math.acos(	  	t13/(math.cos(q2-math.pi/2)*math.sin(-q3))	)
	elif (round(q3,5) == round(math.pi/2,5) and q2 == 0):
		print("TODO")
	#print(q1)
	#print(q2)
	#print(q3)
	#print(q4)
	#print("-----------------")
	return (q1,q2,q3,q4)


# Nalezy ponad T' zamiast T  T'= T (Rz(-pi))^-1
    def nao_imitate_with_kinematic_right_hand(self,(t11,t12,t13,t14,t21,t22,t23,t24,t31,t32,t33,t34,t41,t42,t43,t44)):
	l1 = 98.0  		#ShoulderOffsetY
	l2 = 100.0+15.0		#ShoulderOffsetZ + ElbowOffsetY
	l3 = 105.0		#UpperArmLength
	l4 = 57.75+55.95	#HandOffsetX + LowerArmLength
	s = (0,l1,l2)
	p = (t14,t24,t34)

	#print("mam")
	tmp = round(pow(math.sqrt(pow(s[0]-p[0],2) + pow(s[1]-p[1],2) + pow(s[2]-p[2],2)),2),2)
	print(tmp)
	q4 = math.pi - acos( 	round((pow(l3,2) + pow(l4,2) - tmp)/2*l3*l4 ),2	)
	print("q4 mam")

	tmp = round(-t24 - l1 - l4*math.sin(q4)*t22,2)/math.cos(q4)
	tmp2 = round(pow(math.sin(q4),2)/math.cos(q4),2)
	q2 = math.acos(	round( (tmp)/(l3+l4*math.cos(q4)+l4*tmp2),2)	) - math.pi/2
	print("q2 mam")	
	q3 = math.asin( t23/math.sin(q2+math.pi/2) )
	print("q3 mam")

	q1 = 0.0
	if (round(q3,5) != round(math.pi/2,5)):
		q1 = math.acos( 	(t33 + t13*math.sin(q3)*math.cos(q2+math.pi/2)/math.cos(q3) ) / (math.cos(q3)+pow(math.cos(q2+math.pi/2),2)*pow(math.sin(q3),2)/math.cos(q3) ) 	)
	elif (round(q3,5) == round(math.pi/2,5) and q2 != 0):
		q1 = math.acos(	  	t13/(math.cos(q2+math.pi/2)*math.sin(q3))	)
	elif (round(q3,5) == round(math.pi/2,5) and q2 == 0):
		print("TODO") 
	return (q1,q2,q3,q4)


	


if __name__ == '__main__':
    try:
        target = Monkey()
	target.nao_imitate()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass

