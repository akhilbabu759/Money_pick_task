import 'package:flutter/material.dart';
import 'package:money_pick/core/const.dart';

class TransationTile extends StatelessWidget {
  const TransationTile({
    super.key,required this.amnt,
    required this.date,required this.source,required this.desce
  });
  final String amnt;
  final String date;
  final String source;
  final String desce;

  @override
  Widget build(BuildContext context) {
    List<String> mnth=['jan','feb','mar','may','jun','jul','aug','sep','oct','nov','dec'];
  
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(color: colorWhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
              Row(
                children: [
                  Container(height: 45,width: 46,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 20, 68, 91)),child: const Icon(Icons.arrow_outward_sharp,color: colorWhite,),),
                  const SizedBox(width: 10,),Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(desce,style: const TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),const SizedBox(height: 5),Text('${date.substring(8,10)}.${mnth[int.parse(date.substring(5,7))-1]}.${int.parse(date.substring(11,13))>12?int.parse(date.substring(11,13))-12:date.substring(11,13)}${date.substring(13,16)}.${int.parse(date.substring(11,13))>12?'pm':'am'}')],)
                ],
              )
                                     ,
              Text('${source.contains('DEPOSIT') ||source.contains('TRANSFER')||source.contains('REFUND')?'+':'-'}\$$amnt',style: TextStyle(color: source.contains('DEPOSIT') ||source.contains('TRANSFER')||source.contains('REFUND')?Colors.green:Colors.black),)
                                    ],
                                  ),
            )),
      ),
    );
  }
}
