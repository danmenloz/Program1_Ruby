require 'date'

# Part 1

  def two_sum(a,k)
    # Dylan Spruill
    # Checks for validity of the value array
    return -1 if a.empty? || a.nil?
    # Generates all possible combination of 2 in array,
    # Then selects only those whose sum is less than k
    arr = a.combination(2).select {|x, y| x + y < k}
    # Checking for validity of return value
    return -1 if arr.nil? || arr.empty?
    # Returns the largest sum of the combinations in the
    # array
    return arr.max.sum
  end

  def sorted_squares(a)
    # Dylan Spruill
    # Maps squared values over existing values in the array
    # then story the array in non-descending order, once
    # again over the existing values in the array.
    a.map! {|x| x ** 2}
        .sort!
    return a
  end

  def unique_total(a)
    # Daniel Mendez
    #Create an array of repeated elements only
    rep_array = a.select{ |elem| a.count(elem)>1 }
    #Delete all repeated elements in input array 'a' and get the sum of the remaining elements
    #a.difference(rep_array).sum #difference doesn't exist in ruby 2.5
    rep_array.uniq! #unique array of repeated characters
    a.delete_if{ |elem| rep_array.include?(elem) }
    return a.sum
  end

# Part 2

  def unique_char(s)
    # Daniel Mendez
    #Iterate through all characters in string 's' until one of them appears only once inside the string
    s.each_char do |ch|
      if (s.count ch) == 1
        return s.index(ch) #Return the index of the unique char
      end
    end
    #no unique char found! return default value
    return -1
  end

  def reverse_words(s)
    # Dylan Spruill
    # Split string into individual word arrays and downcase
    words = s.downcase.split
    i = 0
    # Loop through array, moving vowels to the end of words
    while i < words.length
      words[i] = words[i].delete('aeiou')+words[i].scan(/[aeiou]/).join
      i += 1
    end
    # Join all words together into large string then reverse order of words in string
    return words.reverse.join(" ")
  end

# Part 3

  class Movie
    attr_accessor :name, :release_date

    def initialize(name, release_date)
      # Dylan Spruill
      @name = name
      @release_date = release_date

      # Check to see if name is nil or empty
      if name.nil? || name.empty?
        raise ArgumentError.new("A name value must be provided as the first arg")
      end

      # Check to see if release_date is empty
      if release_date.empty? || !release_date.match(/\d{2}-\d{2}-\d{4}/)
        raise ArgumentError.new("A release date in the form of MM-DD-YYYY must be provided as the second arg")
      end
    end

    def method_missing(method, *args, &block)
      # Dylan Spruill
      # Place holder method for testing
      puts "#{method} hasn't been implemented"
    end

    def is_date_valid?(date)
      # Dylan Spruill
      # valid_format checks to see if date format is correct
      # valid_date checks to see if the date is a real date
      valid_format = date.match(/\d{2}-\d{2}-\d{4}/)
      valid_date = Date.strptime(date, '%m-%d-%Y')
      # Returns true is valid_format and valid_date are cleared
      if valid_format && valid_date
        true
      else
        false
      end
    end

    def released_on
      # Dylan Spruill
      # TODO: Fix this method :(
      # Checks to see if release_date is valid
      if is_date_valid?(release_date)
        # Returns name concatenated with formatted release date
        name + " - " + release_date.strftime('%B %d %Y')
      else
        raise ArgumentError.new("Invalid Date")
      end
    end

    def self.is_released?
      # Daniel Mendez
      # TODO
    end
  end