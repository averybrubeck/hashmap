# frozen_string_litteral: true

# Hashmap
class HashMap
  # To do
  attr_accessor :bucket, :load_factor, :capacity


  def initialize
    @bucket = Array.new(16)
    @load_factor = 0.75
  end

  def hash(value='String')
    hash_code = 0
    prime_number = 31

    value.each_char { |c| hash_code = prime_number * hash_code + c.ord }
    @bucket.push(hash_code)
  end

  #set takes two arguments, the first is a key and the second is a value that is assigned to this key. 
  # If a key already exists, then the old value is overwritten.
  # Remember to grow your buckets size when it needs to, by calculating if your bucket has reached the load factor.

  # get takes one argument as a key and returns the value that is assigned to this key. If key is not found, return nil

  # key? takes a key as an argument and returns true or false based on whether or not the key is in the hash map.

  # remove takes a key as an argument. If the given key is in the hash map, it should 
  # remove the entry with that key and return the deleted entry’s value. 
  # If the key isn’t in the hash map, it should return nil.

  # length returns the number of stored keys in the hash map.

  # clear removes all entries in the hash map.

  # keys returns an array containing all the keys inside the hash map.

  # values returns an array containing all the values.

  # entries returns an array that contains each key, value pair. 
  # Example: [[first_key, first_value], [second_key, second_value]]

end
