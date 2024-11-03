
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_const.dart';
import '../../translation/app_locale.dart';
import '../../widgets/BottomQuote.dart';
import '../../widgets/appBar_Custom.dart';
import 'logic.dart';

class AttendencePage extends StatefulWidget {
  AttendencePage({Key? key}) : super(key: key);

  @override
  _AttendencePageState createState() => _AttendencePageState();
}

class _AttendencePageState extends State<AttendencePage> {
  final logic = Get.find<AttendenceLogic>();
  final state = Get.find<AttendenceLogic>().state;
  Color _textColor = Colors.black;

  DateTime _startDate = DateTime(DateTime.now().year, DateTime.now().month, 1);
  DateTime _endDate =
      DateTime(DateTime.now().year, DateTime.now().month + 1, 0);

  // DateTime(now.year, now.month + 1, 0);

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: isStartDate ? _startDate : _endDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        if (isStartDate) {
          _startDate = pickedDate;
        } else {
          _endDate = pickedDate;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: AppColor.primary,
              width: Get.width,
              height: Get.height,
              child: GetBuilder<AttendenceLogic>(builder: (logic) {
                return Column(
                  children: [
                    // Existing widgets
                    Column(
                      children: [
                        const appBarCustom(),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Start Date button
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => _selectDate(context, true),
                                      child: SizedBox(
                                        width: 170,
                                        height: 33,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "${_startDate.toLocal()}"
                                                      .split(' ')[0],
                                                  style: const TextStyle(
                                                      color: Color(0xFF0367A6),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: "Battambang",),
                                                ),
                                                const Icon(
                                                  Icons.calendar_month_outlined,
                                                  size: 18.0,
                                                  color: Color(0xFF0367A6),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  // End Date button
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => _selectDate(context, false),
                                      child: SizedBox(
                                        child: Container(
                                          height: 33,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "${_endDate.toLocal()}"
                                                      .split(' ')[0],
                                                  style: const TextStyle(
                                                      color: Color(0xFF0367A6),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: "Battambang",),
                                                ),
                                                const Icon(
                                                  Icons.calendar_month_outlined,
                                                  size: 18.0,
                                                  color: Color(0xFF0367A6),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  // Search button
                                  GestureDetector(
                                    onTap: () => logic.getAttendanceList(
                                        fromDate: _startDate.toString(),
                                        toDate: _endDate.toString()),
                                    child: SizedBox(
                                      width: 60,
                                      height: 33,
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          color: Colors.white,
                                        ),
                                        child: Text(
                                          AppLocale.search.tr,
                                          style: TextStyle(
                                            color: Color(0xFF0367A6),
                                            fontWeight: FontWeight.w600,
                                            fontFamily:
                                                Get.locale?.languageCode ==
                                                        AppConst.englishCode
                                                    ? "Poppins"
                                                    : "Battambang",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                alignment: Alignment.center,
                                width: Get.width,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // Aligns items to the start
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          // "- វត្តមាន    ៖ ${state.attendanceResponse.statusCount?.a ?? 0}",
                                          "- វត្តមាន    ៖ ${state.attendanceResponse.statusCount?.inout ?? 0}",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: _textColor,
                                            fontFamily:
                                                Get.locale?.languageCode ==
                                                        AppConst.englishCode
                                                    ? "Poppins"
                                                    : "Battambang",
                                          ),
                                        ),
                                        Text(
                                          // "- អវត្តមាន  ៖ ${state.attendanceResponse.statusCount?.inout ?? 0}",
                                          "- អវត្តមាន  ៖ ${state.attendanceResponse.statusCount?.a ?? 0}",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: _textColor,
                                            fontFamily:
                                                Get.locale?.languageCode ==
                                                        AppConst.englishCode
                                                    ? "Poppins"
                                                    : "Battambang",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Last container with remaining height and scrollable list
                    GetBuilder<AttendenceLogic>(builder: (logic) {
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 100.0, left: 20.0, right: 20.0),
                          // Add 10px space
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            alignment: Alignment.center,
                            width: Get.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: state.attendanceList.length != 0
                                ? ListView.builder(
                                    itemCount: state.attendanceList.length,
                                    itemBuilder: (context, index) {
                                      var item = state.attendanceList[index];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Row(
                                          children: [
                                            item.status == "A"
                                                ? Text(
                                                    "- ${DateFormat("yyyy-MM-dd").format(item.createdAt ?? DateTime.now())}  ៖",
                                                    // "- ${DateFormat("yyyy-MM-dd").format(DateTime(2023, 8, 25, 10, 30))}  ៖",
                                                    style: TextStyle(
                                                        fontSize: 16.0,
                                                        color: Colors.black,
                                                        fontFamily: Get.locale
                                                                    ?.languageCode ==
                                                                AppConst
                                                                    .englishCode
                                                            ? "Poppins"
                                                            : "Battambang",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )
                                                : Text(
                                                    "- ${DateFormat("yyyy-MM-dd hh:mm a").format((item.createdAt ?? DateTime.now()).add(Duration(hours: 7)))}  ៖",
                                                    // "- ${DateFormat("yyyy-MM-dd hh:mm a").format(DateTime(2023, 8, 25, 11, 30))}  ៖",
                                                    style: TextStyle(
                                                        fontSize: 16.0,
                                                        color: Colors.blue,
                                                        fontFamily: Get.locale
                                                                    ?.languageCode ==
                                                                AppConst
                                                                    .englishCode
                                                            ? "Poppins"
                                                            : "Battambang",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            item.status == "A"
                                                ? Text(
                                                    "អវត្តមាន",
                                                    style: TextStyle(
                                                        fontSize: 16.0,
                                                        color: Colors.black,
                                                        fontFamily: Get.locale
                                                                    ?.languageCode ==
                                                                AppConst
                                                                    .englishCode
                                                            ? "Poppins"
                                                            : "Battambang",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )
                                                : Text(
                                                    "វត្តមាន",
                                                    style: TextStyle(
                                                        fontSize: 16.0,
                                                        color: Colors.blue,
                                                        fontFamily: Get.locale
                                                                    ?.languageCode ==
                                                                AppConst
                                                                    .englishCode
                                                            ? "Poppins"
                                                            : "Battambang",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                          ],
                                        ),
                                      );
                                    },
                                  )
                                : Center(
                                    child: Text(
                                      "No Result Found",
                                      style: TextStyle(color: _textColor),
                                    ),
                                  ),
                          ),
                        ),
                      );
                    }),
                  ],
                );
              }),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: BottomQuote(),
          ),
        ],
      ),
    );
  }
}
