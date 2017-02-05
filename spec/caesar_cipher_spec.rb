require 'caesar_cipher'

describe "#ciphering" do

	it "returns empty string" do
		expect(ciphering("", 2)).to eql("")
	end

	it "returns one word ciphered" do
		expect(ciphering("hello", 5)).to eql("mjqqt")
	end

	it "returns few words ciphered" do
		expect(ciphering("good night and good luck", 3)).to eql("jrrg qljkw dqg jrrg oxfn")
	end

	it "returns ciphered word for neutral key = 0" do
		expect(ciphering("hello", 0)).to eql("hello")
	end

	it "keeps capitalization" do
		expect(ciphering("HELLO", 5)).to eql("MJQQT")
	end

	it "is case sensitive for each word" do
		expect(ciphering("heLLo gooD LuCK", 5)).to eql("mjQQt lttI QzHP")
	end
end