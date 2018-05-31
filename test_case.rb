
# if num != nil
# 	puts "you're right!
# end

# catch (:done) do 
# 	while line = gets
# 		throw :done unless fields = line.split(/\t/)
# 	end
# end

def promptAndGet(prompt)   
   print prompt   
   res = readline.chomp   
   throw :quitRequested if res == "!"   
   return res   
end   

catch :quitRequested do   
   name = promptAndGet("Name: ")   
   age = promptAndGet("Occupation: ")   
   # ..   
   # process information   
end   
promptAndGet("Out of exception:")