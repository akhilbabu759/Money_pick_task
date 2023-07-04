import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:money_pick/core/const.dart';
import 'package:money_pick/screen/home/controller/home_controller.dart';
import 'package:money_pick/screen/home/service/home_service.dart';
import 'package:money_pick/screen/view_transation/view/transation_all.dart';
import 'package:money_pick/util/dio_token/dio_token.dart';

import 'widget/after_appbar_card.dart';
import 'widget/before_alltransation.dart';
import 'widget/transation_tile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final cont = Get.put(HomeController());
    cont.getvalu();
    HomeService().getTransactions();
    List<String> imge = [
      'https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1200px-Flag_of_the_United_Kingdom.svg.png',
      'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png',
      'https://www.worldatlas.com/r/w1200/img/flag/ca-flag.jpg',
      'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/800px-Flag_of_India.svg.png'
    ];
    List<String> amnt = [
      '15,256,486.00',
      '14,897,421.60',
      '12,578,455.00',
      '10,894,589.00'
    ];
    List<String> mname = [
      'British pound',
      'US dollar',
      'canadian doller',
      'india Rupes'
    ];
    List<String> clrCardName = [
      'Verify your business documents',
      'Verify your identify',
      'Open a Marlo business account',
      'Get prequalified'
    ];
    return Scaffold(bottomNavigationBar: BottomNavigationBar(selectedItemColor: Color.fromRGBO(57, 167, 213, 0.969),unselectedItemColor:Color.fromRGBO(105, 105, 105, 0.969) ,
      items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),BottomNavigationBarItem(icon: Icon(Icons.money),label: 'Loans'),BottomNavigationBarItem(icon: Icon(Icons.contrast),label: 'contracts'),BottomNavigationBarItem(icon: Icon(Icons.people),label: 'teams'),BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chats')]),
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      body:GetBuilder<HomeController>(builder: (controller) {
        return cont.apiVal!.isEmpty?Center(child: CircularProgressIndicator(),) :SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.11,
                    decoration: BoxDecoration(
                        color: Colors.amber[700],
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      'JB',
                      style: TextStyle(
                          color: colorWhite, fontWeight: FontWeight.bold),
                    )),
                  ),
                  const Icon(
                    Icons.notifications,
                    color: colorblue,
                  )
                ],
              ),
            ),
            Flexible(
              child: Container(color:Color.fromARGB(255, 246, 246, 246) ,
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: AfterAppBarCard(
                        amnt: amnt[index],
                        img: imge[index],
                        moneyname: mname[index],
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
              child: Center(
                  child: Row(
                children: [
                  Text(
                    'To do . 4',
                    style: TextStyle(
                        color: colorgray,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              )),
            ),
            Flexible(
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: BeforeAllTransationCard(
                          tex: clrCardName[index],
                          icon: iconList[index],
                          cirColor: circularAvatarColour[index],
                          gradien: listGradaint[index]),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All transations',
                    style: TextStyle(
                        color: colorgray,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  TextButton(onPressed: () {Get.to(TransationAll());}, child: Text('See all'))
                ],
              )),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  //  log(cont.apiVal![index].sourceType);
                  return TransationTile(amnt:  cont.apiVal![index].amount,date:cont.apiVal![index].settledAt ,source:cont.apiVal![index].sourceType ,desce:cont.apiVal![index].description ,);
                },
              ),
            )
          ],
        ),
      ));
      },
    ));
  }
}

