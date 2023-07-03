import 'package:flutter/material.dart';

class BeforeAllTransationCard extends StatelessWidget {
  const BeforeAllTransationCard({
    super.key,required this.gradien,required this.cirColor,required this.icon,required this.tex,
  });
 final LinearGradient gradien;
final Color cirColor;
final Icon icon;
final String tex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.38,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          gradient: gradien),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        CircleAvatar(
          backgroundColor:cirColor ,
          child: icon,
        ),Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8),
          child: Text(tex,overflow: TextOverflow.ellipsis,maxLines: 2,textAlign: TextAlign.center),
        )
      ]),
    );
  }
}
