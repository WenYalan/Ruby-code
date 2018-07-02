
# if num != nil
# 	puts "you're right!
# end

# catch (:done) do 
# 	while line = gets
# 		throw :done unless fields = line.split(/\t/)
# 	end
# end

# def promptAndGet(prompt)   
#    print prompt   
#    res = readline.chomp   
#    throw :quitRequested if res == "!"   
#    return res   
# end   

# catch :quitRequested do   
#    name = promptAndGet("Name: ")   
#    age = promptAndGet("Occupation: ")   
#    # ..   
#    # process information   
# end   
# promptAndGet("Out of exception:")

# point = 2
# flag = false
# flag = true if !point.nil?

# puts flag
# var = 8
# puts var

# def test_case(var)
# 	puts var
# end

# # test_case(6)
# test_object = [test_case(2)]

# puts test_object.first(3)
# @phone_number = "#{rand(9999999999)}"
# puts "This is phone_number: #{@phone_number}"
# def generate_phone_number(phone_number)
# 	@phone_number = phone_number
# end

# def test_case
# 	puts "This is phone_number: #{@phone_number}"
# end
# var = rand(999999)
# puts "Var is #{var}!!!!"
# generate_phone_number("#{var}")
# test_case

# def talk 
# 	puts "Hello"
# end

# def talk_to_other
# 	talk
# end

# puts "Trying 'talk' with no receiver..."
# talk
# puts "Trying 'talk' with an explicit receiver..."
# talk_to_other

# require 'action_dispatch/testing/test_process'
#talk是顶层方法，即object类的私有方法
#无法通过明确接受者调用私有方法
#私有方法必须把self作为默认接收者
# require 'rake'
# photo = Rack::Test::UploadedFile.new('/test_data/png-0808.png','image/png')
# puts photo

# url = "https://dragon-mia.glowing.com/secure_file/get?name=gfp%2Fprescription%2F10614_1530152702_aW1nMQ%3D%3D.png"

# puts url.split(/_/)[2]
# if upload_time = /_*_/.match(url)
# 	puts upload_time
# end

# post :create, picture: fixture_file_upload('/test_data/png-0808.png', 'image/png')

# A.new.Hello

puts true || false
puts true || true
