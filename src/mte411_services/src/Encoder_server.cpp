#include "mte411_services/Encoder.h"
#include <ros/ros.h>
#include <std_msgs/Int8.h>

void consumerCallback0(const std_msgs::Int8 &rotation0)
{
    ROS_INFO("Received: [%d] RPM", rotation0.data);
}


void consumerCallback1(const std_msgs::Int8 &rotation1)
{
    ROS_INFO("Received: [%d] RPM", rotation1.data);
}

int main(int argc, char *argv[])
{
ros::init(argc, argv, "Encoder_sub_node");
ros::NodeHandle n;
ros::Subscriber sub0 = n.subscribe("/Encoder0_arduino", 100, consumerCallback0);
ros::Subscriber sub1 = n.subscribe("/Encoder1_arduino", 100, consumerCallback1);

//ros::ServiceServer service = n.advertiseService("voltage_to_temperature", convert);
ROS_INFO("Ready to convert rotations to rpm to temperature.");
ros::spin();
return 0;
}