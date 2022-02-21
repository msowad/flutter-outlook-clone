import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outlook_clone/components/side_menu_item.dart';
import 'package:outlook_clone/utils/constants.dart';
import 'package:outlook_clone/utils/extensions.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kBgLightColor,
      child: Column(
        children: [
          Image.asset(
            "assets/images/Logo Outlook.png",
            width: 46,
          ),
          const SizedBox(height: kDefaultPadding),
          const TextIconButton(
            text: 'New Message',
            svgSrc: 'assets/icons/Edit.svg',
          ),
          const SizedBox(height: kDefaultPadding),
          const TextIconButton(
            text: 'Get Messages',
            svgSrc: 'assets/icons/Download.svg',
            secondary: true,
          ),
          const SizedBox(height: kDefaultPadding * 2),
          SideMenuItem(
            press: () {},
            title: "Inbox",
            iconSrc: "assets/Icons/Inbox.svg",
            isActive: true,
            itemCount: 3,
          ),
        ],
      ),
    );
  }
}

class TextIconButton extends StatelessWidget {
  const TextIconButton({
    Key? key,
    required this.text,
    required this.svgSrc,
    this.secondary = false,
  }) : super(key: key);

  final String text, svgSrc;
  final bool secondary;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: secondary ? kBgDarkColor : kPrimaryColor,
        primary: secondary ? kPrimaryColor : Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 1.5,
          vertical: kDefaultPadding,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      icon: SvgPicture.asset(
        svgSrc,
        width: 16,
        color: secondary ? kTitleTextColor : Colors.white,
      ),
      label: Text(
        text,
        style: TextStyle(
          color: secondary ? kTitleTextColor : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ).addNeumorphism(
      topShadowColor: secondary ? Colors.white60 : Colors.black12,
      bottomShadowColor: secondary
          ? const Color(0x26234395)
          : const Color(0xFF234395).withOpacity(0.3),
    );
  }
}
