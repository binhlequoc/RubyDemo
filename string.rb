names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải"

#1 Làm sao để đếm độ dài của chuỗi
puts "1 Làm sao để đếm độ dài của chuỗi"
puts "String length (include space): #{names.length} \n";

#2 Làm sao để lấy được 3 ký tự (đầu tiên / cuối cùng): không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "2 Làm sao để lấy được 3 ký tự (đầu tiên / cuối cùng): không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
puts "Not change origin string"
sub_first_string = names.slice(0..2)
sub_last_string = names.slice(-3..-1)
puts "sub_first_string: #{sub_first_string} \n";
puts "sub_last_string: #{sub_last_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
sub_first_string = names.slice!(0..2)
sub_last_string = names.slice!(-3..-1)
puts "sub_first_string: #{sub_first_string} \n";
puts "sub_last_string: #{sub_last_string} \n";
puts "origin: #{names} \n";

#3  Làm sao để lấy ra các ký tự từ vị trí 3 đến vị trí 7: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "3  Làm sao để lấy ra các ký tự từ vị trí 3 đến vị trí 7: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải"
puts "Not change origin string"
sub_string = names.slice(2..6)
puts "sub_string: #{sub_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
sub_string = names.slice!(2..6)
puts "sub_string: #{sub_string} \n";
puts "origin: #{names} \n";

#4 Làm sao để thêm "vinh " vào đầu chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "4 Làm sao để thêm vinh vào đầu chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải"
puts "Not change origin string"
new_string = "vinh " + names
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
new_string = names.insert(0, "vinh ")
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";

#5 Làm sao để thêm " vinh" vào cuối chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "5 Làm sao để thêm  vinh vào cuối chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải"
puts "Not change origin string"
new_string = names + " vinh"
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
new_string = names << " vinh"
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";

#6 Làm sao để thêm " vinh" vào vị trí 3 của chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "6 Làm sao để thêm vinh vào vị trí 3 của chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải"
puts "Not change origin string"
new_string = names[0..1] + " vinh" + names[2..-1]
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
new_string = names.insert(2, " vinh")
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";


#7 Làm sao để thay thế tất cả nga bằng nhân: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "7 Làm sao để thay thế tất cả nga bằng nhân: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải nga nganga"
puts "Not change origin string"
new_string = names.gsub("nga", "nhân")
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
new_string = names.gsub!("nga", "nhân")
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";

#8 Làm sao để thay thế các ký tự từ vị trí số 3 đến 7 bằng "nhân": không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "8 Làm sao để thay thế các ký tự từ vị trí số 3 đến 7 bằng nhân: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải"
puts "Not change origin string"
new_string = names.dup
new_string[3..7] = "nhân"
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
new_string = names
new_string[3..7] = "nhân"
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";

#9 Làm sao để xoá tất cả "nga" ra khỏi mảng: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "9 Làm sao để xoá tất cả nga ra khỏi mảng: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc>"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải nga nganga"
puts "Not change origin string"
new_string = names.gsub("nga", "")
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
new_string = names.gsub!("nga", "")
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";

#10 Làm sao để viết hoa ký tự đầu tiên của chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "10 Làm sao của viết hoa ký tự đầu tiên của chuỗi: các làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải nga nganga"
puts "Not change origin string"
new_string = names.capitalize
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
new_string = names.capitalize!
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";

#11 Làm sao để viết hoa tất cả chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "11 Làm sao của viết hoa tất cả chuỗi: các làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải nga nganga"
puts "Not change origin string"
new_string = names.upcase
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
new_string = names.upcase!
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";

#12 Làm sao để viết thường tất cả chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "12 Làm sao để viết thường tất cả chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
names = "NGA trung hoa hiền nga trung HOA hiền kiên hà hải nga nganga"
puts "Not change origin string"
new_string = names.downcase
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
new_string = names.downcase!
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";

#13 Làm sao để kiểm tra chuỗi có chứa "dương" hay không
puts "------"
puts "14 Làm sao để kiểm tra chuỗi có chứa dương hay không"
names = " trung hoa hiền  trung hoa hiền kiên hà hải  nganga"
puts "#{names.index("dương") ? "có" : "không"}"

#14 Làm sao để kiểm tra chuỗi có empty hay không
puts "------"
puts "14 Làm sao để kiểm tra chuỗi có empty hay không"
names = ""
puts "Is empty: #{names.empty? ? "có" : "không"}"

#15 Làm sao để remove tất cả space khỏi chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
puts "------"
puts "15 Làm sao để remove tất cả space khỏi chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải"
puts "Not change origin string"
new_string = names.gsub(" ", "")
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";
puts "------"
puts "Change origin string"
new_string = names.gsub!(" ", "")
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";

#16  Làm sao để tạo ra mảng ["nga", "trung", "hoa", "hiền", "nga", "trung", "hoa", "hiền", "kiên", "hà", "hải"]
puts "------"
puts "16 Làm sao để tạo ra mảng [nga, trung, hoa, hiền, nga, trung, hoa, hiền, kiên, hà, hải]"
names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải"
puts "Not change origin string"
new_string = names.split(" ")
puts "new_string: #{new_string} \n";
puts "origin: #{names} \n";

#Hash-----

status_mapping = {pending: 0, approved: 1, declined: 3}
#1
status_mapping.keys.each { |key| puts "#{key}, #{status_mapping[key]}" }
#2
puts status_mapping.keys.inspect
#3
puts status_mapping.values.inspect
#4
puts status_mapping.key(1)
#5
puts status_mapping[:declined]
#6
status_mapping.delete(:pending)
puts status_mapping
#7 Làm sao để xóa cặp key value nếu (value % 2 + 3 / 700 > 7)
status_mapping = {pending: 0, approved: 1, declined: 2}
status_mapping.delete_if do |key, value|
  ((value % 2) + (3 / 700)) > 7
end
puts status_mapping

#8
puts status_mapping.key?(:not_response)
#9
puts status_mapping.value?(3)
#10
status_mapping[:not_response] = 3
puts status_mapping
#11
# sẽ merge cặp key-value mới và trả về 1 hash mới nhưng không change chuỗi gốc
result = status_mapping.merge pre_defined: -1, pending: 5
puts result, status_mapping

#Array

nums = [7, 9, 22, 4, 5, 7, 8, nil, 100, -7, 9, 0, nil, nil]
puts nums.fetch(1, "Not found")
# Hàm này sẽ take 2 params, 1 là vị trí của value muốn tìm, 2 là message trả về khi vị trí cần tìm ko có

#2
puts nums.empty?()
#3
puts nums.include?(22)
#4
nums = [7, 9, 22, 4, 5, 7, 8, nil, 100, -7, 9, 0, nil, nil]
puts "No Change origin"
new_array = nums.select { |num| num != nil }
puts "new_array: #{new_array}"
puts "origin #{nums}"

puts "Change origin"
new_array = nums.delete_if { |num| num == nil }
puts "new_array: #{new_array}"
puts "origin #{nums}"

#5
nums = [7, 9, 22, 4, 5, 7, 8, nil, 100, -7, 9, 0, nil, nil]
puts "No Change origin"
new_array = nums.uniq
puts "new_array: #{new_array}"
puts "origin #{nums}"

puts "Change origin"
new_array = nums.uniq!
puts "new_array: #{new_array}"
puts "origin #{nums}"

#6 phân biệt each, map
nums = [7, 9, 22, 4, 5, 7, 8, nil, 100, -7, 9, 0, nil, nil]
test1 = nums.each { |num| "#{num}" }
test2 = nums.map { |num| "#{num}" }
puts test1.inspect
puts test2.inspect
puts nums.inspect
# Each được sử dụng để thao tác với các phần tử trong mảng, và trả về mảng gốc
# Map làm thay đổi các phần tử trong mảng và trả về mảng mới
# Cả 2 ko làm thay đổi mảng gốc

#7
new_arr = nums.map { |num| if num != nil then num * 5 else num end }
puts new_arr.inspect
puts nums.inspect

#8
new_arr = nums.map { |num| if num != nil then num + 2 else num end }
  puts new_arr.inspect
  puts nums.inspect
#9
new_arr = nums.select { |num| num != nil and num > 18 }
puts new_arr.inspect
puts nums.inspect

#10
nums.delete_if { |num| num == nil or num <= 18 }
puts nums.inspect

#11
nums = [7, 9, 22, 4, 5, 7, 8, nil, 100, -7, 9, 0, nil, nil]
puts nums.select { |value| value != nil }.join(",")

#12
nums.delete_if { |num| num == nil }
puts nums.sort { |a, b| a <=> b }.inspect

#13
puts nums.sort { |a, b| b <=> a }.inspect

#14
new_arr = nums.sort do |a, b|
  valueA = a % 3
  valueB = b % 3
  valueA <=> valueB
end

puts new_arr.inspect
  
