import 'dart:developer';

import 'package:get/get.dart';

import 'package:money_pick/screen/home/model/transation_model.dart';
import 'package:money_pick/screen/home/service/home_service.dart';

class TransationController extends GetxController {

  bool monIn = false;
  bool monOut = false;
  bool completed = false;
  bool failed = false;
  bool declained = false;
  bool pending = false;
  bool reverted = false;
  bool cancelled = false;
   List<TransactionData>? filteredTransactions=[];
  List<TransactionData>? transactionsval = [];
  

  final keywordsMOney = [
      
    ];
    final keywordStatus = [
      
    ];
    Future<void> getvalu()async{
    await HomeService().getTransactions().then( (value) {
      transactionsval=value;
      update();
      
      
    });
    update();
    filterfun();

  }
  void monInUpdate(bool val) {
    monIn = val;
    update();
   val? keywordsMOney.addAll(['DEPOSIT','TRANSFER','REFUND']):keywordsMOney.removeWhere((item) => ['DEPOSIT','TRANSFER','REFUND'].contains(item));
    update();
     log(val.toString(),name: 'moniup');  
    //  log(keywordsMOney[0]);
     update();
  }

  void monOutUpdate(bool val) {
    monOut = val;
    update();
    val? keywordsMOney.addAll(['PAYOUT', 'CHARGE', 'PAYMENT_ATTEMPT', 'FEE']):keywordsMOney.removeWhere((item) => ['PAYOUT', 'CHARGE', 'PAYMENT_ATTEMPT', 'FEE'].contains(item));
    update();
     log(val.toString(),name: 'moniup');  
    //  log(keywordsMOney[0]);
     update();
  }

  void completedUpdate(bool val) {
    completed = val;
    update();
    val? keywordStatus.addAll(['SETTLED']):keywordStatus.removeWhere((item) => ['SETTLED'].contains(item));
    update();
     log(val.toString(),name: 'moniup');  
    //  log(keywordsMOney[0]);
     update();
  }

  void failedUpdate(bool val) {
    failed = val;
    update();
    
  }

  void declainedUpdate(bool val) {
    declained = val;
    update();
  }

  void pendingUpdate(bool val) {
    pending = val;
    update();
    val? keywordStatus.addAll(['PENDING']):keywordStatus.removeWhere((item) => ['PENDING'].contains(item));
    update();
     log(val.toString(),name: 'moniup');  
    //  log(keywordsMOney[0]);
     update();
  }

  void revertedUpdate(bool val) {
    reverted = val;
    update();
  }

  void cancelledUpdate(bool val) {
    cancelled = val;
    update();
    val? keywordStatus.addAll(['CANCELLED']):keywordStatus.removeWhere((item) => ['CANCELLED'].contains(item));
    update();
     log(val.toString(),name: 'moniup');  
    //  log(keywordsMOney[0]);
     update();
  }

  
  void filterfun(){
    
    filteredTransactions!.clear();
    // filteredTransactions=transactionsval;
    
   log(keywordsMOney.isEmpty.toString(),name: 'ghjghj');
   filteredTransactions = keywordsMOney.isEmpty?transactionsval: transactionsval!.where((transaction) {
    

    return  keywordsMOney
        .any((keyword) => transaction.sourceType.contains(keyword));
  }).toList();
  update();
  filteredTransactions = keywordStatus.isEmpty?filteredTransactions: filteredTransactions!.where((transaction) {
    

    return  keywordStatus
        .any((keyword) => transaction.status.contains(keyword));
  }).toList();
  update();
  log(filteredTransactions!.length.toString());
  update();}
}
