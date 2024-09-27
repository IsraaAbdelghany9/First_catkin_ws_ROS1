#include "mte411_services/Random.h"
#include <ros/ros.h>
#include <cstdlib>
bool Generate(mte411_services::Random::Request &req, mte411_services::Random::Response &res)
{
res.numder.data = rand();
ROS_INFO("request: Boolean=%d",req.Entery.data);
ROS_INFO("sending back response: [%2.2f]", (float)res.numder.data);
return true;
}
int main(int argc, char *argv[])
{
ros::init(argc, argv, "Random_Number_server");
ros::NodeHandle n;
ros::ServiceServer service = n.advertiseService("Random_number_generator", Generate);
ROS_INFO("Ready to Generate Random Flout Numbers.");
ros::spin();
return 0;
}
