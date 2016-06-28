require('pry')

class Fixnum
  define_method(:num2word) do
    number_sentence = []
    numbers = Array.new()
    numbers[0] = ""
    numbers[1] = "one"
    numbers[2] = "two"
    numbers[3] = "three"
    numbers[4] = "four"
    numbers[5] = "five"
    numbers[6] = "six"
    numbers[7] = "seven"
    numbers[8] = "eight"
    numbers[9] = "nine"
    numbers[10] = "ten"
    numbers[11] = "eleven"
    numbers[12] = "twelve"
    numbers[13] = "thirteen"
    numbers[14] = "fourteen"
    numbers[15] = "fifteen"
    numbers[16] = "sixteen"
    numbers[17] = "seventeen"
    numbers[18] = "eighteen"
    numbers[19] = "nineteen"
    numbers[20] = "twenty"
    numbers[30] = "thirty"
    numbers[40] = "forty"
    numbers[50] = "fifty"
    numbers[60] = "sixty"
    numbers[70] = "seventy"
    numbers[80] = "eighty"
    numbers[90] = "ninety"

    num_ands = ["", "thousand", "million", "billion", "trillion"]

    arrnum = self.to_s.split('').reverse.each_slice(3).to_a
    arrnum_inc = 0
    arrnum.each do  |digits|
      new_arr = []
      digits.reverse!()

      if digits.length == 3
        if digits[0].to_i > 0
          new_arr.push(numbers[digits[0].to_i] + " hundred")
        end
        if digits[1].to_i == 1
          num = digits[1] + digits[2]
          new_arr.push(numbers[num.to_i])
        end
        if digits[1].to_i > 1
          num = digits[1] + "0"
          new_arr.push(numbers[num.to_i]) if digits[1] != 0
        end
        if digits[1].to_i != 1
          new_arr.push(numbers[digits[2].to_i])
          new_arr.push(num_ands[arrnum_inc]) if digits.join("") != "000"
        end
      elsif digits.length == 2
        if digits[0].to_i == 1
          num = digits[0] + digits[1]
          new_arr.push(numbers[num.to_i])
        end
        if digits[0].to_i > 1
          num = digits[0] + "0"
          new_arr.push(numbers[num.to_i])
        end
        if digits[0].to_i != 1
          new_arr.push(numbers[digits[1].to_i])
          new_arr.push(num_ands[arrnum_inc])
        end
      elsif digits.length == 1
        new_arr.push(numbers[digits[0].to_i])
        new_arr.push(num_ands[arrnum_inc])
      end
      number_sentence.unshift(new_arr.reject(&:empty?).join(" "))
      arrnum_inc+=1
    end
  puts number_sentence
  number_sentence.reject(&:empty?).join(" ")
  end
end
