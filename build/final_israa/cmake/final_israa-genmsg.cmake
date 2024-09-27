# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(FATAL_ERROR "Could not find messages which '/home/israa/catkin_ws/src/final_israa/srv/Encoder2.srv' depends on. Did you forget to specify generate_messages(DEPENDENCIES ...)?
Cannot locate message [Float16] in package [std_msgs] with paths [['/opt/ros/noetic/share/std_msgs/cmake/../msg']]")
message(STATUS "final_israa: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(final_israa_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(final_israa
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/final_israa
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(final_israa_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(final_israa_generate_messages final_israa_generate_messages_cpp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(final_israa_gencpp)
add_dependencies(final_israa_gencpp final_israa_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS final_israa_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_eus(final_israa
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/final_israa
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(final_israa_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(final_israa_generate_messages final_israa_generate_messages_eus)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(final_israa_geneus)
add_dependencies(final_israa_geneus final_israa_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS final_israa_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(final_israa
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/final_israa
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(final_israa_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(final_israa_generate_messages final_israa_generate_messages_lisp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(final_israa_genlisp)
add_dependencies(final_israa_genlisp final_israa_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS final_israa_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_nodejs(final_israa
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/final_israa
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(final_israa_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(final_israa_generate_messages final_israa_generate_messages_nodejs)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(final_israa_gennodejs)
add_dependencies(final_israa_gennodejs final_israa_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS final_israa_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(final_israa
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_israa
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(final_israa_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(final_israa_generate_messages final_israa_generate_messages_py)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(final_israa_genpy)
add_dependencies(final_israa_genpy final_israa_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS final_israa_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/final_israa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/final_israa
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(final_israa_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/final_israa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/final_israa
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(final_israa_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/final_israa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/final_israa
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(final_israa_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/final_israa)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/final_israa
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(final_israa_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_israa)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_israa\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_israa
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(final_israa_generate_messages_py std_msgs_generate_messages_py)
endif()
