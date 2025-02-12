import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/widgets/custom_category_item.dart';
import 'package:medics/widgets/custom_textff_search.dart';

class FindDoctorsPage extends StatelessWidget {
  const FindDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text(
          "Find Doctors",
          style: TextStyle(
              color: Color(0xFF101623),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.chevron_left,
            size: 30,
            color: Color(0xFF101623),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextFFSearch(
              hintText: "Find a doctor",
              borderColor: Color(0xFFE5E7EB),
              hintColor: Color(0xFFA1A8B0),
              fillColor: Color(0xFFF9FAFB),
            ),
            const SizedBox(height: 30),
            const Text(
              "Category",
              style: TextStyle(
                  color: Color(0xFF101623),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                CustomCategoryItem(
                    function: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FindDoctorsPage(),
                          ),
                        ),
                    icon: "assets/icons/doctor.svg",
                    title: "General"),
                CustomCategoryItem(
                  function: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FindDoctorsPage(),
                    ),
                  ),
                  icon: "assets/icons/lungs.svg",
                  title: "Lungs Specialist",
                  flex: 2,
                ),
                CustomCategoryItem(
                    function: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FindDoctorsPage(),
                          ),
                        ),
                    icon: "assets/icons/dentist.svg",
                    title: "Dentist"),
                CustomCategoryItem(
                    function: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FindDoctorsPage(),
                          ),
                        ),
                    icon: "assets/icons/psychiatrist.svg",
                    title: "Psychiatrist"),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                CustomCategoryItem(
                    function: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FindDoctorsPage(),
                          ),
                        ),
                    icon: "assets/icons/covid.svg",
                    title: "Covid-19"),
                CustomCategoryItem(
                  function: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FindDoctorsPage(),
                    ),
                  ),
                  icon: "assets/icons/syringe.svg",
                  title: "Surgeon",
                ),
                CustomCategoryItem(
                    function: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FindDoctorsPage(),
                          ),
                        ),
                    icon: "assets/icons/cardiologist.svg",
                    title: "Cardiologist"),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              "Recommended Doctors",
              style: TextStyle(
                  color: Color(0xFF101623),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 26, right: 10),
              width: double.infinity,
              height: 130,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFFE8F3F1),
                    width: 1,
                  )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 44,
                    backgroundImage: AssetImage("assets/images/cedric.png"),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Dr. Marcus Horizon",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF101623)),
                      ),
                      const Text(
                        "Cardiologist",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFADADAD)),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 1,
                        color: const Color(0xFFE8F3F1),
                        width: 180,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Stack(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/star_rectangle.svg",
                                width: 42,
                                height: 20,
                              ),
                              Positioned(
                                top: 4,
                                left: 4,
                                child: SvgPicture.asset(
                                  "assets/icons/star.svg",
                                  width: 13,
                                  height: 13,
                                ),
                              ),
                              const Positioned(
                                  top: 1.5,
                                  right: 2,
                                  child: const Text(
                                    "4,7",
                                    style: TextStyle(
                                        color: Color(0xFF199A8E),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ))
                            ],
                          ),
                          const SizedBox(width: 18),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/location.svg",
                                width: 13,
                                height: 13,
                                color: const Color(0xFF3B4453),
                              ),
                              const Text(
                                "800m away",
                                style: TextStyle(
                                    color: Color(0xFF3B4453),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
            const Text(
              "Your Recent Doctors",
              style: TextStyle(
                  color: Color(0xFF101623),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return const Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage("assets/images/cedric.png"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Dr. Marcus ",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF3B4453)),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 24);
                  },
                  itemCount: 12),
            )
          ],
        ),
      ),
    );
  }
}
