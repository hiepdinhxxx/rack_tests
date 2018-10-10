require_relative 'environment.rb'

namespace :logistics do
  task admin_dashboard_login: :environment do
    resp = dashboard_logistic_login!
    resp.status_200?
  end

  task delivery_import_order: :environment do
    run('logistics:admin_dashboard_login', true)
    resp = post('logistics/delivery/import_order', {
      order_data: '[{"delivery_barcode": "98765432345678", "delivery_code": "CS1000001", "shop_dropoff": "583659", "product_name": "Quan xa lon 1", "delivery_original_price": "0", "package_weight": "100", "purchaser_name": "Chau Test", "purchaser_phone": "0987654321", "purchaser_address": "123 Nguyen Thi Minh Khai", "purchaser_city": "Hồ Chí Minh", "purchaser_district": "Quận 1", "check_before_accept": "1", "is_fragile": "1", "buyer_pay_delivery_fee": "0", "delivery_method": "fast"}, {"delivery_barcode": "", "delivery_code": "CS1000002", "shop_dropoff": "583659", "product_name": "Quan xa lon 2", "delivery_original_price": "50000", "package_weight": "101", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654322", "purchaser_address": "133 Ngo Gia Tu", "purchaser_city": "Bắc Kạn", "purchaser_district": "Huyện Ngân Sơn", "check_before_accept": "1", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000003", "shop_dropoff": "583659", "product_name": "Quan xa lon 3", "delivery_original_price": "1000000", "package_weight": "500", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654323", "purchaser_address": "Nguyen Van Cu", "purchaser_city": "Hồ Chí Minh", "purchaser_district": "Quận 10", "check_before_accept": "1", "is_fragile": "0", "buyer_pay_delivery_fee": "1", "delivery_method": "fast"}, {"delivery_barcode": "", "delivery_code": "CS1000004", "shop_dropoff": "583659", "product_name": "Quan xa lon 4", "delivery_original_price": "0", "package_weight": "501", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654324", "purchaser_address": "222  CMT8", "purchaser_city": "Hồ Chí Minh", "purchaser_district": "Quận 3", "check_before_accept": "1", "is_fragile": "1", "buyer_pay_delivery_fee": "0", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000005", "shop_dropoff": "583659", "product_name": "Quan xa lon 5", "delivery_original_price": "90000", "package_weight": "999", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654325", "purchaser_address": "Tran Hung Dao", "purchaser_city": "An Giang", "purchaser_district": "Thành Phố Long Xuyên", "check_before_accept": "1", "is_fragile": "0", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000006", "shop_dropoff": "583659", "product_name": "Quan xa lon 6", "delivery_original_price": "1000000", "package_weight": "1000", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654326", "purchaser_address": "44 Ly Tu Trong", "purchaser_city": "Hồ Chí Minh", "purchaser_district": "Huyện Cần Giờ", "check_before_accept": "1", "is_fragile": "0", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000007", "shop_dropoff": "583659", "product_name": "Quan xa lon 7", "delivery_original_price": "400000", "package_weight": "1001", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654327", "purchaser_address": "45 Ly Tu Trong", "purchaser_city": "Tiền Giang", "purchaser_district": "Huyện Cai Lậy", "check_before_accept": "0", "is_fragile": "0", "buyer_pay_delivery_fee": "1", "delivery_method": "fast"}, {"delivery_barcode": "", "delivery_code": "CS1000008", "shop_dropoff": "583659", "product_name": "Quan xa lon 8", "delivery_original_price": "500000", "package_weight": "1499", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654328", "purchaser_address": "46 Ly Tu Trong", "purchaser_city": "Tây Ninh", "purchaser_district": "Huyện Gò Dầu", "check_before_accept": "1", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "fast"}, {"delivery_barcode": "", "delivery_code": "CS1000009", "shop_dropoff": "583659", "product_name": "Quan xa lon 9", "delivery_original_price": "10000000", "package_weight": "1500", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654329", "purchaser_address": "47 Ly Tu Trong", "purchaser_city": "Hồ Chí Minh", "purchaser_district": "Quận 4", "check_before_accept": "1", "is_fragile": "0", "buyer_pay_delivery_fee": "1", "delivery_method": "fast"}, {"delivery_barcode": "", "delivery_code": "CS1000010", "shop_dropoff": "583659", "product_name": "Quan xa lon 10", "delivery_original_price": "100000", "package_weight": "1501", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654330", "purchaser_address": "48 Ly Tu Trong", "purchaser_city": "Hồ Chí Minh", "purchaser_district": "Quận 5", "check_before_accept": "1", "is_fragile": "1", "buyer_pay_delivery_fee": "0", "delivery_method": "fast"}, {"delivery_barcode": "", "delivery_code": "CS1000011", "shop_dropoff": "583659", "product_name": "Quan xa lon 11", "delivery_original_price": "99000", "package_weight": "1999", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654331", "purchaser_address": "133 Duong Ba Trac", "purchaser_city": "Bạc Liêu", "purchaser_district": "Hồng Dân", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000012", "shop_dropoff": "583659", "product_name": "Quan xa lon 12", "delivery_original_price": "2000000", "package_weight": "2000", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654332", "purchaser_address": "134 Duong Ba Trac", "purchaser_city": "Bình Thuận", "purchaser_district": "Phú Quý", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000013", "shop_dropoff": "583659", "product_name": "Quan xa lon 13", "delivery_original_price": "150000", "package_weight": "2001", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654333", "purchaser_address": "135 Duong Ba Trac", "purchaser_city": "Hà Nội", "purchaser_district": "Hoàn Kiếm", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000014", "shop_dropoff": "583659", "product_name": "Quan xa lon 14", "delivery_original_price": "150000", "package_weight": "2499", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654334", "purchaser_address": "136 Duong Ba Trac", "purchaser_city": "Hải Phòng", "purchaser_district": "Vĩnh Bảo", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000015", "shop_dropoff": "583659", "product_name": "Quan xa lon 15", "delivery_original_price": "150000", "package_weight": "2500", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654335", "purchaser_address": "137 Duong Ba Trac", "purchaser_city": "Kon Tum", "purchaser_district": "Tu Mơ Rông", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000016", "shop_dropoff": "583659", "product_name": "Quan xa lon 16", "delivery_original_price": "150000", "package_weight": "2501", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654336", "purchaser_address": "138 Duong Ba Trac", "purchaser_city": "Long An", "purchaser_district": "Châu Thành", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000017", "shop_dropoff": "583659", "product_name": "Quan xa lon 17", "delivery_original_price": "150000", "package_weight": "3000", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654337", "purchaser_address": "139 Duong Ba Trac", "purchaser_city": "Long An", "purchaser_district": "Tân Thạnh", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000018", "shop_dropoff": "583659", "product_name": "Quan xa lon 18", "delivery_original_price": "150000", "package_weight": "20000", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654338", "purchaser_address": "140 Duong Ba Trac", "purchaser_city": "Lâm Đồng", "purchaser_district": "Đơn Dương", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000019", "shop_dropoff": "583659", "product_name": "Quan xa lon 19", "delivery_original_price": "150000", "package_weight": "20001", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654339", "purchaser_address": "141 Duong Ba Trac", "purchaser_city": "Ninh Bình", "purchaser_district": "Hoa Lư", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000020", "shop_dropoff": "599671", "product_name": "Quan xa lon 20", "delivery_original_price": "150000", "package_weight": "300000", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654340", "purchaser_address": "142 Duong Ba Trac", "purchaser_city": "Phú Yên", "purchaser_district": "Thành Phố Tuy Hòa", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}, {"delivery_barcode": "", "delivery_code": "CS1000021", "shop_dropoff": "27993429", "product_name": "Quan xa lon 21", "delivery_original_price": "150000", "package_weight": "1000", "purchaser_name": "Chau Nguyen", "purchaser_phone": "0987654341", "purchaser_address": "143 Duong Ba Trac", "purchaser_city": "Yên Bái", "purchaser_district": "Mù Cang Chải", "check_before_accept": "0", "is_fragile": "1", "buyer_pay_delivery_fee": "1", "delivery_method": "normal"}]',
      # order_data: '[{"delivery_barcode": "98765432345678", "delivery_code": "CS1000001", "shop_dropoff": "583659", "product_name": "Quan xa lon 1", "delivery_original_price": "0", "package_weight": "100", "purchaser_name": "Chau Test", "purchaser_phone": "0987654321", "purchaser_address": "123 Nguyen Thi Minh Khai", "purchaser_city": "Hồ Chí Minh", "purchaser_district": "Quận 1", "check_before_accept": "1", "is_fragile": "1", "buyer_pay_delivery_fee": "0", "delivery_method": "fast"}]',
      file_name: 'test.txt',
      client_id: 583675,
      email: 'hoanghiepitvnn@gmail.com'
    }, api_token)
    resp.status_200?
    resp.message_eq?('Đã cập nhật thành công !')
  end
end