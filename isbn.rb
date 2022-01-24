class ISBN13
  def make_ISBN13_bar_code(number)
    number = number.to_s

    #Total of alternte number multiplication with 1 & 3
    total = number.to_s.chars.map(&:to_i).each_with_index.inject(0){|total, (n, index)| total += ((index+1).odd? ? n1 : n3)}

    #Mod of 10
    mod10 = total%10

    #calculate last digit on subtraction of mod10 with 10, if it's equal to 0 
    sub = (10 - mod10).abs == 10 ? 0 : (10 - mod10).abs

    #Finally return ISBN13 number by appending subtracted result on actual number
    result = number+sub.to_s
  end
end

