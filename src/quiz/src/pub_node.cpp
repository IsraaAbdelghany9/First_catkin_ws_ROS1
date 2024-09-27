#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include <random>
#include "std_msgs/String.h"

std_msgs::Float32 direction;
std_msgs::Float32 x;
const float range_from = 0.0;
const float range_to = 2.0;

void motion_control(const std_msgs::String &motion)
{
    ROS_INFO("recived:%s ", motion.data);

    if (motion.data == "forward")
    {
        direction.data = 0.0;
    }

    else if (motion.data == "backward")
    {
        direction.data = 100.0;
    }

    ROS_INFO("published :%f", direction.data);
    
}

int main(int argc, char *argv[])
{

    ros::init(argc, argv, "Ultrasonic_motor");

    ros::NodeHandle handle;

    ros::Publisher pub_ultrasonic = handle.advertise<std_msgs::Float32>("/Ultrasonic_motion", 100);
    ros::Subscriber sub = handle.subscribe("/Motor", 100, motion_control);

    ros::Rate loop_rate(1);

    while (ros::ok())
    {
        std::random_device rand_dev;
        std::mt19937 generator(rand_dev());
        std::uniform_real_distribution<float> distr(range_from, range_to);
        x.data = distr(generator);
        pub_ultrasonic.publish(x);
        ROS_INFO("Ultrasonic back response: [%2.2f]", x.data);

        ros::spinOnce();
        loop_rate.sleep();
    }
}
