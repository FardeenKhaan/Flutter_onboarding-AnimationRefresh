import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomeScreen02 extends StatefulWidget {
  const HomeScreen02({super.key});

  @override
  State<HomeScreen02> createState() => _HomeScreen02State();
}

class _HomeScreen02State extends State<HomeScreen02> {
  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Liquid Pull To Refresh',
          style: GoogleFonts.aboreto(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: LiquidPullToRefresh(
        color: Colors.grey.shade800,
        height: 300,
        backgroundColor: Colors.black,
        onRefresh: _handleRefresh,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 300,
                    color: Colors.black,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
