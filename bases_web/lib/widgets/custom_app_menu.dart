import 'package:bases_web/widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
              text: 'Contador Stateful', color: Colors.black, onPressed: () => _navigator(context, 'stateful')),
          CustomFlatButton(
              text: 'Contador Provider', color: Colors.black, onPressed: () => _navigator(context, 'provider')),
          CustomFlatButton(text: 'Otra página', color: Colors.black, onPressed: () => _navigator(context, 'page')),
        ],
      ),
    );
  }

  _navigator(BuildContext context, String ruta) {
    Navigator.pushNamed(context, '/$ruta');
  }
}
