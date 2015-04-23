require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("Inputs a and chooses a, b, c returns a") do
    expect("a".anagrams("a","b","c")).to(eq(["a"]))
  end

  it("Inputs dog and chooses dog, cat, cow returns dog") do
    expect("dog".anagrams("dog", "cat", "cow")).to(eq(["dog"]))
  end
end
