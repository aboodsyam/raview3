import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raview3/widget/w_1.dart';
import 'package:raview3/widget/w_2.dart';

class Lancer2 extends StatefulWidget {
  const Lancer2({super.key});

  @override
  State<Lancer2> createState() => _Lancer2State();
}

class _Lancer2State extends State<Lancer2> {
  late PageController _PageController;
  int CurrenPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _PageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _PageController = PageController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: CurrenPage < 2,
                replacement: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LogenScaeern3');
                  },
                  child: const Text('START'),
                ),
                child: TextButton(

                    ///(استخدمها عندما اريد ان ان انتقل من التخطي مباشرة الى الواجهة الرئيسية..)
                    onPressed: () {
                      _PageController.animateToPage(2,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeOutSine);
                    },
                    child: Text(
                      'SKIP',
                      style: GoogleFonts.abel(
                        fontSize: 16,
                      ),
                    )),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _PageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int AS) {
                  setState(() {
                    CurrenPage = AS;
                  });
                },
                children: const [
                  widget_1(image: 'img', title: 'Walcoem!'),
                  widget_1(image: 'img_1', title: 'How the many?'),
                  widget_1(image: 'img_2', title: 'can you pay..?')
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget_2(isCorrn: CurrenPage == 0),
                widget_2(isCorrn: CurrenPage == 1),
                widget_2(isCorrn: CurrenPage == 2),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    _PageController.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOutBack,
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                IconButton(
                    onPressed: () {
                      _PageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOut);
                    },
                    icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Visibility(
              visible: CurrenPage == 2,
              maintainState: true,
              maintainSize: true,
              maintainAnimation: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFFB7B7),
                        Color(0xffBC7AF9),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/LogenScaeern3');
                    },
                    child: const Text('STRAT'),
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
