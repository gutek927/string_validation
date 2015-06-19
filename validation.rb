puts 'Enter further words. When you want to stop just enter STOP statement'
arr = []
element = 0
input = ''
loop do
  input = gets.chomp
  break if input == 'STOP'
  input.sub!(/\Aa/, 'XXX_')
  input.sub!(/a\Z/, '_XXX')
  input.gsub!(/[^a-zA-Z0-9]/, '_')
  arr[element] = input
  element += 1
end
puts ''
arr.sort! { |e1, e2| e1 <=> e2 }
arr.each do |e|
  puts "#{e}"
end
