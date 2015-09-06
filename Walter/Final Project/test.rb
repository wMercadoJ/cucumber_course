require 'yaml'

str = "[{\"Id\":\"\\/Date(1441478186952)\\/\",\"Content\":\"Test\"},{\"Id\":3468672,\"Content\":\"Test\"}]"
### transform your string in a valid YAML-String
p str.gsub!(/(\\)/, '')
str.gsub!(/(\,)(\S)/, "\\1 \\2")
p test = YAML::load(str)
p test.length