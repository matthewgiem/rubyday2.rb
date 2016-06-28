require('pry')

class String
  define_method(:scrabble) do
    self.downcase!()
    self.tr!('aeioulnrst','1')
    self.tr!('dg', '2')
    self.tr!('bcmp', '3')
    self.tr!('fhdwy', '4')
    self.tr!('k', '5')
    self.tr!('jx', '8')
    self.tr!('qz', 'a')
    arr = []
    self.split("").each() do |num|
      number = num.to_i(16)
      arr.push(number)
    end
    arr.inject(0,:+)
  end

end
