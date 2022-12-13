import 'package:daily_exercises_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  const CategoryCard({
    Key? key, required this.svgSrc, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -23,
            color: kShadowColor,
          )
        ]
      ),
      child: Material(
        child: InkWell(
          child: Column(
            children: [
              const Spacer(),
              SvgPicture.asset(svgSrc),
              const Spacer(),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}