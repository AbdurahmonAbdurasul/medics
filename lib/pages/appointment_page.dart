import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medics/pages/chat_page.dart';
import 'package:medics/widgets/custom_doctor_widget.dart';
import 'package:medics/widgets/custom_button_widget.dart';
import 'package:medics/functions/app_dialogs.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text(
          "Doctor Detail",
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
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 33, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDoctorWidget(),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date",
                  style: TextStyle(
                      color: Color(0xFF101623),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Change",
                  style: TextStyle(
                      color: Color(0xFFADADAD),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                    width: 36,
                    height: 36,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFE8F3F1)),
                    child: SvgPicture.asset(
                      "assets/icons/calendar.svg",
                      color: const Color(0xFF199A8E),
                    )),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Wednesday, Jun 23, 2021 | 10:00 AM",
                  style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFFE8F3F1),
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Reason",
                  style: TextStyle(
                      color: Color(0xFF101623),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Change",
                  style: TextStyle(
                      color: Color(0xFFADADAD),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFE8F3F1)),
                  child: SvgPicture.asset(
                    "assets/icons/edit_square.svg",
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Chest pain",
                  style: TextStyle(
                      color: Color(0xFF101623),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFFE8F3F1),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Payment Detail",
              style: TextStyle(
                  color: Color(0xFF101623),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 14,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Consultation",
                  style: TextStyle(
                      color: Color(0xFFA1A8B0),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "\$60.00",
                  style: TextStyle(
                      color: Color(0xFF101623),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Admin Fee",
                  style: TextStyle(
                      color: Color(0xFFA1A8B0),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "\$01.00",
                  style: TextStyle(
                      color: Color(0xFF101623),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Additional Discount",
                  style: TextStyle(
                      color: Color(0xFFA1A8B0),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "-",
                  style: TextStyle(
                      color: Color(0xFF101623),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      color: Color(0xFF101623),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "\$61.00",
                  style: TextStyle(
                      color: Color(0xFF199A8E),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFFE8F3F1),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Payment Method",
              style: TextStyle(
                  color: Color(0xFF101623),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 14,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xFFE8F3F1), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xFFE8F3F1), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Color(0xFFE8F3F1), width: 1),
                  ),
                  prefixIcon: SvgPicture.asset("assets/icons/visa.svg"),
                  suffixIcon: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Change",
                        style: TextStyle(
                            color: Color(0xFFADADAD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ))),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          color: Color(0xFFA1A8B0),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$61.00",
                      style: TextStyle(
                          color: Color(0xFF101623),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                    width: 192,
                    height: 50,
                    child: CustomButtonWidget(
                        title: "Booking",
                        onTap: () => AppDialogs.showSuccesDialog(
                            context,
                            "Payment Success",
                            "Your payment has been successful, you can have a consultation session with your trusted doctor",
                            "Chat Doctor",
                            () => Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ChatPage())))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
