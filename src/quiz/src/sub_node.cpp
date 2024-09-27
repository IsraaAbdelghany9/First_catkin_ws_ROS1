#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include "std_msgs/String.h"

std_msgs::Float32 range_Ultra;
std_msgs::String motion;

     


void UltraSonic(const std_msgs::Float32 &x)
{
    ROS_INFO("recived :%f",x.data); 


    if (x.data<= 0.5)
    {
         motion.data = "forward";
        
    }
    else if(x.data> 0.5)
    {      

         motion.data = "backward" ; 
    }


    ROS_INFO("published :%s",motion.data.c_str());

}

int main(int argc, char **argv)
{
    // initialize ROS node with name for master
    ros::init(argc, argv, "Motion_ultra_node");

    // Create ROS node handle
    ros::NodeHandle nh;

    // subscribe to topic , size of buffer , callback to execute when message is received
    ros::Subscriber sub = nh.subscribe("/Ultrasonic_motion", 100, UltraSonic);
  
    ros::Publisher Motion_node = nh.advertise<std_msgs::String>("/Motor",100);
while (ros::ok()){
    ros::spin();
    ros::Rate loop_rate(1);
    loop_rate.sleep();
    Motion_node.publish(motion);
}
    return 0;

}