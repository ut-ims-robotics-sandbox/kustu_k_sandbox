# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotont_msgs: 5 messages, 0 services")

set(MSG_I_FLAGS "-Irobotont_msgs:/home/kustu/catkin_ws/src/robotont_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotont_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg" NAME_WE)
add_custom_target(_robotont_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotont_msgs" "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg" ""
)

get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg" NAME_WE)
add_custom_target(_robotont_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotont_msgs" "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg" ""
)

get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg" NAME_WE)
add_custom_target(_robotont_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotont_msgs" "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg" ""
)

get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg" NAME_WE)
add_custom_target(_robotont_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotont_msgs" "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg" "robotont_msgs/ColorRGB"
)

get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg" NAME_WE)
add_custom_target(_robotont_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotont_msgs" "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg" "robotont_msgs/ColorRGB"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotont_msgs
)
_generate_msg_cpp(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotont_msgs
)
_generate_msg_cpp(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotont_msgs
)
_generate_msg_cpp(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg"
  "${MSG_I_FLAGS}"
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotont_msgs
)
_generate_msg_cpp(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotont_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(robotont_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotont_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotont_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotont_msgs_generate_messages robotont_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_cpp _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_cpp _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_cpp _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_cpp _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_cpp _robotont_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotont_msgs_gencpp)
add_dependencies(robotont_msgs_gencpp robotont_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotont_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotont_msgs
)
_generate_msg_eus(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotont_msgs
)
_generate_msg_eus(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotont_msgs
)
_generate_msg_eus(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg"
  "${MSG_I_FLAGS}"
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotont_msgs
)
_generate_msg_eus(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotont_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(robotont_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotont_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotont_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotont_msgs_generate_messages robotont_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_eus _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_eus _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_eus _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_eus _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_eus _robotont_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotont_msgs_geneus)
add_dependencies(robotont_msgs_geneus robotont_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotont_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotont_msgs
)
_generate_msg_lisp(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotont_msgs
)
_generate_msg_lisp(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotont_msgs
)
_generate_msg_lisp(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg"
  "${MSG_I_FLAGS}"
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotont_msgs
)
_generate_msg_lisp(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotont_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(robotont_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotont_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotont_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotont_msgs_generate_messages robotont_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_lisp _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_lisp _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_lisp _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_lisp _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_lisp _robotont_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotont_msgs_genlisp)
add_dependencies(robotont_msgs_genlisp robotont_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotont_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotont_msgs
)
_generate_msg_nodejs(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotont_msgs
)
_generate_msg_nodejs(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotont_msgs
)
_generate_msg_nodejs(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg"
  "${MSG_I_FLAGS}"
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotont_msgs
)
_generate_msg_nodejs(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotont_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robotont_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotont_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotont_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotont_msgs_generate_messages robotont_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_nodejs _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_nodejs _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_nodejs _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_nodejs _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_nodejs _robotont_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotont_msgs_gennodejs)
add_dependencies(robotont_msgs_gennodejs robotont_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotont_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotont_msgs
)
_generate_msg_py(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg"
  "${MSG_I_FLAGS}"
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotont_msgs
)
_generate_msg_py(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotont_msgs
)
_generate_msg_py(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg"
  "${MSG_I_FLAGS}"
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotont_msgs
)
_generate_msg_py(robotont_msgs
  "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotont_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(robotont_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotont_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotont_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotont_msgs_generate_messages robotont_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/PowerSupply.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_py _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/ColorRGB.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_py _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LaserScanSplit.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_py _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModulePixel.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_py _robotont_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kustu/catkin_ws/src/robotont_msgs/msg/LedModuleSegment.msg" NAME_WE)
add_dependencies(robotont_msgs_generate_messages_py _robotont_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotont_msgs_genpy)
add_dependencies(robotont_msgs_genpy robotont_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotont_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotont_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotont_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robotont_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotont_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotont_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robotont_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotont_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotont_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robotont_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotont_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotont_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robotont_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotont_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotont_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotont_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robotont_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
