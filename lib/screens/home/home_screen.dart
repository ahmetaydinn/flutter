import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/svg.dart';

import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              "15/2 New Texas",
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
            ),
            const Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            CategoryCard(
              icon: "assets/icons/dress.svg",
              title: "Dress",
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultBorderRadius),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding / 4, horizontal: defaultPadding / 2),
          child: Column(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ));
  }
}
