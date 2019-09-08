
  # Part 1

  def two_sum(a,k)
    # ADD YOUR CODE HERE
  end

  def sorted_squares(a)
    # ADD YOUR CODE HERE
  end

  def unique_total(a)
    #Create an array of repeated elements only
    rep_array = a.select{ |elem| a.count(elem)>1 }
    #Delete all repeated elements in input array 'a' and get the sum of the remaining elements
    a.difference(rep_array).sum
  end

# Part 2

  def unique_char(s)
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
    # ADD YOUR CODE HERE
  end

# Part 3

  class Movie
    # ADD YOUR CODE HERE
  end