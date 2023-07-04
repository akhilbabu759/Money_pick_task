import 'dart:developer';

import 'package:dio/dio.dart';
import 'dart:async';

Future<String> getAuthToken() async {
  log('jj');
  Dio dio = Dio();
  

    
  

  try {
    Response response = await dio.post(data: {"email": "marloneobankdemo@gmail.com",
    "password": "Marlo@123",
    "returnSecureToken": true},
      'https://www.googleapis.com/identitytoolkit/v3/relyingparty/verifyPassword?key=AIzaSyBFiEDfEaaK6lBtIdxLXspmxGux1TGsCmg',
    );
 
 log(response.statusCode.toString());
    // Handle the response
    // The ID token can be accessed as `response.data['idToken']`
    String idToken = response.data['idToken'];
     log('ID Token: $idToken');
    return idToken;
    // Do something with the ID token
   

  } catch (error) {
    // Handle any errors
    log('Error: $error');
  }
  return'';
}


