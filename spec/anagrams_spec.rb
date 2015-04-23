require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("Inputs a and chooses a, b, c returns a") do
    expect("a".anagrams("a","b")).to(eq(["a"]))
  end
end
