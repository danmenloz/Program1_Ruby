
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
    # ADD YOUR CODE HERE
  end

# Part 2

  def unique_char(s)
    # ADD YOUR CODE HERE
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

  def scores
    correct = 0
    wrong = 0
    full = 100

    # Q1
    begin
      two_sum([34,23,1,24,75,33,54,8], 60) == 58 ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      two_sum([10,20,30], 15) == -1 ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q2
    begin
      sorted_squares([-4,-1,0,3,10])  == [0,1,9,16,100] ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      sorted_squares([-7,-3,2,3,11]) == [4,9,9,49,121] ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q5
    begin
      reverse_words("Hello") == "hlleo" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      reverse_words( "  Hello World!  ") == "wrld!o hlleo" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      reverse_words("Object          Oriented                      Design!!") == "dsgn!!ei rntdoiee bjctoe" ? correct+=1 : wrong+=1
    end

    # puts correct+wrong
    puts correct, wrong, correct+wrong
    return ( (correct * full).to_f / (wrong + correct) ).round(2)
  end
  puts scores