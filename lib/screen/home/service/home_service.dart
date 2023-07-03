import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:money_pick/common/api.dart';
import 'package:money_pick/screen/home/model/transation_model.dart';
import 'package:money_pick/util/dio_token/dio_token.dart';

class HomeService {
  Future<List<TransactionData>?> getTransactions() async {
    String? token = await getAuthToken();

    if (token == null) {
      log('Authentication token is null');
      return null;
    }

    Dio dio = Dio();
    dio.options.headers = {'authtoken': token};

    try {
      Response response = await dio.get(ApiUrl().getTransation);
      log('Response received');
      log(response.data.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        // final List<dynamic> transactionsData = response.data['data'];
        // final List<TransactionModel> transactions = transactionsData
        //     .map((transaction) => TransactionModel.fromJson(transaction))
        //     .toList();
 final List<TransactionData> transactions = List<TransactionData>.from(
          response.data['data'].map((x) => TransactionData.fromJson(x)),
        );
         log('Number of transactions: ${transactions.length}');
        return transactions;
      } else {
        log('Error: ${response.statusCode}');
        return null;
      }
    } on DioException catch (e) {
      log('DioError: ${e.message}');
    } catch (e) {
      log('Error: $e');
    }

    return null;
  }
}
