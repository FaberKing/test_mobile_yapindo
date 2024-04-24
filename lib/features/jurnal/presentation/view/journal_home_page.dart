import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class JournalHomePage extends StatelessWidget {
  const JournalHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          header(context),
          body(context),
        ],
      ),
    );
  }

  Container header(BuildContext context) {
    return Container(
      height: 258,
      // padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF01A695), Color(0xFF87FFF2)],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Stack(
        // fit: StackFit.,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 20,
                  // left: 16,
                  // right: 16,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 290,
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                              isDense: true,
                              hintStyle: const TextStyle(color: Colors.black38),
                              hintText: 'Search',
                              contentPadding: const EdgeInsets.only(
                                top: 10,
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: const Icon(
                                Icons.search,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Badge(
                            isLabelVisible: true,
                            label: Text('1'),
                            child: Icon(
                              Icons.notifications_outlined,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 165,
            left: 76,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Temukan Jurnalmu',
                  style: TextStyle(color: Color(0xFFFF8844), fontWeight: FontWeight.bold),
                ),
                Text(
                  'Dapatkan akses eksklusif untuk jurnal \nkesehatan terbaru dan terlengkap \ndari sumber terpercaya.',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.white70,
                      ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 266,
            top: 144,
            child: Image.asset(
              "assets/ellipse.png",
              width: 159,
              height: 160,
            ),
          ),
          Positioned(
            left: 290,
            top: 104,
            child: Image.asset(
              "assets/person.png",
              width: 114,
              height: 177,
            ),
          ),
          Positioned(
            left: -30,
            top: 140,
            child: Image.asset(
              "assets/agash.png",
              width: 114,
              height: 177,
            ),
          ),
        ],
      ),
    );
  }

  body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => journalItem(context),
            itemCount: 3,
          ),
        ],
      ),
    );
  }

  journalItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 1,
          ),
        ),
        height: 164,
        child: Padding(
          padding: const EdgeInsets.only(top: 12, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFFFF8844),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Text(
                    'MAJALAH FARMASI DAN FARMAKOLOGI',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'ANALISIS FARMAKOEKONOMI PENGGUNAAN AMLODIPIN, KOMBINASI AMLODIPIN/VALSARTAN, DAN KOMBINASI AMLODIPIN/TELMISARTAN ',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                maxLines: 2,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      // color: const Color(0xFFFF8844),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF7C4CAC),
                          Color(0xFF3283FD),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Kata Kunci',
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
