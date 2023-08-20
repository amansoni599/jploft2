import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jploft2/UI/Controller/book_details_controller.dart';

class BookingDetails extends StatelessWidget {
  BookingDetails({super.key});

  var controller = Get.put(BookDetailsController());

  TextStyle boldStyle =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w700);
  TextStyle style = const TextStyle(
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: controller.obx(
            onError: (error) =>
                const Center(child: Text("Some thing went to wrong")),
            onLoading: const Center(child: CircularProgressIndicator()),
            (state) => SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Bokking # ${controller.model.bookingId}",
                            style: boldStyle,
                          ),
                          Text(
                            "${controller.model.bookingDate} ${controller.model.bookingTime}",
                            style: style,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SizedBox(
                                  height: 100,
                                  child: Row(
                                    children: [
                                      Image.network(
                                          "https://images.unsplash.com/photo-1560185893-a55cbc8c57e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmVkcm9vbXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              controller
                                                  .model.getRoom[0].category,
                                              style: boldStyle,
                                            ),
                                            Text(
                                              "Room size: ${controller.model.getRoom[0].roomSize} sqf",
                                              style: style,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Container(
                                                color: Colors.purple,
                                                child: const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Classic",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Guest Details",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.grey),
                            ),
                          ),
                          Text(
                            controller.model.guestName,
                            style: boldStyle,
                          ),
                          Text(
                            "${controller.model.phone}  ● ${controller.model.email}",
                            style: style,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Booking Details",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          ),
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 243, 236, 224),
                              border: Border.all(color: Colors.orange),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 20,
                                        ),
                                        child: Text(
                                          "Dates",
                                          style: boldStyle,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "${controller.model.bookingDate}",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 253, 86, 9),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 5),
                                  child: Divider(
                                    color: Color.fromARGB(255, 247, 165, 140),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                      ),
                                      child: Text(
                                        "Guest",
                                        style: boldStyle,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        controller.model.guestQty.toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 253, 86, 9),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 5),
                                  child: Divider(
                                    color: Color.fromARGB(255, 247, 165, 140),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                      ),
                                      child: Text(
                                        "Room",
                                        style: boldStyle,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        controller.model.roomQty.toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 253, 86, 9),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          if (false)
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "Meals Details",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          if (false)
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SizedBox(
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        child: Image.network(
                                            "https://images.healthshots.com/healthshots/en/uploads/2022/07/25101436/breakfast1.jpg"),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Breakfast",
                                            style: boldStyle,
                                          ),
                                          Text(
                                            "Indian Menu",
                                            style: style,
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Text(
                                        "₹ 80.00",
                                        style: boldStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Payment Details",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 243, 236, 224),
                              border: Border.all(color: Colors.orange),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 20,
                                        ),
                                        child: Text(
                                          "1 Nights X 1 Guest",
                                          style: boldStyle,
                                        ),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Text(
                                          "₹${controller.model.totalAmount}",
                                          style: boldStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 5),
                                  child: Divider(
                                    color: Color.fromARGB(255, 247, 165, 140),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                      ),
                                      child: Text(
                                        "Meal",
                                        style: boldStyle,
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Text(
                                        "₹0",
                                        style: boldStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 5),
                                  child: Divider(
                                    color: Color.fromARGB(255, 247, 165, 140),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 20,
                                      ),
                                      child: Text(
                                        "Total Amount",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 253, 86, 9),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "₹${controller.model.totalAmount}",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 253, 86, 9),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                )));
  }
}
