require "spec_helper"
RSpec.describe Stringer do
  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "only showing length of the given number" do 
  	expect(Stringer.minify "Arr, I do not know what I am doing", 10).to eq("Arr, I do n...")
  end  

  it "only showing length of the given number" do 
  	expect(Stringer.minify "Arr!", 10).to eq("Arr!")
  end

  it "replaces all instances of a string within a string with a new string" do
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
  end

  it "puts all the words in a string into seperate elements in an array" do
     expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
  end

  it "remove all instances of the second parameter from the first parameter" do
	 expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
  end
end
  