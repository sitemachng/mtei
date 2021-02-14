import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtei/ui/core/app_config.dart';

class UserProvider extends ChangeNotifier {
  String _gender = 'male';
  String _date = 'Select date of birth';
  String _localEndPoint = AppConfig.app_base_url;

  String get gender => _gender;
  String get date => _date;

  set gender(String newVal) {
    _gender = newVal;
    notifyListeners();
  }
  set date(String value) {
    _date = value;
    notifyListeners();
  }

  Future<bool> signUpInit() async {
    try{
      bool retVal = false;
      await Future.delayed(Duration(seconds: 3), (){
        retVal = true;
      });
      return retVal;
    }catch(e){
      print(e);
      return false;
    }
  }

  Future<bool> signUp({
    @required String firstName,
    @required String lastName,
    @required String gender,
    @required String dob,
    @required String address,
    String email,
    String password,
    String countryName,
    String stateName,
    dynamic phoneNumber,
    String bvn
  }) async {
    try{
      bool retVal = false;
      final dio = Dio();
      dio.options.headers = {
        'Content-Type': 'application/json',
        // HttpHeaders.authorizationHeader: "Bearer ${prefs.getString('token')}",
      };
      final formData = FormData.fromMap(
          {
            "firstname": firstName,
            "lastname": lastName,
            "email": email,
            "password": password,
            "phone": phoneNumber,
            "bvn": bvn,
            "country": "Nigeria",
            "state": "Kwara State",
            "gender": gender,
            "dateofbirth": dob,
            "address": address
          }
      );
      final response = await dio.post(
          _localEndPoint + 'auth/accounts/register',
          data: formData
      );
      // final ret = json.decode(response.data);
      print(response.data);
      print(response.statusCode);
      if(response.statusCode == 200) {
        retVal = true;
      }
      return retVal;
    }catch(e){
      print(e);
      return false;
    }
  }

  Future sinIn({@required String email, @required String password}) async {
    try{
      bool retVal = false;
      final dio = Dio();
      dio.options.headers = {
        'Content-Type': 'application/json',
      };
      final formData = FormData.fromMap({
        'email': email,
        'password': password
      });
      final response = await dio.post(
          _localEndPoint + 'auth/accounts/login',
          data: formData
      );
      final ret = response.data;
      print(response.data);
      print(response.statusCode);
      return ret;
    } catch(e) {
      print(e);
      return false;
    }
  }
}