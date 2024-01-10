import 'package:flutter/material.dart';
import 'package:smart_garden/core.dart';
import 'package:smart_garden/module/home/view/home_view.dart';
import 'package:smart_garden/module/menufitur/widget/menu_fitur_item.dart';
import 'package:smart_garden/module/plantpage/view/plantpage_tabbar.dart';
import 'package:smart_garden/module/settingplantpage/view/settingplantpage_view.dart';
import 'package:smart_garden/module/temperaturepage/view/plants_tabbar.dart';
import 'package:smart_garden/shared/theme.dart';

class MenufiturView extends StatefulWidget {
  const MenufiturView({super.key});

  @override
  State<MenufiturView> createState() => _MenufiturViewState();
}

class _MenufiturViewState extends State<MenufiturView> {
  void showNotif() {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            content: Container(
              width: 327,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: whiteColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 142,
                    height: 145,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/img_notif.png",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Notification is ON",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeView()),
                        );
                      },
                      child: Container(
                        width: 22,
                        height: 19,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                          "assets/images/ic_arrow_left.png",
                        ))),
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => showNotif(),
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/ic_notification.png",
                                ),
                              ),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/ic_ellipse.png",
                                width: 8.0,
                                height: 8.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SettingplantpageView()),
                            );
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/ic_setting.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Your Plants Status",
                  style: greenTextColor.copyWith(
                      fontSize: 28, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 38,
                ),
                MenuFiturItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const TemperaturePageView();
                    }));
                  },
                  title: "Temperature",
                  subtitle: "27˚",
                  iconUrl: "assets/images/ic_temperature.png",
                  width: 40,
                  imageUrl: "assets/images/img_Peperomia_Obtusfolia.png",
                ),
                const SizedBox(
                  height: 11,
                ),
                MenuFiturItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TemperaturePageView()),
                    );
                  },
                  title: "Humidity",
                  subtitle: "40% RH",
                  iconUrl: "assets/images/ic_water.png",
                  width: 27,
                  imageUrl: "assets/images/img_Peperomia_Obtusfolia.png",
                ),
                const SizedBox(
                  height: 11,
                ),
                MenuFiturItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TemperaturePageView()),
                    );
                  },
                  title: "PH Water",
                  subtitle: "PH Watering",
                  iconUrl: "assets/images/ic_php_watering.png",
                  width: 27,
                  imageUrl: "assets/images/img_Peperomia_Obtusfolia.png",
                ),
                const SizedBox(
                  height: 11,
                ),
                MenuFiturItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TemperaturePageView()),
                    );
                  },
                  title: "Water",
                  subtitle: "Watering",
                  iconUrl: "assets/images/ic_waterr.png",
                  width: 50,
                  imageUrl: "assets/images/img_Peperomia_Obtusfolia.png",
                ),
                const SizedBox(
                  height: 14,
                ),
               
                const SizedBox(
                  height: 14,
                ),
              ],
            ),
          ),
        ));
  }
}
