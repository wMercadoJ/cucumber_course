#session2: 
#practice 1, 2
File.open('puts_result.txt', 'w') { |f|
	7.times { |i| f.puts "put: line #{i+1}"}
	7.times { |i| f.print "print: line #{i+1}\n"}
}
#practice 3
File.open("temp_file.txt","w") { |tf|
	File.open("puts_result.txt", "r+") { |f|
        f.each_line { |line| tf.puts "# #{line}"}
   	}
}
File.delete("puts_result.txt");
File.rename("temp_file.txt", "puts_result.txt");