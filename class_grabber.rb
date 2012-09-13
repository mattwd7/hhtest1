#class grabber

new_list = ""

File.open("preformatted_courses.txt", "r") do |infile|
	while (line = infile.gets)
	
	for ii in 0..line.length-1
		if line[ii] == ">"
			ii = ii + 1
			for jj in ii..line.length-1
				if line[jj] == "1" || line[jj] == "2" || line[jj] == "3" || line[jj] == "4" || line[jj] == "5" || line[jj] == "6" || line[jj] == "7" || line[jj] == "8" || line[jj] == "9" || line[jj] == "0"
					for kk in jj..line.length-1
						if line[kk] == "<"
							new_list = new_list + "\n"
							break
						end
						new_list = new_list + line[kk]
					end
					break
				end
			end
			break
		end
	end
	
	end
end
#puts new_list
new_file = File.new("formatted_courses.txt", "w")
	new_file.write(new_list)
new_file.close