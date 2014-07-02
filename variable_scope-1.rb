# Define a local variable and re-assign it in a block.
local_variable = 'first value'

[1,2].each do
  local_variable = 'changed in a block'
end

puts local_variable

# Call a method that doesn't mutate the caller.
local_variable = 'first value'

def dont_mutate(str)
  str = 'changed in a non-mutating method'
end

dont_mutate(local_variable)
puts local_variable

# Call a method that mutates the caller.
local_variable = 'first value'

def mutate(str)
  str.replace 'changed in a mutating method'
end

mutate(local_variable)
puts local_variable