require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("Inputs a and chooses a, b, c returns a") do
    expect("a".anagrams("a")).to(eq(["a"]))
  end

  it("Inputs dog and chooses dog, cat, cow returns dog") do
    expect("dog".anagrams("dog")).to(eq(["dog"]))
  end

  it("Inputs dog and chooses cat, cow, snakes returns no anagram") do
    expect("dog".anagrams("cat")).to(eq(["no anagram"]))
  end
end
