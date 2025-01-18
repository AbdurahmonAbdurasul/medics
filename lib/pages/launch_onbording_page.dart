import 'package:flutter/material.dart';
import 'package:medics/pages/onbording.dart';

class LaunchOnbordingPage extends StatefulWidget {
  const LaunchOnbordingPage({super.key});

  @override
  State<LaunchOnbordingPage> createState() => _LaunchOnbordingPageState();
}

class _LaunchOnbordingPageState extends State<LaunchOnbordingPage> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 22, left: 22, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const Onbording(),
                  ),
                ),
                child: const Text(
                  "Skip",
                  style: TextStyle(
                      color: Color(0xFFA1A8B0),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      PageView(
                        controller: pageController,
                        onPageChanged: (index) {
                          currentIndex = index;
                          setState(() {});
                        },
                        children: [
                          Stack(children: [
                            Column(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Image.asset(
                                        "assets/images/slider_one.png")),
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 16, left: 17, top: 50),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(24),
                                          topRight: Radius.circular(24),
                                        ),
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFF5F7FF),
                                              Color(0xFFFFFFFF),
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter),
                                      ),
                                      child: const Text(
                                        "Consult only with a doctor you trust",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF101623)),
                                      ),
                                    )),
                              ],
                            ),
                          ]),
                          Column(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Image.asset(
                                      "assets/images/slider_two.png")),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 16, left: 17, top: 50),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                      ),
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFF5F7FF),
                                            Color(0xFFFFFFFF),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                    ),
                                    child: const Text(
                                      "Find a lot of specialist doctors in one place",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF101623)),
                                    ),
                                  )),
                            ],
                          ),
                          Column(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Image.asset(
                                      "assets/images/slider_three.png")),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 16, left: 17, top: 50),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                      ),
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFF5F7FF),
                                            Color(0xFFFFFFFF),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                    ),
                                    child: const Text(
                                      "Get connect our Online Consultation",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF101623)),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 94,
                        right: 0,
                        left: 0,
                        child: Row(
                          children: [
                            ...List.generate(
                              3,
                              (generator) => Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(56),
                                        color: currentIndex == generator
                                            ? const Color(0xFF199A8E)
                                            : const Color(0xFF199A8E)
                                                .withOpacity(0.3)),
                                  ),
                                  const SizedBox(width: 5)
                                ],
                              ),
                            ),
                            const Spacer(),
                            IconButton.filled(
                              onPressed: () {
                                if (currentIndex == 2) {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Onbording()));
                                } else {
                                  pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.decelerate);
                                }
                              },
                              style: IconButton.styleFrom(
                                  backgroundColor: const Color(0xFF199A8E),
                                  fixedSize: const Size(56, 56)),
                              icon: const Icon(
                                Icons.arrow_forward,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
