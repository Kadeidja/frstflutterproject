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
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:frstflutterproject/screens/details/screen_details.dart';


class NetworkManager {
  static networkManagerMethod.String(codebarres){
    return Product(barcode: barcode);
  }
}
Future<NetworkManager> fetchNetworkManager() async {
  final response = await http
      .get(Uri.parse('https://api.formation-android.fr/v2/getProduct/'));
}
 if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

