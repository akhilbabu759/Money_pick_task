import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_pick/core/const.dart';

import 'package:money_pick/screen/home/view/widget/transation_tile.dart';
import 'package:money_pick/screen/view_transation/controller/transation_controller.dart';

class TransationAll extends StatelessWidget {
  const TransationAll({super.key});

  @override
  Widget build(BuildContext context) {
    // final contro = Get.put(TransationController());
    final transatiocontro = Get.put(TransationController());
    transatiocontro.getvalu();
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 246, 246),
        body: GetBuilder<TransationController>(builder: (controller) {
          return SafeArea(
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
                              icon: const Icon(Icons.arrow_back_ios)),
                          const Icon(
                            Icons.download,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    const Row(
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
                                color: const Color.fromARGB(255, 229, 237, 239)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 18.0,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle: const TextStyle(color: colorgray),
                                    hintText: 'Search vessel',
                                    border: InputBorder.none,
                                    suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.search))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                                height: 37,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color.fromARGB(255, 229, 237, 239)),
                                child: IconButton(
                                    onPressed: () {
                                      Get.bottomSheet(Container(
                                        color:
                                            const Color.fromARGB(255, 229, 237, 239),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 18.0, right: 18, top: 50),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    'Filter',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 28),
                                                  ),
                                                  TextButton(
                                                      onPressed: () {},
                                                      child: const Text(
                                                        'Clear',
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ))
                                                ],
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                decoration: BoxDecoration(
                                                    color: colorWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, bottom: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets
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
                                                        child: GetBuilder<
                                                                TransationController>(
                                                            builder: (control) {
                                                          return Row(
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () => transatiocontro
                                                                    .monInUpdate(
                                                                        !transatiocontro
                                                                            .monIn),
                                                                child:
                                                                    Container(
                                                                        decoration: BoxDecoration(
                                                                            color: control.monIn
                                                                                ? const Color.fromARGB(88, 33, 149, 243)
                                                                                : colorWhite,
                                                                            borderRadius: BorderRadius.circular(10)),
                                                                        child: const Padding(
                                                                          padding:
                                                                              EdgeInsets.all(8.0),
                                                                          child:
                                                                              Text(
                                                                            'Money in',
                                                                            style:
                                                                                TextStyle(fontSize: 13, color: colorgray),
                                                                          ),
                                                                        )),
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              GestureDetector(
                                                                onTap: () => transatiocontro
                                                                    .monOutUpdate(
                                                                        !transatiocontro
                                                                            .monOut),
                                                                child: Container(
                                                                    decoration: BoxDecoration(
                                                                        color: control.monOut
                                                                            ? const Color.fromARGB(
                                                                                88,
                                                                                33,
                                                                                149,
                                                                                243)
                                                                            : colorWhite,
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                10)),
                                                                    child: const Padding(
                                                                        padding:
                                                                            EdgeInsets.all(
                                                                                8.0),
                                                                        child: Text(
                                                                            'money out',
                                                                            style:
                                                                                TextStyle(fontSize: 13, color: colorgray)))),
                                                              )
                                                            ],
                                                          );
                                                        }),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                decoration: BoxDecoration(
                                                    color: colorWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, bottom: 10),
                                                  child: GetBuilder<
                                                      TransationController>(
                                                    builder: (controller) {
                                                      return Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets
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
                                                                GestureDetector(
                                                                  onTap: () => transatiocontro
                                                                      .completedUpdate(
                                                                          !transatiocontro
                                                                              .completed),
                                                                  child: Container(
                                                                      decoration: BoxDecoration(color: controller.completed ? const Color.fromARGB(88, 33, 149, 243) : colorWhite, borderRadius: BorderRadius.circular(10)),
                                                                      child: const Padding(
                                                                        padding:
                                                                            EdgeInsets.all(8.0),
                                                                        child:
                                                                            Text(
                                                                          'Completed',
                                                                          style: TextStyle(
                                                                              fontSize: 13,
                                                                              color: colorgray),
                                                                        ),
                                                                      )),
                                                                ),
                                                                const SizedBox(
                                                                  width: 10,
                                                                ),
                                                                GestureDetector(
                                                                  onTap: () => transatiocontro
                                                                      .failedUpdate(
                                                                          !transatiocontro
                                                                              .failed),
                                                                  child: Container(
                                                                      decoration: BoxDecoration(
                                                                          color: transatiocontro.failed
                                                                              ? const Color.fromARGB(88, 33, 149,
                                                                                  243)
                                                                              : colorWhite,
                                                                          borderRadius: BorderRadius.circular(
                                                                              10)),
                                                                      child: const Padding(
                                                                          padding: EdgeInsets.all(
                                                                              8.0),
                                                                          child: Text(
                                                                              'Failed',
                                                                              style: TextStyle(fontSize: 13, color: colorgray)))),
                                                                ),
                                                                const SizedBox(
                                                                  width: 10,
                                                                ),
                                                                GestureDetector(
                                                                  onTap: () => transatiocontro
                                                                      .declainedUpdate(
                                                                          !transatiocontro
                                                                              .declained),
                                                                  child: Container(
                                                                      decoration: BoxDecoration(
                                                                          color: transatiocontro.declained
                                                                              ? const Color.fromARGB(88, 33, 149,
                                                                                  243)
                                                                              : colorWhite,
                                                                          borderRadius: BorderRadius.circular(
                                                                              10)),
                                                                      child: const Padding(
                                                                          padding: EdgeInsets.all(
                                                                              8.0),
                                                                          child: Text(
                                                                              'Declined',
                                                                              style: TextStyle(fontSize: 13, color: colorgray)))),
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
                                                                GestureDetector(
                                                                  onTap: () => transatiocontro
                                                                      .pendingUpdate(
                                                                          !transatiocontro
                                                                              .pending),
                                                                  child: Container(
                                                                      decoration: BoxDecoration(color: transatiocontro.pending ? const Color.fromARGB(88, 33, 149, 243) : colorWhite, borderRadius: BorderRadius.circular(10)),
                                                                      child: const Padding(
                                                                        padding:
                                                                            EdgeInsets.all(8.0),
                                                                        child:
                                                                            Text(
                                                                          'Pending',
                                                                          style: TextStyle(
                                                                              fontSize: 13,
                                                                              color: colorgray),
                                                                        ),
                                                                      )),
                                                                ),
                                                                const SizedBox(
                                                                  width: 10,
                                                                ),
                                                                GestureDetector(
                                                                  onTap: () => transatiocontro
                                                                      .revertedUpdate(
                                                                          !transatiocontro
                                                                              .reverted),
                                                                  child: Container(
                                                                      decoration: BoxDecoration(
                                                                          color: transatiocontro.reverted
                                                                              ? const Color.fromARGB(88, 33, 149,
                                                                                  243)
                                                                              : colorWhite,
                                                                          borderRadius: BorderRadius.circular(
                                                                              10)),
                                                                      child: const Padding(
                                                                          padding: EdgeInsets.all(
                                                                              8.0),
                                                                          child: Text(
                                                                              'Reverted',
                                                                              style: TextStyle(fontSize: 13, color: colorgray)))),
                                                                ),
                                                                const SizedBox(
                                                                  width: 10,
                                                                ),
                                                                GestureDetector(
                                                                  onTap: () => transatiocontro
                                                                      .cancelledUpdate(
                                                                          !transatiocontro
                                                                              .cancelled),
                                                                  child: Container(
                                                                      decoration: BoxDecoration(
                                                                          color: transatiocontro.cancelled
                                                                              ? const Color.fromARGB(88, 33, 149,
                                                                                  243)
                                                                              : colorWhite,
                                                                          borderRadius: BorderRadius.circular(
                                                                              10)),
                                                                      child: const Padding(
                                                                          padding: EdgeInsets.all(
                                                                              8.0),
                                                                          child: Text(
                                                                              'Cancelled',
                                                                              style: TextStyle(fontSize: 13, color: colorgray)))),
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
                                              const SizedBox(
                                                height: 25,
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(const Color
                                                                    .fromARGB(
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
                                                    child: const Text(
                                                      'Cancel',
                                                      style: TextStyle(
                                                          color: colorblue),
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(const Color
                                                                    .fromARGB(
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
                                                    onPressed: () async {
                                                      await transatiocontro
                                                          .getvalu();
                                                      Get.back();
                                                    },
                                                    child: const Text('Apply')),
                                              )
                                            ],
                                          ),
                                        ),
                                      ));
                                    },
                                    icon: const Icon(Icons.filter_list_alt))),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: transatiocontro.filteredTransactions!.isEmpty
                            ? const Center(
                                child: Text('No result found!'),
                              )
                            : ListView.builder(
                                itemCount: transatiocontro
                                    .filteredTransactions?.length,
                                itemBuilder: (context, index) {
                                  log(transatiocontro
                                      .filteredTransactions![index]
                                      .description);
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: TransationTile(
                                        amnt: transatiocontro
                                            .filteredTransactions![index]
                                            .amount,
                                        date: transatiocontro
                                            .filteredTransactions![index]
                                            .settledAt,
                                        source: transatiocontro
                                            .filteredTransactions![index]
                                            .sourceType,
                                        desce: transatiocontro
                                            .filteredTransactions![index]
                                            .description),
                                  );
                                },
                              ))
                  ])));
        }));
  }
}
