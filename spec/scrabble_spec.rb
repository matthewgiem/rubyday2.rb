require('rspec')
require('scrabble')


describe('String#scrabble') do
  it('will return a scrabble score for a letter') do
    expect('u'.scrabble()).to(eq(1))
  end

  it('will return a scrabble score for a letter') do
    expect('g'.scrabble()).to(eq(2))
  end

  it('will return a scrabble score for a letter') do
    expect('p'.scrabble()).to(eq(3))
  end

  it('will return a scrabble score for a letter') do
    expect('f'.scrabble()).to(eq(4))
  end

  it('will return a scrabble score for a letter') do
    expect('k'.scrabble()).to(eq(5))
  end

  it('will return a scrabble score for a letter') do
    expect('x'.scrabble()).to(eq(8))
  end

  it('will return a scrabble score for a letter') do
    expect('q'.scrabble()).to(eq(10))
  end

  it('will return a scrabble score for a letter') do
    expect('quiz'.scrabble()).to(eq(22))
  end

end
