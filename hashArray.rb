

stringcollect = { "red" => "ruby", "white" => "diamond", "green" => "tree"}

#通过with_index来输出hash表的索引
stringcollect.each.with_index{|(key,value),i|
	puts "Pair #{i} is: #{key}/#{value}"
}