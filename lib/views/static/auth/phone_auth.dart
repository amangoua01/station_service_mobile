import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';
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
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 10),
          Lottie.asset("assets/lotties/86866-payment.json", height: 180),
          const SizedBox(height: 30),
          const Text(
            "Achetez du carburant et des produits de station-service "
            "en quelques clics grâce à notre application de e-vente "
            "pratique et sécurisée.",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          const CTextFormField(
            prefixIcon: Icon(Icons.phone_android),
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
