#include <ros/ros.h>
#include "mte411_services/Random.h"

int main(int argc, char *argv[])
{
ros::init(argc, argv, "Random_Number_client");
ros::NodeHandle n;
ros::ServiceClient client = n.serviceClient<mte411_services::Random>("Random_number_generator");
mte411_services::Random srv;
srv.request.Entery.data = atoi(argv[1]);
if (client.call(srv))
{
ROS_INFO("Ranom Number: %2.2f", (float)srv.response.numder.data);
}
else
{
ROS_ERROR("Failed to call service voltage_to_temperature");
return 1;
}
return 0;
}