def joinor(array, separator = ", ", word = "or" )
  string = array[0..-2].join(separator)
  case
  when array.size == 1 then array[0].to_s
  when array.size == 2 then "#{array[0]} #{word} #{array[1]}"
  else
    "#{string}#{separator}#{word} #{array[-1]}"
  end
end

puts joinor([1])                   == "1"
puts joinor([1, 2])                   == "1 or 2"
puts joinor([1, 2, 3])                == "1, 2, or 3"
puts joinor([1, 2, 3], '; ')          == "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and')   == "1, 2, and 3"
