import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:station_service_mobile/tools/const/const.dart';
import 'package:station_service_mobile/tools/widgets/c_button.dart';
import 'package:station_service_mobile/tools/widgets/c_textform_field.dart';

class PhoneAuth extends StatelessWidget {
  const PhoneAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Authentification"),
      ),
      bottomNavigationBar: Container(
          height: 80,
          padding: const EdgeInsets.all(10),
          child: Center(
              child: Text(
                  "Le lorem ipsum est, en imprimerie, une suite de mots sans"))),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 30),
          const Text(
            "Le lorem ipsum est, en imprimerie, une suite de mots sans  "
            "à titre provisoire pour calibrer une mise en page, le texte d",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          CTextFormField(
            prefixIcon: Container(
              margin: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Const.primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(Icons.phone, color: Colors.white),
            ),
            keyboardType: TextInputType.phone,
            hintText: "Numéro de téléphone",
          ),
          const SizedBox(height: 10),
          CButton(
            onPressed: () {},
            child: const Text("Envoyer"),
          )
        ],
      ),
    );
  }
}
