
#include "ros/ros.h"
#include "std_msgs/Int8.h""
#include "sensor_msgs/Range.h"

std_msgs::Int8 LED_range;
sensor_msgs::Range LED;

void ROSCallback(const sensor_msgs::Range &range_msg)
{
    ROS_INFO("Received: [%f]", range_msg.range);


    LED.range= range_msg.range ;

    ros::NodeHandle n;
    ros::Publisher ROS_sub_node = n.advertise<std_msgs::Int8>("/LED_ROS_topic",100);
 
    if(LED.range>=5)
        {
            LED_range.data=5.0;
        }
    else if(LED.range>=10)
        {
            LED_range.data=10.0;
        }
    else if(LED.range>=15)
        {
            LED_range.data=15.0;
        }
    else 
        {
           LED_range.data=20.0;
        }

    ROS_sub_node.publish(LED_range);    
    ROS_INFO("published :%d",LED_range.data);
}

int main(int argc, char **argv)
{
    // initialize ROS node with name for master
    ros::init(argc, argv, "ROS_sub_node");

    // Create ROS node handle
    ros::NodeHandle nh;

    // subscribe to topic , size of buffer , callback to execute when message is received
    ros::Subscriber sub = nh.subscribe("/arduino_pub_std", 100, ROSCallback);

    ros::spin();

    return 0;
}