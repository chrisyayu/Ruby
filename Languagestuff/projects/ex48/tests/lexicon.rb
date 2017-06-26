module Lexicon
	def Lexicon.scan(string)
		words = [['direction','north'],
		['direction','south'],
		['direction','east'],
		['verb','go'],
		['verb','kill'],
		['verb','eat'],
		['stop','the'],
		['stop','in'],
		['stop','of'],
		['noun','princess'],
		['noun','bear']]
		ary=[]
		string = string.split

		string.each do |a|
			a1 = a.downcase
			catch :found do
			if (a1 =~ /\d/).nil?
				words.each do |b|
					if b[1] == a1
						ary.push(b)
						throw :found
					end
				end
				ary.push(['error',a])
			else
				ary.push(["number",a.to_i])
			end
			end
		end
	return ary
	end
end
