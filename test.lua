#!/usr/bin/env lua53
package.path = 'lualib/?.lua;' .. package.path
package.cpath = 'luaclib/?.so;' .. package.cpath

require 'basex'
local inspect = require 'inspect'

local ELF = require 'elf'

local function test()
  local elf = ELF.new('data/test.elf')
  show(elf:info())
end

--test()
print(('123'):hex():xxd())
print(('123'):from_hex():xxd())
