#include "ros/ros.h"
#include "geometry_msgs/Twist.h"


void move_turtle(ros::Publisher &move_turtlebot_3, double speed, double distance, char is_forward) {
    // Create a Twist message and set its linear velocity
    geometry_msgs::Twist twist;
    switch(is_forward )
    {
    case '1'://forward
    {
        twist.linear.x = speed;
        break;
    }

    case '3'://Right
    {
        twist.angular.z = speed;

        break;
    } 

   
    }
    // Set the duration of the movement based on the distance to travel
    double duration = distance / speed;
    // Publish the Twist message for the specified duration
    double start_time = ros::Time::now().toSec();
    
    while (ros::Time::now().toSec() - start_time < duration) {
        move_turtlebot_3.publish(twist);
        ros::Duration(0.1).sleep();
    }

    
}

void draw(ros::Publisher &move_turtlebot_3) {

    move_turtle(move_turtlebot_3, 0.2, 1.5 , '1');
    
    move_turtle(move_turtlebot_3, 0.2, 1.6, '3');

    move_turtle(move_turtlebot_3, 0.2, 1.5 , '1');

    move_turtle(move_turtlebot_3, 0.2, 1.6, '3');

    move_turtle(move_turtlebot_3, 0.2, 1.5 , '1');

    move_turtle(move_turtlebot_3, 0.2, 1.6, '3');

    move_turtle(move_turtlebot_3, 0.2, 1.5, '1');

    move_turtle(move_turtlebot_3, 0.2, 1.6, '3');

    move_turtle(move_turtlebot_3, 0.2, 1.5, '1');

}

int main(int argc,char **argv)
{
    //intialiazation ROS node with name for master
    ros::init(argc ,argv ,"move_turtlebot_3");

    //create ROS node handle
    ros::NodeHandle handle;

    // Create ROS publisher node of type string and name the topic
    ros::Publisher move_turtlebot_3 = handle.advertise<geometry_msgs::Twist>("/cmd_vel",100);


    int count=0;
    while (ros::ok())
    {
        draw(move_turtlebot_3);
    
    }

    
 return 0;

}

