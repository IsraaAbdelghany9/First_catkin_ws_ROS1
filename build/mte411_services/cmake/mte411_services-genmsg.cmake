# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mte411_services: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mte411_services_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv" NAME_WE)
add_custom_target(_mte411_services_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mte411_services" "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv" "std_msgs/Float32"
)

get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv" NAME_WE)
add_custom_target(_mte411_services_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mte411_services" "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv" "std_msgs/Bool:std_msgs/Float32"
)

get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv" NAME_WE)
add_custom_target(_mte411_services_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mte411_services" "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv" "std_msgs/Int8:std_msgs/Float32"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mte411_services
)
_generate_srv_cpp(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mte411_services
)
_generate_srv_cpp(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int8.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mte411_services
)

### Generating Module File
_generate_module_cpp(mte411_services
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mte411_services
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mte411_services_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mte411_services_generate_messages mte411_services_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_cpp _mte411_services_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_cpp _mte411_services_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_cpp _mte411_services_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mte411_services_gencpp)
add_dependencies(mte411_services_gencpp mte411_services_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mte411_services_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mte411_services
)
_generate_srv_eus(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mte411_services
)
_generate_srv_eus(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int8.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mte411_services
)

### Generating Module File
_generate_module_eus(mte411_services
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mte411_services
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mte411_services_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mte411_services_generate_messages mte411_services_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_eus _mte411_services_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_eus _mte411_services_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_eus _mte411_services_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mte411_services_geneus)
add_dependencies(mte411_services_geneus mte411_services_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mte411_services_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mte411_services
)
_generate_srv_lisp(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mte411_services
)
_generate_srv_lisp(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int8.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mte411_services
)

### Generating Module File
_generate_module_lisp(mte411_services
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mte411_services
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mte411_services_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mte411_services_generate_messages mte411_services_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_lisp _mte411_services_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_lisp _mte411_services_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_lisp _mte411_services_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mte411_services_genlisp)
add_dependencies(mte411_services_genlisp mte411_services_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mte411_services_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mte411_services
)
_generate_srv_nodejs(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mte411_services
)
_generate_srv_nodejs(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int8.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mte411_services
)

### Generating Module File
_generate_module_nodejs(mte411_services
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mte411_services
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mte411_services_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mte411_services_generate_messages mte411_services_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_nodejs _mte411_services_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_nodejs _mte411_services_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_nodejs _mte411_services_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mte411_services_gennodejs)
add_dependencies(mte411_services_gennodejs mte411_services_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mte411_services_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mte411_services
)
_generate_srv_py(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mte411_services
)
_generate_srv_py(mte411_services
  "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int8.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mte411_services
)

### Generating Module File
_generate_module_py(mte411_services
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mte411_services
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mte411_services_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mte411_services_generate_messages mte411_services_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/VoltageToTemp.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_py _mte411_services_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Random.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_py _mte411_services_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/israa/catkin_ws/src/mte411_services/srv/Encoder.srv" NAME_WE)
add_dependencies(mte411_services_generate_messages_py _mte411_services_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mte411_services_genpy)
add_dependencies(mte411_services_genpy mte411_services_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mte411_services_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mte411_services)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mte411_services
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mte411_services_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mte411_services)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mte411_services
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mte411_services_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mte411_services)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mte411_services
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mte411_services_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mte411_services)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mte411_services
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mte411_services_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mte411_services)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mte411_services\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mte411_services
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mte411_services_generate_messages_py std_msgs_generate_messages_py)
endif()
