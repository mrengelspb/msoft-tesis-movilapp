import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      builder: (context, controller, child) => IconButton(
        onPressed: () {
          if (controller.isOpen) {
            controller.close();
          } else {
            controller.open();
          }
        },
        icon: const Icon(Icons.account_circle),
      ),
      menuChildren: [
        MenuItemButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Cerra sesión"),
        ),
      ],
    );
  }
}
