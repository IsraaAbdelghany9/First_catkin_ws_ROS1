#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Char.h>
ros::Publisher movement_pub;

void ultrasonicCallback(const std_msgs::Float32::ConstPtr& msg)
{
  float distance = msg->data;
  ROS_INFO("Ultrasonic Distance: %.2f cm", distance);
   
  // Determine movement based on ultrasonic sensor data
  std_msgs::Char command_msg;
  if (distance < 10.0)  // Example threshold for going backward
  {
    command_msg.data = 'B';  // Command to move backward
  }
  else
  {
    command_msg.data = 'F';  // Command to move forward
  }
  movement_pub.publish(command_msg);
   ROS_INFO("Published char: %c", command_msg.data);
  
}
void irCallback(const std_msgs::Float32::ConstPtr& ir_msg)
{
  float ir_distance = ir_msg->data;
  ROS_INFO("IR Distance: %.2f", ir_distance);
  std_msgs::Char command1_msg;
  if ( ir_distance == 0)  // Example threshold for going backward
  {
    command1_msg.data = 'S';  // Command to move backward
  }
  else
  {
    command1_msg.data = 'F';  // Command to move forward
  }
  movement_pub.publish(command1_msg);
   ROS_INFO("Published char1: %c", command1_msg.data);
}
void encoderCallback(const std_msgs::Float32::ConstPtr& rightSpeedMsg)
{
    float speed = rightSpeedMsg->data; 
    ROS_INFO("wheelspeedright: %.2f", speed);
}
void encoder1Callback(const std_msgs::Float32::ConstPtr& leftSpeedMsg)
{
    float speed = leftSpeedMsg->data; 
    ROS_INFO("wheelspeedleft: %.2f", speed);
}

  


int main(int argc, char** argv)
{
  ros::init(argc, argv, "movement_controller_node");
  ros::NodeHandle nh;

  ros::Subscriber ultrasonic_sub = nh.subscribe("ultrasonic_distance", 10, ultrasonicCallback);
  ros::Subscriber ir_sub = nh.subscribe("ir_distance", 10, irCallback);
  ros::Subscriber encoder_sub = nh.subscribe("right_speed", 10, encoderCallback);
  ros::Subscriber encoder1_sub = nh.subscribe("left_speed", 10, encoder1Callback);


  movement_pub = nh.advertise<std_msgs::Char>("/movement_command", 10);

  ros::Rate loop_rate(0.2); 
  while (ros::ok()) {

    // Removed unnecessary code related to publishing the message
    ros::spinOnce();
    loop_rate.sleep();
    
  }

  return 0;
}