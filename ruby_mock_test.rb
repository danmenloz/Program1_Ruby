
  load 'ruby_intro_19fall.rb'

  def scores
    correct = 0
    wrong = 0
    full = 100

    # Q1
    begin
      two_sum([34,23,1,24,75,33,54,8], 60) == 58 ? correct+=1 : wrong+=1
      two_sum([10,20,30], 15) == -1 ? correct+=1 : wrong+=1
      two_sum([-2,-1,0,1,2,3], 1) == 0 ? correct+=1 : wrong+=1 #mix neg and pos numbers
      two_sum([-15,-20,-5,-10], -20) == -25 ? correct+=1 : wrong+=1 #neg numbers only
      two_sum([0,0,-1], -50) == -1 ? correct+=1 : wrong+=1
      two_sum([0,0,-1], -1) == -1? correct+1 : wrong+=1

      # Below zero test case + many test cases
      two_sum([-100,-98,-96,-94,-92,-90,-88,-86,-84,-82,-80,-78,-76,-74,-72,-70, \
      -68,-66,-64,-62,-60,-58,-56,-54,-52,-50,-48,-46,-44,-42,-40,-38,-36,-34,-32,-30, \
      -28,-26,-24,-22,-20,-18,-16,-14,-12,-10,-8,-6,-4,-2,0,2,4,6,8,10,12,14,16,18,20, \
      22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74, \
      76,78,80,82,84,86,88,90,92,94,96,98,100], 0) == -2 ? correct+=1 : wrong+=1

    rescue
      wrong+=1
    end

    # Q2
    begin
      sorted_squares([-4,-1,0,3,10])  == [0,1,9,16,100] ? correct+=1 : wrong+=1
      sorted_squares([-7,-3,2,3,11])  == [4,9,9,49,121] ? correct+=1 : wrong+=1
      sorted_squares([11,3,2,-3,-7])  == [4,9,9,49,121] ? correct+=1 : wrong+=1 #unsorted array
      sorted_squares([0,1,1,2,2,2,3,3,3,3])  == [0,1,1,4,4,4,9,9,9,9] ? correct+=1 : wrong+=1 #repeated numbers

      # This test case was "fun" to write
      sorted_squares([-100,-98,-96,-94,-92,-90,-88,-86,-84,-82,-80,-78,-76,-74,-72,-70, \
      -68,-66,-64,-62,-60,-58,-56,-54,-52,-50,-48,-46,-44,-42,-40,-38,-36,-34,-32,-30, \
      -28,-26,-24,-22,-20,-18,-16,-14,-12,-10,-8,-6,-4,-2,0,2,4,6,8,10,12,14,16,18,20, \
      22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74, \
      76,78,80,82,84,86,88,90,92,94,96,98,100]) == \
      [0,4,4,16,16,36,36,64,64,100,100,144,144,196,196,256,256,324,324,400,400,484,484, \
      576,576,676,676,784,784,900,900,1024,1024,1156,1156,1296,1296,1444,1444,1600,1600, \
      1764,1764,1936,1936,2116,2116,2304,2304,2500,2500,2704,2704,2916,2916,3136,3136, \
      3364,3364,3600,3600,3844,3844,4096,4096,4356,4356,4624,4624,4900,4900,5184,5184, \
      5476,5476,5776,5776,6084,6084,6400,6400,6724,6724,7056,7056,7396,7396,7744,7744, \
      8100,8100,8464,8464,8836,8836,9216,9216,9604,9604,10000,10000] ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q3
    begin
      unique_total([1,2,2,3,4,4,6,1]) == 9 ? correct+=1 : wrong+=1
      unique_total([1,4,-4,6,1]) == 6 ? correct+=1 : wrong+=1
      unique_total([]) == 0 ? correct+=1 : wrong+=1
      unique_total([-20,-10,-5,-5,-5,-10,-1]) == -21 ? correct+=1 : wrong+=1 #negative numbers
      unique_total([0,1,2,3,1,2,3]) == 0 ? correct+=1 : wrong+=1 #0 is the only unique element

      # All outputs add to 0 + a large test case
      unique_total([-100,-98,-96,-94,-92,-90,-88,-86,-84,-82,-80,-78,-76,-74,-72,-70, \
      -68,-66,-64,-62,-60,-58,-56,-54,-52,-50,-48,-46,-44,-42,-40,-38,-36,-34,-32,-30, \
      -28,-26,-24,-22,-20,-18,-16,-14,-12,-10,-8,-6,-4,-2,0,2,4,6,8,10,12,14,16,18,20, \
      22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74, \
      76,78,80,82,84,86,88,90,92,94,96,98,100]) == 0 ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q4
    begin
      unique_char("racecar") == 3 ? correct+=1 : wrong+=1
      unique_char("redder") == -1 ? correct+=1 : wrong+=1
      unique_char("wasitacatisaw") == 6 ? correct+=1 : wrong+=1 #palindrome
      unique_char("annA") == 0 ? correct+=1 : wrong+=1 #case sensitive
      unique_char("Hello@Hello") == 5 ? correct+=1 : wrong+=1 #Special character
    rescue
      wrong+=1
    end

    # Q5
    begin
      reverse_words("Hello") == "hlleo" ? correct+=1 : wrong+=1
      reverse_words("  Hello world!  ") == "wrld!o hlleo" ? correct+=1 : wrong+=1
      reverse_words("Object    Oriented     Design!!") == "dsgn!!ei rntdoiee bjctoe" ? correct+=1 : wrong+=1
      reverse_words("Hello\tworld\vagain") == "gnaai wrldo hlleo" ? correct+=1 : wrong+=1 #escape characters
      reverse_words("7H15 M3554G3 53RV35 7O PR0V3 H0W 0UR M1ND5 C4N D0 4M4Z1NG 7H1NG5!") == \
        "7h1ng5! 4m4z1ng d0 c4n m1nd5 0ru h0w pr0v3 7o 53rv35 m3554g3 7h15" ? correct+=1 : wrong+=1 #hidden message

    rescue
      wrong+=1
    end

    #Q6
    begin
      m1 = Movie.new("Avengers", "02-29-2019")
    rescue
      m1 = nil
    end

    #Q6
    begin
      m2 = Movie.new("Avengers", "01-18-2019")
    rescue
      m2 = nil
    end

    begin
      m3 = Movie.new("Out Now!", "09-10-2018")
    rescue
      m3 = nil
    end

    begin
      m4 = Movie.new("Old Movie", "01-01-1970")
    rescue
      m4 = nil
    end

    begin
      m5 = Movie.new("Future Movie", "04-15-2020")
    rescue
      m5 = nil
    end

    begin
      m6 = Movie.new("Leap Year", "02-29-2020")
    rescue
      m6 = nil
    end

    begin
      m7 = Movie.new("\t@fter    ", "12-31-2019") #Special char in name and last day of the year
    rescue
      m7 = nil
    end

    begin
      m1.released_on == "Invalid Date" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m2.released_on == "Avengers - January 18 2019" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m2.is_released? == "true" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m3.release_date = "09-12-2019"
      m3.is_released? == "true" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m4.released_on == "Old Movie - January 01 1970" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m5.is_released? == 'false' ? correct+1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m5.released_on == "Future Movie - April 15 2020" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m6.released_on == "Leap Year - February 29 2020" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m7.released_on == "\t@fter     - December 31 2019" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m7.is_released? == "false" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    #test getters and setters
    begin
      m7.name = "Some Movie"
      m7.release_date = "09-13-2019"
      m7.name == "Some Movie" ? correct+=1 : wrong+=1
      m7.release_date == "09-13-2019" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    #test empty value
    begin
      m7.name = ""
      wrong+=1 #code shouldn't reach here
    rescue
      correct+=1 #ArgumentError rised
    end

    #test nil value
    begin
      m7.name = nil
      wrong+=1 #code shouldn't reach here
    rescue
      correct+=1 #ArgumentError rised
    end

    #test wrong format
    begin
      m7.release_date = "009-13-2019"
      wrong+=1 #code shouldn't reach here
    rescue
      correct+=1 #ArgumentError rised
    end

    #test nil value
    begin
      m7.release_date = nil
      wrong+=1 #code shouldn't reach here
    rescue
      correct+=1 #ArgumentError rised
    end

    # puts correct+wrong
    puts correct, wrong, correct+wrong
    return ( (correct * full).to_f / (wrong + correct) ).round(2)

  end
  puts scores