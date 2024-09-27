#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

void move_turtle(ros::Publisher &pub, double speed, double distance, char is_forward) {
    // Create a Twist message and set its linear velocity
    geometry_msgs::Twist twist;
    switch(is_forward ){
    case '1':
    {
        twist.linear.x = speed;
        break;
    }
    case '2':
    {
        twist.linear.x = -speed;
        break;
    }
    case '3':
    {
        twist.linear.y = speed;
        break;
    } 
   
    }
    // Set the duration of the movement based on the distance to travel
    double duration = distance / speed;
    // Publish the Twist message for the specified duration
    double start_time = ros::Time::now().toSec();
    while (ros::Time::now().toSec() - start_time < duration) {
        pub.publish(twist);
        ros::Duration(0.1).sleep();
    }
}

void draw_I(ros::Publisher &pub) {
    // Move forward to the bottom of the I
    move_turtle(pub, 1.0, 4.0, '1');
    // Turn left to draw the bottom of the I
    move_turtle(pub, 1.0, 2.0, '2');
    // Move Up to the middle of the I
    move_turtle(pub, 1.0, 4.0, '3');
    // Turn forward to draw the top of the I
    move_turtle(pub, 1.0, 2.0, '1');
    // Move back up to the top of the I
    move_turtle(pub, 1.0, 3.0, '2');
}

int main(int argc, char **argv) {
    // Initialize the ROS node
    ros::init(argc, argv, "turtle_letter_I");
    ros::NodeHandle nh;
    // Create a publisher for the turtle's velocity commands
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 10);
    // Wait for the turtlesim node to start up
    ros::Duration(1.0).sleep();
    // Draw the letter I
    draw_I(pub);
    // Spin the node to prevent it from exiting
    ros::spin();
    return 0;
}

