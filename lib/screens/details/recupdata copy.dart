import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frstflutterproject/model/product.dart';
import 'package:frstflutterproject/res/app_icons.dart';
import 'package:frstflutterproject/screens/details/product_bloc.dart';
import 'package:frstflutterproject/screens/details/tabs/details_info.dart';
import 'package:frstflutterproject/screens/details/tabs/details_nutrition.dart';
import 'package:frstflutterproject/screens/details/tabs/details_nutritional_values.dart';
import 'package:frstflutterproject/screens/details/tabs/details_summary.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
import 'package:frstflutterproject/screens/details/screen_details.dart';
//<!-- Required to fetch data from the internet. -->
// <uses-permission android:name="android.permission.INTERNET" />
//https://docs.flutter.dev/cookbook/networking/fetch-data#1-add-the-http-package

//This recipe covers how to fetch a sample album from the JSONPlaceholder using the http.get() method. The http.get() method returns a Future that contains a Response.
Future<http.Response> fetchNetworkManager() {
  return http.get(Uri.parse('https://api.formation-android.fr/v2/getProduct?barcode=5000159484695'));

}

class NetworkManager {
  final int codebarres;
  final String name;
  final String brands;
  final String altName;
  final String nutriScore;
  final novaScore;
  final ecoScore;
  final quantity;
  final manifacturingCountries;
  final picture 

  const NetworkManager({
    required this.codebarres,
    required this.name,
    required this.brands,

  });

  factory NetworkManager.fromJson(Map<String, dynamic> json) {
    return NetworkManager(
      codebarres: json['codebarres'],
      name: json['name'],
      brands: json['brands'],
      altName: json['altName'],
      nutriScore: json['nutriScore'],
      novaScore: json['novaScore'],
      ecoScore: json['ecoScore'],
      quantity: json['quantity'],
      manufacturingCountries: json['manufacturingCountries'],
      picture: json['picture']
    );
  }
}

barcode: '123456789',
          name: 'Petits pois et carottes',
          brands: ['Cassegrain'],
          altName: 'Petits pois & carottes à l\'étuvée avec garniture',
          nutriScore: ProductNutriscore.A,
          novaScore: ProductNovaScore.group1,
          ecoScore: ProductEcoScore.D,
          quantity: '200g (égoutté 130g)',
          manufacturingCountries: ['France'],
          picture:
              'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1610&q=80',