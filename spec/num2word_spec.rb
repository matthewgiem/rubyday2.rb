require('rspec')
require('num2word.rb')

describe('Fixnum#num2word') do
  it("will return a the word for the following digit") do
    expect(5.num2word()).to(eq("five"))
  end
  it("will return a the word for the following digit") do
    expect(15.num2word()).to(eq("fifteen"))
  end
  it("will return a the word for the following digit") do
    expect(50.num2word()).to(eq("fifty"))
  end
  it("will return a the word for the following digit") do
    expect(84.num2word()).to(eq("eighty four"))
  end
  it("will return a the word for the following digit") do
    expect(100.num2word()).to(eq("one hundred"))
  end
  it("will return a the word for the following digit") do
    expect(114.num2word()).to(eq("one hundred fourteen"))
  end
  it("will return a the word for the following digit") do
    expect(124.num2word()).to(eq("one hundred twenty four"))
  end
  it("will return a the word for the following digit") do
    expect(2000.num2word()).to(eq("two thousand"))
  end
  it("will return a the word for the following digit") do
    expect(30000.num2word()).to(eq("thirty thousand"))
  end
  it("will return a the word for the following digit") do
    expect(400000.num2word()).to(eq("four hundred thousand"))
  end
  it("will return a the word for the following digit") do
    expect(5000000.num2word()).to(eq("five million"))
  end
  it("will return a the word for the following digit") do
    expect(8000000000.num2word()).to(eq("eight billion"))
  end
  it("will return a the word for the following digit") do
    expect(1000000000000.num2word()).to(eq("one trillion"))
  end
  it("will return a the word for the following digit") do
    expect(1342168422516.num2word()).to(eq("one trillion three hundred forty two billion one hundred sixty eight million four hundred twenty two thousand five hundred sixteen"))
  end
end
