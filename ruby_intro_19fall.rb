
# Part 1

  def two_sum(a,k)
    # Dylan Spruill
    return -1 if a.empty? || a.nil?
    arr = a.combination(2).select {|x, y| x + y < k}
    return -1 if arr.nil? || arr.empty?
    return arr.max.sum
  end

  def sorted_squares(a)
    # Dylan Spruill
    a.map! {|x| x ** 2}
        .sort!
    return a
  end

  def unique_total(a)
    # Daniel Mendez
    #Create an array of repeated elements only
    rep_array = a.select{ |elem| a.count(elem)>1 }
    #Delete all repeated elements in input array 'a' and get the sum of the remaining elements
    a.difference(rep_array).sum
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
    words = s.downcase.split
    i = 0
    while i < words.length
      words[i] = words[i].delete('aeiou')+words[i].scan(/[aeiou]/).join
      i += 1
    end
    return words.reverse.join(" ")
  end

# Part 3

  class Movie
    # ADD YOUR CODE HERE
  end