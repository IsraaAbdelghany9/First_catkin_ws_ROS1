#include "mte411_services/VoltageToTemp.h"

#include <ros/ros.h>
#include <std_msgs/Float32.h>


bool convert(mte411_services::VoltageToTemp::Request &req, mte411_services::VoltageToTemp::Response &res)
{
res.temperature.data = req.voltage.data * 100.0;
ROS_INFO("request: v=%2.2f", (float)req.voltage.data);
ROS_INFO("sending back response: [%2.2f]", (float)res.temperature.data);
return true;
}
int main(int argc, char *argv[])
{
ros::init(argc, argv, "voltage_to_temperature_server");
ros::NodeHandle n;
ros::ServiceServer service = n.advertiseService("voltage_to_temperature", convert);
ROS_INFO("Ready to convert voltage to temperature.");
ros::spin();
return 0;
}