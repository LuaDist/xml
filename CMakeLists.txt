project ( xml CXX )
cmake_minimum_required ( VERSION 2.8 )
include ( cmake/dist.cmake )
include ( lua )

# Install lua files
install_lua_module ( xml.init xml/init.lua )
install_lua_module ( xml.Parser xml/Parser.lua )

# Create and install a Lua module:
include_directories(include src/bind src/vendor)

# C++ Module
install_lua_module ( xml.core
  src/bind/dub/dub.cpp
  src/bind/xml_core.cpp
  src/bind/xml_Parser.cpp
  src/Parser.cpp
)

# Install license
install_data ( readme.md LICENSE )

# Install documentation
install_doc ( doc/ )
