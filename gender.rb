require 'sexmachine'

d = SexMachine::Detector.new(:case_sensitive => false)

open('male.txt', 'a') do |male|
open('female.txt','a') do |female|
open('unknown.txt','a') do |unknown|

  File.readlines('unsorted.txt').each do |line|
    gender = d.get_gender(line.strip)
    case gender
      when :male
        male.puts line
      when :mostly_male
        male.puts line
      when :female
        female.puts line
      when :mostly_female
        female.puts line
      else
        unknown.puts line
    end
  end

end
end
end
