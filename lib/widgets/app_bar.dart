import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: 20),
        child:  Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Theme.of(context).buttonColor,
            ),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage('https://www.seekpng.com/png/small/72-729869_circled-user-female-skin-type-4-icon-profile.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child:Icon(
            Icons.settings,
            color: Theme.of(context).accentColor,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
