// ignore: filFast_Foodort 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../NightCanteen_dishes.dart';

// ignore: camel_case_types
class Fast_Food extends StatelessWidget {
  const Fast_Food({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: [
        ExpansionTile(
          backgroundColor: const Color.fromARGB(255, 238, 238, 238),
          collapsedBackgroundColor: const Color.fromARGB(255, 238, 238, 238),
          tilePadding: const EdgeInsets.fromLTRB(22, 0, 220, 0),
          title: Text(
            'Fast Food',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          initiallyExpanded: true,
          children: const <Widget>[
            // ListTile(title: Text('This is tile number 1')),
            Column(
              children: [
                CheeseMOMO(),
                SizedBox(
                  height: 20,
                ),
                CheeseCornMOMO(),
                SizedBox(
                  height: 20,
                ),
                ChickenBiryani(),
                SizedBox(
                  height: 20,
                ),
                ChickenCurry(),
                SizedBox(
                  height: 20,
                ),
                KajuCurry(),
                SizedBox(
                  height: 20,
                ),
                Shahipaneer(),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ],
    ));
  }
}

// ignore: camel_case_types
class CheeseMOMO extends StatefulWidget {
  const CheeseMOMO({
    super.key,
  });

  @override
  State<CheeseMOMO> createState() => _CheeseMOMOState();
}

// ignore: camel_case_types
class _CheeseMOMOState extends State<CheeseMOMO> {
  int cheesemomo = 0;
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Veg[6],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(Veg_Price[6].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/cheesemomo.jpg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        cheesemomo++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (cheesemomo == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  cheesemomo++;

                  if (cheesemomo == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(cheesemomo.toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  cheesemomo--;
                  if (cheesemomo == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class CheeseCornMOMO extends StatefulWidget {
  const CheeseCornMOMO({
    super.key,
  });

  @override
  State<CheeseCornMOMO> createState() => _CheeseCornMOMO();
}

// ignore: camel_case_types
class _CheeseCornMOMO extends State<CheeseCornMOMO> {
  int cheesecornmomo = 0;
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Veg[7],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(Veg_Price[7].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/cheesecornmomo.jpg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        cheesecornmomo++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (cheesecornmomo == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  cheesecornmomo++;

                  if (cheesecornmomo == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(cheesecornmomo.toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  cheesecornmomo--;
                  if (cheesecornmomo == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class Shahipaneer extends StatefulWidget {
  const Shahipaneer({
    super.key,
  });

  @override
  State<Shahipaneer> createState() => _Shahipaneer();
}

// ignore: camel_case_types
class _Shahipaneer extends State<Shahipaneer> {
  // ignore: non_constant_identifier_names
  int Shahipaneer = 0;
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Veg[2],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(Veg_Price[2].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/Shahi paneer.jpg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        Shahipaneer++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (Shahipaneer == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Shahipaneer++;

                  if (Shahipaneer == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(Shahipaneer.toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  Shahipaneer--;
                  if (Shahipaneer == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class KajuCurry extends StatefulWidget {
  const KajuCurry({
    super.key,
  });

  @override
  State<KajuCurry> createState() => _KajuCurry();
}

// ignore: camel_case_types
class _KajuCurry extends State<KajuCurry> {
  int kajucurry = 0;
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Veg[3],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(Veg_Price[3].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/Kajucurry.jpg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        kajucurry++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (kajucurry == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  kajucurry++;

                  if (kajucurry == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(kajucurry.toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  kajucurry--;
                  if (kajucurry == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class ChickenBiryani extends StatefulWidget {
  const ChickenBiryani({
    super.key,
  });

  @override
  State<ChickenBiryani> createState() => _ChickenBiryani();
}

// ignore: camel_case_types
class _ChickenBiryani extends State<ChickenBiryani> {
  int chickenbiryani = 0;
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/non veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Nonveg[4],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(NonVeg_Price[4].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/Chickenbiryani.jpeg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        chickenbiryani++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (chickenbiryani == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  chickenbiryani++;

                  if (chickenbiryani == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(chickenbiryani.toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  chickenbiryani--;
                  if (chickenbiryani == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class ChickenCurry extends StatefulWidget {
  const ChickenCurry({
    super.key,
  });

  @override
  State<ChickenCurry> createState() => _ChickenCurry();
}

// ignore: camel_case_types
class _ChickenCurry extends State<ChickenCurry> {
  int chickencurry = 0;
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/non veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Nonveg[3],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(NonVeg_Price[3].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/chickencurry.jpg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        chickencurry++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (chickencurry == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  chickencurry++;

                  if (chickencurry == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(
              chickencurry.toString(),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  chickencurry--;
                  if (chickencurry == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}
