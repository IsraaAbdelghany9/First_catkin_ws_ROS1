#include "ros/ros.h"
#include "std_msgs/String.h"

void consumerCallback(const std_msgs::String &msg)
{
    ROS_INFO("Received: [%s]", msg.data.c_str());
}

int main(int argc, char **argv)
{
    // initialize ROS node with name for master
    ros::init(argc, argv, "consumer_string_node");

    // Create ROS node handle
    ros::NodeHandle handle;

    // subscribe to topic , size of buffer , callback to execute when message is received
    ros::Subscriber sub = handle.subscribe("/producer_string_topic", 100, consumerCallback);

    // Since we don't know when we will receive new message
    // Spin method is like waiting routine for message
    // Will exit when CTRL+C is pressed or call shutdown()
    ros::spin();

    return 0;
}


