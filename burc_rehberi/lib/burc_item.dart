// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      BurcDetay(secilenBurc: listelenenBurc)));
            },
            leading: Image.asset("images/" + listelenenBurc.burcKucukResim),
            title: Text(
              listelenenBurc.burcAdi,
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              listelenenBurc.burcTarih,
              style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            iconColor: Colors.purple[300],
          ),
        ),
      ),
    );
  }
}
