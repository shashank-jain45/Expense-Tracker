import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transaction_2/Screens/add_trans_page.dart';
import 'package:transaction_2/Widgets/add_transaction.dart';
import 'package:transaction_2/Widgets/transaction_list.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({ super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        shape: const RoundedRectangleBorder(
            borderRadius:
                BorderRadius.vertical(bottom: Radius.elliptical(10, 10))),
        backgroundColor: Colors.green,
        elevation: 5,
        title: const Text("Expense Tracker",
            style: TextStyle(fontFamily: 'AmaticSC')),
      ),
      body: ListView(
        children: [
          const Text('Chart', style: TextStyle(fontFamily: 'AmaticSC')),
          const SizedBox(height: 396),
          //const AddTransaction(),
          ElevatedButton(
              onPressed: (() {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => const AddTransactionPage(),
                  ),
                );
              }),
              
              child: const Icon(Icons.add)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'Recent Transactions',
              style: GoogleFonts.notoSerif(
                  fontSize: 20, fontWeight: FontWeight.bold)
              //TextStyle(fontSize: 25, fontWeight: FontWeight.bold,)
              ,
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          const TransactionList(),
          //TransactionCard()
        ],
      ),
    );
  }
}