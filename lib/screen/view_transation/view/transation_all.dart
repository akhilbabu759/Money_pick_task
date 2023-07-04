import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_pick/core/const.dart';
import 'package:money_pick/screen/home/controller/home_controller.dart';
import 'package:money_pick/screen/home/view/widget/transation_tile.dart';
import 'package:money_pick/screen/view_transation/controller/transation_controller.dart';

class TransationAll extends StatelessWidget {
  const TransationAll({super.key});

  @override
  Widget build(BuildContext context) {
    // final contro = Get.put(TransationController());
    final Transatiocontro = Get.put(TransationController());
    Transatiocontro.getvalu();
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 246, 246),
        body: GetBuilder<TransationController>(builder: (controller) {
          return  SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Column(children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(Icons.arrow_back_ios)),
                              const Icon(
                                Icons.download,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Transations',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 33),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                          child: Row(
                            children: [
                              Container(
                                height: 37,
                                width: MediaQuery.of(context).size.width * 0.76,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 229, 237, 239)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 18.0,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'Search vessel',
                                        border: InputBorder.none,
                                        suffixIcon: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.search))),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                    height: 37,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color:
                                            Color.fromARGB(255, 229, 237, 239)),
                                    child: IconButton(
                                        onPressed: () {
                                          Get.bottomSheet(Container(
                                            color: Color.fromARGB(
                                                255, 229, 237, 239),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18.0,
                                                  right: 18,
                                                  top: 50),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Filter',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 28),
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            'Clear',
                                                            style: TextStyle(
                                                                fontSize: 20),
                                                          ))
                                                    ],
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    decoration: BoxDecoration(
                                                        color: colorWhite,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8.0,
                                                              bottom: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              'Money in And Out . 2',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 8.0),
                                                            child: GetBuilder<TransationController>(
                                                              builder: (control) {
                                                                return Row(
                                                                  children: [
                                                                    GestureDetector(onTap: () => Transatiocontro.monInUpdate(!Transatiocontro.monIn),
                                                                      child: Container(
                                                                          decoration: BoxDecoration(
                                                                              color:control.monIn? Color.fromARGB(
                                                                                  88,
                                                                                  33,
                                                                                  149,
                                                                                  243):colorWhite,
                                                                              borderRadius:
                                                                                  BorderRadius.circular(
                                                                                      10)),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(
                                                                                    8.0),
                                                                            child:
                                                                                Text(
                                                                              'Money in',
                                                                              style: TextStyle(
                                                                                  fontSize:
                                                                                      13,
                                                                                  color:
                                                                                      colorgray),
                                                                            ),
                                                                          )),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 10,
                                                                    ),
                                                                    GestureDetector(onTap: () => Transatiocontro.monOutUpdate(!Transatiocontro.monOut),
                                                                      child: Container(
                                                                          decoration: BoxDecoration(
                                                                              color:control.monOut? Color.fromARGB(
                                                                                  88,
                                                                                  33,
                                                                                  149,
                                                                                  243):colorWhite,
                                                                              borderRadius:
                                                                                  BorderRadius.circular(
                                                                                      10)),
                                                                          child: Padding(
                                                                              padding:
                                                                                  const EdgeInsets.all(
                                                                                      8.0),
                                                                              child: Text(
                                                                                  'money out',
                                                                                  style:
                                                                                      TextStyle(fontSize: 13, color: colorgray)))),
                                                                    )
                                                                  ],
                                                                );
                                                              }
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    decoration: BoxDecoration(
                                                        color: colorWhite,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8.0,
                                                              bottom: 10),
                                                      child: GetBuilder<TransationController>(builder: (controller) {
                                                        return Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Text(
                                                                'Statuses. 6',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: 18),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 8.0),
                                                              child: Row(
                                                                children: [
                                                                  GestureDetector(onTap: () => Transatiocontro.completedUpdate(!Transatiocontro.completed),
                                                                    child: Container(
                                                                        decoration: BoxDecoration(
                                                                            color:controller.completed? Color.fromARGB(
                                                                                88,
                                                                                33,
                                                                                149,
                                                                                243):colorWhite,
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                                    10)),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(
                                                                                  8.0),
                                                                          child:
                                                                              Text(
                                                                            'Completed',
                                                                            style: TextStyle(
                                                                                fontSize:
                                                                                    13,
                                                                                color:
                                                                                    colorgray),
                                                                          ),
                                                                        )),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  GestureDetector(onTap: () => Transatiocontro.failedUpdate(!Transatiocontro.failed),
                                                                    child: Container(
                                                                        decoration: BoxDecoration(
                                                                            color:Transatiocontro.failed? Color.fromARGB(
                                                                                88,
                                                                                33,
                                                                                149,
                                                                                243):colorWhite,
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                                    10)),
                                                                        child: Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(
                                                                                    8.0),
                                                                            child: Text(
                                                                                'Failed',
                                                                                style:
                                                                                    TextStyle(fontSize: 13, color: colorgray)))),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  GestureDetector(onTap: () => Transatiocontro.declainedUpdate(!Transatiocontro.declained),
                                                                    child: Container(
                                                                        decoration: BoxDecoration(
                                                                            color: Transatiocontro.declained? Color.fromARGB(
                                                                                88,
                                                                                33,
                                                                                149,
                                                                                243):colorWhite,
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                                    10)),
                                                                        child: Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(
                                                                                    8.0),
                                                                            child: Text(
                                                                                'Declined',
                                                                                style:
                                                                                    TextStyle(fontSize: 13, color: colorgray)))),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 8.0,
                                                                      top: 8),
                                                              child: Row(
                                                                children: [
                                                                  GestureDetector(onTap: () => Transatiocontro.pendingUpdate(!Transatiocontro.pending),
                                                                    child: Container(
                                                                        decoration: BoxDecoration(
                                                                            color: Transatiocontro.pending? Color.fromARGB(
                                                                                88,
                                                                                33,
                                                                                149,
                                                                                243):colorWhite,
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                                    10)),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(
                                                                                  8.0),
                                                                          child:
                                                                              Text(
                                                                            'Pending',
                                                                            style: TextStyle(
                                                                                fontSize:
                                                                                    13,
                                                                                color:
                                                                                    colorgray),
                                                                          ),
                                                                        )),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  GestureDetector(onTap: () => Transatiocontro.revertedUpdate(!Transatiocontro.reverted),
                                                                    child: Container(
                                                                        decoration: BoxDecoration(
                                                                            color: Transatiocontro.reverted? Color.fromARGB(
                                                                                88,
                                                                                33,
                                                                                149,
                                                                                243):colorWhite,
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                                    10)),
                                                                        child: Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(
                                                                                    8.0),
                                                                            child: Text(
                                                                                'Reverted',
                                                                                style:
                                                                                    TextStyle(fontSize: 13, color: colorgray)))),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  GestureDetector(onTap: () => Transatiocontro.cancelledUpdate(!Transatiocontro.cancelled),
                                                                    child: Container(
                                                                        decoration: BoxDecoration(
                                                                            color: Transatiocontro.cancelled? Color.fromARGB(
                                                                                88,
                                                                                33,
                                                                                149,
                                                                                243):colorWhite,
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                                    10)),
                                                                        child: Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(
                                                                                    8.0),
                                                                            child: Text(
                                                                                'Cancelled',
                                                                                style:
                                                                                    TextStyle(fontSize: 13, color: colorgray)))),
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        );
                                                      },
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStateProperty.all<
                                                                        Color>(
                                                                    Color.fromARGB(
                                                                        204,
                                                                        175,
                                                                        217,
                                                                        251)),
                                                            shape: MaterialStateProperty
                                                                .all<
                                                                    RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10), // Set border radius
                                                              ),
                                                            )),
                                                        onPressed: () {},
                                                        child: Text(
                                                          'Cancel',
                                                          style: TextStyle(
                                                              color: colorblue),
                                                        )),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStateProperty.all<
                                                                        Color>(
                                                                    Color.fromARGB(
                                                                        204,
                                                                        40,
                                                                        158,
                                                                        255)),
                                                            shape: MaterialStateProperty
                                                                .all<
                                                                    RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10), // Set border radius
                                                              ),
                                                            )),
                                                        onPressed: ()async {await Transatiocontro.getvalu();
                                                        Get.back();
                                                          },
                                                        child: Text('Apply')),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ));
                                        },
                                        icon: Icon(Icons.filter_list_alt))),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child:Transatiocontro.filteredTransactions!.isEmpty
              ? Center(
                  child: Text('No result found!'),
                )
              : ListView.builder(
                          itemCount: Transatiocontro.filteredTransactions?.length,
                          itemBuilder: (context, index) {
                            log(Transatiocontro.filteredTransactions![index].description);
                            return  Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: TransationTile(
                                  amnt: Transatiocontro.filteredTransactions![index].amount,
                                  date: Transatiocontro.filteredTransactions![index].settledAt,
                                  source: Transatiocontro.filteredTransactions![index].sourceType,
                                  desce: Transatiocontro.filteredTransactions![index].description),
                            );
                          },
                        ))
                      ])));
        }));
  }
}
