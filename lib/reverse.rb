string = "derek"
def reverse(string)
  for i in (0..(string.length - 1)/2) do
    tmp = string[-1 - i]
    puts tmp
    string[-1 - i] = string[i]
    string[i] = tmp
  end
  return string
end

reverse(string)