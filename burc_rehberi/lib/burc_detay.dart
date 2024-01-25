// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:burc_rehberi/main.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            centerTitle: true,
            leading: IconButton(
              icon:const Icon(
                Icons.arrow_back,
                color: Colors.white),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const MyApp()));
              },
            ),
            backgroundColor: Colors.purple,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi + " Burcu ve Özellikleri", style: const TextStyle(fontSize: 18, color:Colors.white),),
              background: Image.asset("images/" + secilenBurc.burcBuyukResim, fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetay),
              ),
            )
          )
        ],
      )
      ); 
  }
}
