#include "mte411_services/VoltageToTemp.h"

#include <ros/ros.h>

int main(int argc, char *argv[])
{
ros::init(argc, argv, "voltage_to_temperature_client");
if(argc != 2)
{
ROS_INFO("usage: voltage_to_temperature_client voltage");
return 1;
}
ros::NodeHandle n;
ros::ServiceClient client = n.serviceClient<mte411_services::VoltageToTemp>("voltage_to_temperature");
mte411_services::VoltageToTemp srv;
srv.request.voltage.data = atof(argv[1]);
if (client.call(srv))
{
ROS_INFO("Temperature: %2.2f", (float)srv.response.temperature.data);
}
else
{
ROS_ERROR("Failed to call service voltage_to_temperature");
return 1;
}
return 0;
}