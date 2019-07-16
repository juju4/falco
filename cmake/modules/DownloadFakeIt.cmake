#
# Copyright (C) 2016-2019 Draios Inc dba Sysdig.
#
# This file is part of falco .
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
#
include(ExternalProject)

set(FAKEIT_INCLUDE ${CMAKE_BINARY_DIR}/fakeit-prefix/include)

set(FAKEIT_EXTERNAL_URL
    URL
    https://github.com/eranpeer/fakeit/archive/2.0.5.tar.gz
    URL_HASH
    MD5=d3d21b909cebaea5b780af5500bf384e)

ExternalProject_Add(
  fakeit-external
  PREFIX ${CMAKE_BINARY_DIR}/fakeit-prefix
  ${FAKEIT_EXTERNAL_URL}
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND
    ${CMAKE_COMMAND}
    -E
    copy
    ${CMAKE_BINARY_DIR}/fakeit-prefix/src/fakeit-external/single_header/catch/fakeit.hpp
    ${FAKEIT_INCLUDE}/fakeit.hpp)
