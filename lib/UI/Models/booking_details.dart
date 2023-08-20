class BookingDetailsModel {
  BookingDetailsModel({
    required this.id,
    required this.bookingId,
    required this.userId,
    required this.hotelId,
    required this.roomId,
    required this.roomQty,
    required this.guestQty,
    required this.checkIn,
    required this.checkOut,
    this.meals,
    required this.tax,
    required this.taxAmount,
    required this.discount,
    required this.discountPrice,
    required this.promoCode,
    required this.bookingAmount,
    required this.totalAmount,
    this.paidAmount,
    required this.guestName,
    required this.email,
    required this.phone,
    this.commission,
    this.roomCategory,
    required this.paymentStatus,
    required this.paymentType,
    required this.transactionId,
    required this.bookingStatus,
    required this.createdAt,
    required this.updatedAt,
    required this.bookingDate,
    required this.bookingTime,
    required this.roomAmount,
    required this.mealAmount,
    required this.getRoom,
    required this.getFood,
  });
  late final int id;
  late final String bookingId;
  late final int userId;
  late final int hotelId;
  late final String roomId;
  late final int roomQty;
  late final int guestQty;
  late final String checkIn;
  late final String checkOut;
  late final Null meals;
  late final String tax;
  late final String taxAmount;
  late final String discount;
  late final String discountPrice;
  late final String promoCode;
  late final String bookingAmount;
  late final String totalAmount;
  late final Null paidAmount;
  late final String guestName;
  late final String email;
  late final String phone;
  late final Null commission;
  late final Null roomCategory;
  late final String paymentStatus;
  late final String paymentType;
  late final String transactionId;
  late final String bookingStatus;
  late final String createdAt;
  late final String updatedAt;
  late final String bookingDate;
  late final String bookingTime;
  late final String roomAmount;
  late final int mealAmount;
  late final List<GetRoom> getRoom;
  late final List<dynamic> getFood;

  BookingDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    userId = json['user_id'];
    hotelId = json['hotel_id'];
    roomId = json['room_id'];
    roomQty = json['room_qty'];
    guestQty = json['guest_qty'];
    checkIn = json['check_in'];
    checkOut = json['check_out'];
    meals = null;
    tax = json['tax'];
    taxAmount = json['tax_amount'];
    discount = json['discount'];
    discountPrice = json['discount_price'];
    promoCode = json['promo_code'];
    bookingAmount = json['booking_amount'];
    totalAmount = json['total_amount'];
    paidAmount = null;
    guestName = json['guest_name'];
    email = json['email'];
    phone = json['phone'];
    commission = null;
    roomCategory = null;
    paymentStatus = json['payment_status'];
    paymentType = json['payment_type'];
    transactionId = json['transaction_id'];
    bookingStatus = json['booking_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    bookingDate = json['booking_date'];
    bookingTime = json['booking_time'];
    roomAmount = json['room_amount'];
    mealAmount = json['meal_amount'];
    getRoom =
        List.from(json['get_room']).map((e) => GetRoom.fromJson(e)).toList();
    getFood = List.castFrom<dynamic, dynamic>(json['get_food']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booking_id'] = bookingId;
    _data['user_id'] = userId;
    _data['hotel_id'] = hotelId;
    _data['room_id'] = roomId;
    _data['room_qty'] = roomQty;
    _data['guest_qty'] = guestQty;
    _data['check_in'] = checkIn;
    _data['check_out'] = checkOut;
    _data['meals'] = meals;
    _data['tax'] = tax;
    _data['tax_amount'] = taxAmount;
    _data['discount'] = discount;
    _data['discount_price'] = discountPrice;
    _data['promo_code'] = promoCode;
    _data['booking_amount'] = bookingAmount;
    _data['total_amount'] = totalAmount;
    _data['paid_amount'] = paidAmount;
    _data['guest_name'] = guestName;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['commission'] = commission;
    _data['room_category'] = roomCategory;
    _data['payment_status'] = paymentStatus;
    _data['payment_type'] = paymentType;
    _data['transaction_id'] = transactionId;
    _data['booking_status'] = bookingStatus;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['booking_date'] = bookingDate;
    _data['booking_time'] = bookingTime;
    _data['room_amount'] = roomAmount;
    _data['meal_amount'] = mealAmount;
    _data['get_room'] = getRoom.map((e) => e.toJson()).toList();
    _data['get_food'] = getFood;
    return _data;
  }
}

class GetRoom {
  GetRoom({
    required this.id,
    required this.bookingId,
    required this.venderId,
    required this.roomId,
    required this.category,
    required this.roomSize,
    required this.roomRent,
    required this.discountAmount,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final int bookingId;
  late final String venderId;
  late final String roomId;
  late final String category;
  late final String roomSize;
  late final String roomRent;
  late final String discountAmount;
  late final String createdAt;
  late final String updatedAt;

  GetRoom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    venderId = json['vender_id'];
    roomId = json['room_id'];
    category = json['category'];
    roomSize = json['room_size'];
    roomRent = json['room_rent'];
    discountAmount = json['discount_amount'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['booking_id'] = bookingId;
    _data['vender_id'] = venderId;
    _data['room_id'] = roomId;
    _data['category'] = category;
    _data['room_size'] = roomSize;
    _data['room_rent'] = roomRent;
    _data['discount_amount'] = discountAmount;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}
