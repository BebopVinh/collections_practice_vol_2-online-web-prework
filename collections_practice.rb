require 'pry'

def begins_with_r(array)
  new_array = []
  array.each do |i|
    if i.start_with?("r")
      new_array << i
    end
  end
  new_array.size == array.size ? true : false
end

def contain_a(array)
  new_array = []
  array.select do |name|
    if name.include?("a")
      new_array << name
    end
  end
  new_array
end

def first_wa(collection)
  i = 0
  new_collection = []
  while i < collection.size
    if collection[i].is_a? String
      new_collection << collection[i]
    else
      new_collection << collection[i].to_s
    end
    i += 1
  end
  new_collection.find do |name|
    name.start_with?("wa")
  end
end

def remove_non_strings(collection)
  collection.keep_if {|i| i.is_a? String}
end

def count_elements(collection)
  array_counts = []
  default = collection[0]
  collection.each do |index|
    i = collection.count(index)
    array_counts << index.merge(count: i)
  end
  array_counts.uniq
end


def merge_data(keys, data)
  new_array = []
  i = 0
          binding.pry
  while i < keys.size
    new_array << keys[i].merge(data[i].values)

    i += 1

  end
  new_array
  # keys.each do |data|
  #   data.each do |key, value|
  # end

end
