#!/usr/bin/env lua
local lub = require 'lub'

local lib = require 'xml'

local tmp = lub.Template(lub.content(lub.path '|rockspec.in'))
lub.writeall(lib.type..'-'..lib.VERSION..'-1.rockspec', tmp:run {lib = lib})

tmp = lub.Template(lub.content(lub.path '|dist.info.in'))
lub.writeall('dist.info', tmp:run {lib = lib})


