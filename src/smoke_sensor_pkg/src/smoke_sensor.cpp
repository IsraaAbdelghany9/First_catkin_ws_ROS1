#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Char.h>
#include <std_msgs/Int8.h>

ros::Publisher smoke_led_pub;

void smokeCallback(const std_msgs::Float32 &msg)
{
  float smoke = msg.data;
  ROS_INFO("smoke value detected: %f ", msg.data);

  std_msgs::Char command_msg;

  if (smoke > 300.0) 
  {
    command_msg.data = 'H';  
  }
  else
  {
    command_msg.data = 'L';  
  }
  smoke_led_pub.publish(command_msg);
  ROS_INFO("Published char: %c", command_msg.data);
  
}
// void irCallback(const std_msgs::Float32::ConstPtr& ir_msg)
// {
//   float ir_distance = ir_msg->data;
//   ROS_INFO("IR Distance: %.2f", ir_distance);
//   std_msgs::Char command1_msg;
//   if ( ir_distance == 0)  // Example threshold for going backward
//   {
//     command1_msg.data = 'S';  // Command to move backward
//   }
//   else
//   {
//     command1_msg.data = 'F';  // Command to move forward
//   }
//   movement_pub.publish(command1_msg);
//    ROS_INFO("Published char1: %c", command1_msg.data);
// }
// void encoderCallback(const std_msgs::Float32::ConstPtr& rightSpeedMsg)
// {
//     float speed = rightSpeedMsg->data; 
//     ROS_INFO("wheelspeedright: %.2f", speed);
// }
// void encoder1Callback(const std_msgs::Float32::ConstPtr& leftSpeedMsg)
// {
//     float speed = leftSpeedMsg->data; 
//     ROS_INFO("wheelspeedleft: %.2f", speed);
// }

  
int main(int argc, char** argv)
{
  ros::init(argc, argv, "smoke_sensor_node");
  ros::NodeHandle nh;

  ros::Subscriber smoke_sub = nh.subscribe("smoke_sensor_readings", 10, smokeCallback);
  smoke_led_pub = nh.advertise<std_msgs::Char>("/smoke_led_topic", 10);

  ros::Rate loop_rate(1); 
  while (ros::ok()) {

    // Removed unnecessary code related to publishing the message
    ros::spinOnce();
    loop_rate.sleep();
    
  }

  return 0;
}