import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PkmnAppBar extends StatelessWidget {
  Widget? title;
  PkmnAppBar({Key? key, this.title}) : super(key: key);
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: title,
      actions: [
        GestureDetector(
          child: Icon(Icons.message),
          onTap: () => GoRouter.of(context).go('/chat'),
        )
      ],
    );
  }
}
