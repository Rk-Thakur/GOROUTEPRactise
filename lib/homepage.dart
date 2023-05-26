import 'package:application/constants/api_constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    _initializePage();
  }

  bool isLoading = true;
  bool error = false;
  dynamic drink;
  void _initializePage() async {
    var response = await ApiConstants().getCocktail();
    response.fold((l) {
      setState(() {
        isLoading = false;
        drink = response;
      });
    }, (r) {
      setState(() {
        error = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.red,
              )
            : Column(
                children: [
                  Text(drink['strDrink'] ?? 'testing'),
                  Text(drink['strInstructions'] ?? ' body'),
                ],
              ),
      ),
    );
  }
}
