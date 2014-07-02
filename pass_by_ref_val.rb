def call_dont_mutate(array)
  dont_mutate(array)
end

def call_mutate(array)
  mutate(array)
end

def dont_mutate(array)
  array = [6,7,8,9,10]
end

def mutate(array)
  array << 6
end

array = [1,2,3,4,5]
call_dont_mutate(array)
p array
call_mutate(array)
p array