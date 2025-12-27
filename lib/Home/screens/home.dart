import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/const/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  int current = 0;
  late final TabController tabc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabc = TabController(length: 4, vsync: this);
  }

  void onTabTapped(int index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Image.asset("images/menu.png"),
      //   title: Expanded(
      //     child: Text(
      //       "Quran App",
      //       style: GoogleFonts.poppins(
      //         color: Appcolor.purp1,
      //         fontWeight: FontWeight.bold,
      //         fontSize: 24,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Colors.transparent,

      //   actions: [Expanded(child: textfiled("search"))],
      // ),
      backgroundColor: Appcolor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 20,
                children: [
                  Image.asset("images/menu.png"),
                  Text(
                    "Quran App",
                    style: GoogleFonts.poppins(
                      color: Appcolor.purp1,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),

                  Expanded(child: textfiled()),
                ],
              ),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,

                "Asalam aleikum",
                style: GoogleFonts.poppins(
                  color: Appcolor.purp3,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                textAlign: TextAlign.center,

                "Meriem feriel",
                style: GoogleFonts.poppins(
                  color: Appcolor.purp4,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 30),
              LastRead(),
              tab(),
              SizedBox(
                height: 400,
                child: TabBarView(
                  controller: tabc,
                  children: [
                    Placeholder(color: Colors.red),
                    Placeholder(color: Colors.red),
                    Placeholder(color: Colors.red),
                    Placeholder(color: Colors.red),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tab() {
    return TabBar(
      controller: tabc,
      tabs: [
        Tab(text: "Surah"),
        Tab(text: "Ayah"),
        Tab(text: "Juz"),
        Tab(text: "Salat"),
      ],
    );
  }
}

Widget LastRead() {
  return Container(
    decoration: BoxDecoration(
      color: Appcolor.grey,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    height: 128,
    width: 400,
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 7),
                Image.asset("images/last.png"),
                Text(
                  "  Last Read",
                  style: GoogleFonts.poppins(
                    color: Appcolor.purp1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "AL fatiha",
              style: GoogleFonts.poppins(
                color: Appcolor.purp4,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Ayah no.1",
              style: GoogleFonts.poppins(
                color: Appcolor.purp1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(width: 170),
        Image.asset("images/mushaf.png"),
      ],
    ),
  );
}

Widget textfiled() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 1),
    child: TextField(
      style: GoogleFonts.poppins(),
      decoration: InputDecoration(
        suffixIconColor: Appcolor.purp1,
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        isDense: true,
        // suffixIcon: Image.asset("images/search.png"),
        filled: true,
        hintStyle: GoogleFonts.poppins(color: Appcolor.purp1),
        // ignore: deprecated_member_use
        fillColor: Color(0xFFE5B6F2).withOpacity(0.2),
        // fillColor: Colors.red,
        disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    ),
  );
}
