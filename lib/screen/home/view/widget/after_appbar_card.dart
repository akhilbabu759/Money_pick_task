import 'package:flutter/material.dart';
import 'package:money_pick/core/const.dart';

class AfterAppBarCard extends StatelessWidget {
  const AfterAppBarCard({
    super.key,required this.img,required this.amnt,required this.moneyname
  });
 final String img;
final String amnt;
final String  moneyname;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.184,
      width: MediaQuery.of(context).size.width * 0.41,
      decoration: BoxDecoration(color: colorWhite,
           borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(backgroundImage: NetworkImage(img),
                radius: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(amnt,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 12,
              ),
              Text(moneyname,style: const TextStyle(fontSize: 16,color:colorgray ))
            ]),
      ),
    );
  }
}
