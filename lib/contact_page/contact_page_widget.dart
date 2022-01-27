import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactPageWidget extends StatefulWidget {
  ContactPageWidget({Key key}) : super(key: key);

  @override
  _ContactPageWidgetState createState() => _ContactPageWidgetState();
}

class _ContactPageWidgetState extends State<ContactPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await launchURL('https://janzeto.kz/');
                      },
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 180,
                        height: 105,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () async {
                              await launchURL('tel:+77012579957');
                            },
                            child: SvgPicture.asset(
                              'assets/images/tel.svg',
                              width: 35,
                              height: 35,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await launchURL('tel:+77012579957');
                                    },
                                    child: Text(
                                      'Закажите торты по телефону',
                                      style: FlutterFlowTheme.bodyText1
                                          .override(
                                              fontFamily: 'Rubik',
                                              color: HexColor("9E9E9E")),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await launchURL('tel:+77012579957');
                                },
                                child: Text(
                                  '+7 701 257-99-57',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Rubik',
                                    color: Color(0xFF681A5C),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://api.whatsapp.com/send?phone=77012579957&text=%D0%94%D0%BE%D0%B1%D1%80%D1%8B%D0%B9%20%D0%B4%D0%B5%D0%BD%D1%8C%2C%20%D0%BF%D0%B8%D1%88%D1%83%20%D1%81%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%D1%81%D1%87%D0%B5%D1%82%20...');
                            },
                            child: SvgPicture.asset(
                              'assets/images/whatsapp.svg',
                              width: 35,
                              height: 35,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await launchURL(
                                          'https://api.whatsapp.com/send?phone=77012579957&text=%D0%94%D0%BE%D0%B1%D1%80%D1%8B%D0%B9%20%D0%B4%D0%B5%D0%BD%D1%8C%2C%20%D0%BF%D0%B8%D1%88%D1%83%20%D1%81%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%D1%81%D1%87%D0%B5%D1%82%20...');
                                    },
                                    child: Text(
                                      'Напишите нам на WhatsApp, чтобы',
                                      style: FlutterFlowTheme.bodyText1
                                          .override(
                                              fontFamily: 'Rubik',
                                              color: HexColor("9E9E9E")),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await launchURL(
                                      'https://api.whatsapp.com/send?phone=77012579957&text=%D0%94%D0%BE%D0%B1%D1%80%D1%8B%D0%B9%20%D0%B4%D0%B5%D0%BD%D1%8C%2C%20%D0%BF%D0%B8%D1%88%D1%83%20%D1%81%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%D1%81%D1%87%D0%B5%D1%82%20...');
                                },
                                child: Text(
                                  '+7 701 257-99-57',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Rubik',
                                    color: Color(0xFF681A5C),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () async {
                        await launchURL(
                            'https://api.whatsapp.com/send?phone=77012579957&text=%D0%94%D0%BE%D0%B1%D1%80%D1%8B%D0%B9%20%D0%B4%D0%B5%D0%BD%D1%8C%2C%20%D0%BF%D0%B8%D1%88%D1%83%20%D1%81%20%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BD%D0%B0%D1%81%D1%87%D0%B5%D1%82%20...');
                      },
                      child: Text(
                        'оформить заказ или получить\nконсультацию',
                        style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Rubik', color: HexColor("9E9E9E")),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            child: SvgPicture.asset(
                              'assets/images/time.svg',
                              width: 35,
                              height: 35,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: InkWell(
                                    child: Text(
                                      'Оформление заказа',
                                      style: FlutterFlowTheme.bodyText1
                                          .override(
                                              fontFamily: 'Rubik',
                                              color: HexColor("9E9E9E")),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                child: Text(
                                  'с 09:00 до 20:00',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Rubik',
                                    color: Color(0xFF681A5C),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(60, 10, 0, 0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: InkWell(
                              child: Text(
                                'Работа кондитерской',
                                style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Rubik',
                                    color: HexColor("9E9E9E")),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          child: Text(
                            'с 09:00 до 23:00',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Rubik',
                              color: Color(0xFF681A5C),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () async {
                              await launchURL('https://janzeto.kz');
                            },
                            child: SvgPicture.asset(
                              'assets/images/site.svg',
                              width: 35,
                              height: 35,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await launchURL('https://janzeto.kz/');
                                    },
                                    child: Text(
                                      'Подробнее',
                                      style: FlutterFlowTheme.bodyText1
                                          .override(
                                              fontFamily: 'Rubik',
                                              color: HexColor("9E9E9E")),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await launchURL('https://janzeto.kz/');
                                },
                                child: Text(
                                  'www.janzeto.kz',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Rubik',
                                    color: Color(0xFF681A5C),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () async {
                              await launchURL('https://janzeto.kz');
                            },
                            child: Image.asset(
                              'assets/images/Line 9.png',
                              width: 400,
                              height: 2,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://2gis.kz/nur_sultan/search/janzeto/firm/70000001026978247/71.392341%2C51.147471');
                        },
                        child: Text(
                          'г. Нур-Султан, Кургальжинское шоссе 11,',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        await launchURL(
                            'https://2gis.kz/nur_sultan/search/janzeto/firm/70000001026978247/71.392341%2C51.147471');
                      },
                      child: Text(
                        'ЖК Дударай',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Rubik',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment(0.1, 0.5),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await launchURL(
                                'https://2gis.kz/nur_sultan/search/janzeto/firm/70000001026978247/71.392341%2C51.147471');
                          },
                          icon: SvgPicture.asset('assets/images/2gis2.svg',
                              width: 50),
                          text: 'Проложить маршрут',
                          options: FFButtonOptions(
                            width: 330,
                            height: 55,
                            color: HexColor("a4c721"),
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Rubik',
                              color: Colors.white,
                              fontSize: 17,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              /*Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10.0),
                height: 55.0,
                child: RaisedButton(
                  onPressed: () async {
                    await launchURL('https://taxi.yandex.kz/ru_kz');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        /* image: DecorationImage(
                          image: AssetImage('assets/images/instagram.png'),
                          fit: BoxFit.cover,
                        ),*/
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFFDC40),
                            Color(0xffFFDC40),
                            Color(0xffFFDC40)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 330.0, minHeight: 55.0),
                      alignment: Alignment.center,
                      child: new Image.asset('assets/images/yandexgo.png',
                          width: 180.0, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),*/

              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                height: 55.0,
                child: RaisedButton(
                  onPressed: () async {
                    await launchURL('https://www.instagram.com/janzeto.kz');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        /* image: DecorationImage(
                          image: AssetImage('assets/images/instagram.png'),
                          fit: BoxFit.cover,
                        ),*/
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff525bd1),
                            Color(0xffE33C61),
                            Color(0xffFEC15C)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 330.0, minHeight: 55.0),
                      alignment: Alignment.center,
                      child: new SvgPicture.asset('assets/images/insta.svg',
                          width: 180.0, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              /*Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment(0.1, 0.5),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await launchURL(
                                'https://www.instagram.com/janzeto.kz');
                          },
                          icon: Image.asset('assets/images/instagram.png'),
                          text: 'Перейти в инстаграм',
                          options: FFButtonOptions(
                            width: 330,
                            height: 52,
                            color: FlutterFlowTheme.primaryColor,
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Rubik',
                              color: Colors.white,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),*/
              /*Padding(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://2gis.kz/nur_sultan/firm/70000001026978247?m=71.392341%2C51.147471%2F16');
                        },
                        child: Image.asset(
                          'assets/images/Ellipse 5.png',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.1, 0.5),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 110, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await launchURL(
                                'https://2gis.kz/nur_sultan/firm/70000001026978247?m=71.392341%2C51.147471%2F16');
                          },
                          text: 'Проложить маршрут',
                          options: FFButtonOptions(
                            width: 260,
                            height: 52,
                            color: FlutterFlowTheme.primaryColor,
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Rubik',
                              color: Colors.white,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://2gis.kz/nur_sultan/firm/70000001026978247?m=71.392341%2C51.147471%2F16');
                        },
                        child: Text(
                          'г. Нур-Султан, Кургальжинское шоссе 11,',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        await launchURL(
                            'https://2gis.kz/nur_sultan/firm/70000001026978247?m=71.392341%2C51.147471%2F16');
                      },
                      child: Text(
                        'ЖК Дударай',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Rubik',
                        ),
                      ),
                    )
                  ],
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
