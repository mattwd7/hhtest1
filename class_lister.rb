#Data Manager

dot_count = 0
field_abbr = "C&EE"
new_list = ""
test = "Hello, World!"

File.open("preformatted_courses.txt", "r") do |infile|
	while (line = infile.gets)
	
		if line[line.length-3] == "-"
			line[line.length-3] = ""
		end
		
		if line[0] == "1" || line[0] == "2" || line[0] == "3" || line[0] == "4" || line[0] == "5" || line[0] == "6" || line[0] == "7" || line[0] == "8" || line[0] == "9" || line[0] == "0"
#			print "#{field_abbr} "
			for t in 0..line.length-1
			
				if line[t] == "."
					dot_count = dot_count + 1
					if dot_count == 2
						dot_count = 0
						new_list = new_list + "\n"
						t = 0
						break
					else
						line[t] = ":"
					end
				end
				
				new_list = new_list + "#{line[t]}"
				
				if line[t] == "\n"
					new_list = new_list.chop
					line = infile.gets
					for t in 0..line.length-1

						new_list = new_list + "#{line[t]}"
				
						if line[t] == "."
						dot_count = dot_count + 1
							if dot_count == 2
								dot_count = 0
								new_list = new_list + "\n"
								t = 0
								break
							end
						end
					end			
				end
			end
		end
	end
end
#puts new_list
new_file = File.new("formatted_courses.txt", "w")
	new_file.write(new_list)
new_file.close