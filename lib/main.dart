import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:finance_buddie/screens/login_screen.dart';
import 'package:finance_buddie/provider/login_provider.dart';

// Main entry point
void main() {
  runApp(const FinanceBuddyApp());
}

class FinanceBuddyApp extends StatelessWidget {
  const FinanceBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const LoginScreen(),
      ),
    );
  }
}
