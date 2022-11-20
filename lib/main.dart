import 'package:flutter/cupertino.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marriage/marriage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? tokens = prefs.getString('token');

  runApp(
    Phoenix(
      child: ProviderScope(
        child: Marriage(token: tokens),
      ),
    ),
  );
}
