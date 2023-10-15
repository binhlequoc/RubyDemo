#1/ Khi gặp lỗi này nên xử lý như thế nào?
# Lỗi không tìm được version migration: 20211208093818
# Ta phải kiểm tra xem version migration có tồn tại ko
# bin/rails db:migrate:status
# chọn phiên bản migration cần rollback

#1/ Active record trong Rails được hiểu là Model trong mô hình MVC
# Active record giúp làm việc với cơ sở dữ liệu thông qua Object trong Ruby thay vì viết các cấu truy vấn phức tạp

#2/ /app/db/migate/

#3/ bin/rails db:migrate

#4/ bin/rails db:migrate VERSION={FILE_MIGRATE_VERSION}

#5/ bin/rails db:migrate RAILS_ENV={environment}

#6/ D. A,B,C trên đều sai
# lệnh rake db:migrate sẽ chạy các migration chưa được chạy, và chạy theo thứ tự dựa vào time

#7 Khi chạy 'rails/rake db:migrate' thì nó sẽ invoke lệnh gì để update schema?
# Nó sẽ invloke lệnh change trong file migration để update schema

#8 Những command nào sau đây sai syntax:a. rails g migration CreateUsers b. rails generate migration CreateUsersc. rails generate migration create_usersd. rails g migration create_users
# Command trên đều hợp lệ

#9 Câu C, config lại database.yml, ...

#10 Câu D, A & B đều đúng

#11 rails db:rollback
# rake db:rollback

#12 rails db:rollback STEP=3

#13 Nó sẽ thực hiện rollback các mỉgration từ phiên bản 20080818091109 đến mới nhất
# và chạy lại migration 20080818091109

#14 Nó sẽ thực hiện rollback các mỉgration từ phiên bản 20080807071903 đến 20080808095031
# và chạy lại migration 20080807071903

#15 Nó sẽ thực hiện migration từ phiên bản hiện tại đến 20080818091109

#16 Rails sẽ thực hiện rollback lại phiên bản trước đó là 20161112054708

#17 Sử dụng change khi Rails có thể tự động rollback
# Sử dụng up/down khi Rails không xác đinh đc cách để rollback hoặc muốn custom cách rollback

#18 Khai báo trên có vấn đề, remove_column không chỉ định type cho field cần xoá,
# vì thế trong trường hợp muốn rollback sẽ bị lỗi vì rails ko xác định đc fields đó sau khi rollback sẽ có type ntn

#19 Cần xác định rõ type cho các fields

#20 Được, sử dụng migration

#21 Để tạo 2 fields created_at và updated_at, dùng để lưu trữ time khi tạo hoặc update record trong bảng

#22 Sẽ tạo 1 khoá ngoại user_id trong bảng products và trỏ đến bảng users

#23 polymorphic nghĩa là đa hình. rails sẽ tạo 1 khoá ngoại mà khoá ngoại này có thể liên kết với nhiều bảng khách nhau

#24 lệnh foreign_key: true nghĩa là khoá ngoại owner_id phải liên kết đến một record hợp lệ trong bảng owner
# foreign_key: false nghĩa là sẽ không tạo ràng buột khoá ngoại cho cột owner_id, và cột owner_id sẽ có thể chứa bất kỳ giá trị nào 

#25 trong rails sẽ có 1 bảng schema_migrations, bảng này chứa thông tin của các migrations bao gồm migrations đó đã chạy hay chưa
#check: rails db:migrate:status

#26
# - cột ful_name sẽ không bị xoá
# - dữ liệu trong cột ful_name sẽ không được update qua cột full_name
# - cách sửa trực tiếp này đôi khi sẽ ảnh hưởng đến logic đang chạy => lỗi


#27 Cách sửa
# - Không sửa lại file migration đã tạo mà sẽ tạo 1 migration mới
#   rails generate migration RenameFulNameInUsers
# - trong hàm change, thêm đoạn code sau để sửa lại tên cột
#   rename_column :articles, :ful_name, :full_name
