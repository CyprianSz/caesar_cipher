def ciphering(message,key)
	alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
	ciphered = ""
	
	message.each_char do |i|
		if alphabet.include?(i)
			number = (alphabet.index(i) + key) % 26
			ciphered += alphabet[number]
		elsif alphabet.include?(i.downcase)
			number = (alphabet.index(i.downcase) + key) % 26
			ciphered += alphabet[number].upcase
		else
			ciphered += i
		end
	end
	ciphered
end

start_time = Time.now
p ciphering("elo melo pierwsze ELO",29)
p "Time elapsed: #{(Time.now - start_time)*1000} milliseconds"
