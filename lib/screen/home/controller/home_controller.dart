import 'dart:developer';

import 'package:get/get.dart';
import 'package:money_pick/screen/home/model/transation_model.dart';
import 'package:money_pick/screen/home/service/home_service.dart';

class HomeController extends GetxController{
  List<TransactionData>? apiVal=[];
  void getvalu()async{
    await HomeService().getTransactions().then( (value) {
      apiVal=value;
      update();
      
    });
    log(apiVal![0].status);

  }
}