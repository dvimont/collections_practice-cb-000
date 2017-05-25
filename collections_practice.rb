def sort_array_asc(integers)
  return integers.sort
end

def sort_array_desc(integers)
  return integers.sort {|a,b| -1 * (a <=> b)}
end

def sort_array_char_count(strings)
  return strings.sort {|a,b| a.length <=> b.length}
end

def swap_elements(elements)
  return swap_elements_from_to(elements, 1, 2)
end

def swap_elements_from_to(elements, index1, index2)
  hold_element = elements[index1]
  elements[index1] = elements[index2]
  elements[index2] = hold_element
  return elements
end

def reverse_array(array)
  return array.reverse!
end

def kesha_maker(strings)
  kesha_strings = Array.new
  strings.each {|element|
    element[2] = '$' if element.length > 2
    kesha_strings.push(element)
  }
  return kesha_strings

  # alternative implementations
=begin
      if element.length < 3
        kesha_strings.push(element)
      else
        kesha_strings.push(element.slice(0,2) + "$" + element.slice(3, element.length - 1))
      end
=end
=begin
      kesha_string = ""
      i = 0
      while i < element.length
        if i == 2
          kesha_string << "$"
        else
          kesha_string << element[i]
        end
        i += 1
      end
      kesha_strings.push(kesha_string)
=end
end

def find_a(strings)
  return strings.select {|element| element.start_with?("a")}
end

def sum_array(numbers)
#  sum = 0
#  numbers.each {|number| sum += number}
#  return sum

#  return numbers.reduce(:+)

  return numbers.inject(:+)
end

def add_s(strings)
  return strings.each_with_index { |element, index| (element << "s") if index != 1}

  # NOTE that chained usage of #collect is not needed (and is in fact
  #   extraneous in this case). While it is apparently true that #each and
  #   #each_with_index both only return the original array, it does not follow
  #   (as this example illustrates) that the individual elements of the array
  #   may not be altered.
end
