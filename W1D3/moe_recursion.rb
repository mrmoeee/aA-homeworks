def sum_to(n)
  return nil if n < 1
  return 1 if n == 1
  n + sum_to(n-1)
end

def add_numbers(num_arr)
  return num_arr.last if num_arr.length <= 1
  num_arr.pop + add_numbers(num_arr)
end

def gamma_fnc(num)
  return nil if num < 1
  return 1 if num == 1
  (num - 1) * gamma_fnc(num)
end

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return true if flavors.last == favorite
  ice_cream_shop(flavors[0...-1], favorite)
end

def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0..-2])
end
# def reverse(string)
#   return string if string.length <= 1
#   reverse(string[1..-1]) + string[0]
# end
