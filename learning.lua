-- Printing --
--[[

    yo wassup

]]

print("Hello, World")

-- Variables --

local cat = "Felix"
local number = 4

print(cat)
print(number)

-- Functions --

local function howdy ()
    print("Howdy buddy")
end

howdy()

-- Simple Math Equations --
local a = 1
local b = 2
local anwser = a + b

print(anwser)

-- Text Inputs --

print("Whats your name?")
local name = io.read();
print("Hi "..name.."!")

-- If Statement -- 

local first = 2
local second = 6

if first == second then
    print(first .." and ".. second .." are equal")
else 
    print(first .." and ".. second .." are not equal")
end

