#include "ros/ros.h"
#include "std_msgs/String.h"


int main(int argc,char **argv)
{
    //intialiazation ROS node with name for master
    ros::init(argc ,argv ,"producer_string_node");

    //create ROS node handle
    ros::NodeHandle handle;

    // Create ROS publisher node of type string and name the topic
    ros::Publisher producer_string_pub = handle.advertise<std_msgs::String>("/producer_string_topic",100);

    //Loop rate at 10 Hz frequency
    ros::Rate Loop_rate(10);

    //Counter 
    int count = 0 ;

    //Ros service loop 
    //loop untill 
    //1- get ctrl+C from terminal running the node 
    //2-Another node came with same node name
    //3- ROS:: shutdown() was called

    while (ros::ok)
    {
        //variable to store the string massage 
        std_msgs::String rosMsg;

        //class to easily concatenate string and numbers without casting 
        std::stringstream ss;

        //count is incrementing every loop 
        //save in ss stringstream object
        ss<< "Welcome to MTE411 ,count = ["<< count <<"]" ;
        
        //read stringin ss and store it in data member 
        rosMsg.data=ss.str();

        //Show message on ROS terminal as array of characters
        ROS_INFO("%s",rosMsg.data.c_str());

        //Publish data to other nodes 
        producer_string_pub.publish(rosMsg);

        //check if there is incoming data (if subscriber)
        ros::spinOnce();

        //sleep untill remaning time for 10 Hz frequency 
        Loop_rate.sleep();

        //increment counter 
        ++count;

    }

    
 return 0;

}