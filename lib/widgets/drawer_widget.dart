import 'package:flutter/material.dart';
import 'package:merceria_fat/routes/app_routes.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DraerWidgetState();
}

class _DraerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Color(0xFF3BAEBF)
                ),
                child:null,
              ),
              SizedBox(
                height: 500.0,
                child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  title: Text(AppRoutes.menuOptions[index].label),
                  leading: Icon(AppRoutes.menuOptions[index].icon),
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);}
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: AppRoutes.countMenuOptions,
              ),
              )
            ],
          ),
        );
  }
}