# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "math: 1 messages, 1 services")

set(MSG_I_FLAGS "-Imath:/home/vishakha/catkin_ws/src/math/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(math_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/msg/Num.msg" NAME_WE)
add_custom_target(_math_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "math" "/home/vishakha/catkin_ws/src/math/msg/Num.msg" ""
)

get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_math_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "math" "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(math
  "/home/vishakha/catkin_ws/src/math/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/math
)

### Generating Services
_generate_srv_cpp(math
  "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/math
)

### Generating Module File
_generate_module_cpp(math
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/math
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(math_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(math_generate_messages math_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/msg/Num.msg" NAME_WE)
add_dependencies(math_generate_messages_cpp _math_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(math_generate_messages_cpp _math_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(math_gencpp)
add_dependencies(math_gencpp math_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS math_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(math
  "/home/vishakha/catkin_ws/src/math/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/math
)

### Generating Services
_generate_srv_eus(math
  "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/math
)

### Generating Module File
_generate_module_eus(math
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/math
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(math_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(math_generate_messages math_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/msg/Num.msg" NAME_WE)
add_dependencies(math_generate_messages_eus _math_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(math_generate_messages_eus _math_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(math_geneus)
add_dependencies(math_geneus math_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS math_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(math
  "/home/vishakha/catkin_ws/src/math/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/math
)

### Generating Services
_generate_srv_lisp(math
  "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/math
)

### Generating Module File
_generate_module_lisp(math
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/math
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(math_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(math_generate_messages math_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/msg/Num.msg" NAME_WE)
add_dependencies(math_generate_messages_lisp _math_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(math_generate_messages_lisp _math_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(math_genlisp)
add_dependencies(math_genlisp math_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS math_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(math
  "/home/vishakha/catkin_ws/src/math/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/math
)

### Generating Services
_generate_srv_nodejs(math
  "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/math
)

### Generating Module File
_generate_module_nodejs(math
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/math
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(math_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(math_generate_messages math_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/msg/Num.msg" NAME_WE)
add_dependencies(math_generate_messages_nodejs _math_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(math_generate_messages_nodejs _math_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(math_gennodejs)
add_dependencies(math_gennodejs math_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS math_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(math
  "/home/vishakha/catkin_ws/src/math/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/math
)

### Generating Services
_generate_srv_py(math
  "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/math
)

### Generating Module File
_generate_module_py(math
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/math
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(math_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(math_generate_messages math_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/msg/Num.msg" NAME_WE)
add_dependencies(math_generate_messages_py _math_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vishakha/catkin_ws/src/math/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(math_generate_messages_py _math_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(math_genpy)
add_dependencies(math_genpy math_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS math_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/math)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/math
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(math_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/math)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/math
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(math_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/math)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/math
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(math_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/math)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/math
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(math_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/math)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/math\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/math
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(math_generate_messages_py std_msgs_generate_messages_py)
endif()
