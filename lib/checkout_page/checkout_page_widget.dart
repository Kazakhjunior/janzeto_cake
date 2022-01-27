import 'package:page_transition/page_transition.dart';
import 'package:janzeto_cake/flutter_flow/flutter_flow_count_controller.dart';
import '../cart_page/cart_page_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../thankyou_page/thankyou_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/*import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';*/
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:telebot/telebot.dart';
import 'package:flutter/services.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class CheckoutPageWidget extends StatefulWidget {
  CheckoutPageWidget({
    Key key,
    this.ordercollection,
    this.orderedproducts,
  }) : super(key: key);

  final DocumentReference ordercollection;
  final DocumentReference orderedproducts;
  @override
  _CheckoutPageWidgetState createState() => _CheckoutPageWidgetState();
}

class _CheckoutPageWidgetState extends State<CheckoutPageWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<ProductsRecord> listProducts = [];
  List<OrdercollectionRecord> orderProducts = [];
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        key: scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: Alignment(0, 0),
                          children: [
                            Align(
                              alignment: Alignment(0, 0),
                              child: Container(
                                width: double.infinity,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xFF681A5C),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 10, 0, 0),
                                            child: IconButton(
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        NavBarPage(
                                                            initialPage:
                                                                'HomePage'),
                                                  ),
                                                );
                                              },
                                              icon: Icon(
                                                Icons.arrow_back_sharp,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              iconSize: 30,
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                40, 20, 0, 0),
                                            child: Text(
                                              'Оформление заказа',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Rubik',
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: StreamBuilder<List<OrdercollectionRecord>>(
                        stream: queryOrdercollectionRecord(
                          queryBuilder: (ordercollectionRecord) =>
                              ordercollectionRecord.where('user_info',
                                  isEqualTo: currentUserReference),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(child: CircularProgressIndicator());
                          }
                          List<OrdercollectionRecord>
                              listViewOrdercollectionRecordList = snapshot.data;
                          // Customize what your widget looks like with no query results.
                          if (snapshot.data.isEmpty) {
                            return Container(
                              height: 100,
                              child: Center(
                                child: Text('Корзина пусто на данный момент.'),
                              ),
                            );
                          }
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewOrdercollectionRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewOrdercollectionRecord =
                                  listViewOrdercollectionRecordList[
                                      listViewIndex];
                              return StreamBuilder<ProductsRecord>(
                                stream: ProductsRecord.getDocument(
                                    listViewOrdercollectionRecord.orderedItem),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                        child: CircularProgressIndicator());
                                  }
                                  final shopListItemProductsRecord =
                                      snapshot.data;

                                  listProducts.add(shopListItemProductsRecord);
                                  orderProducts
                                      .add(listViewOrdercollectionRecord);
                                  return Padding(
                                    padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    8, 8, 8, 8),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    shopListItemProductsRecord
                                                        .prodImage,
                                                    width: 74,
                                                    height: 74,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  8, 2, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          shopListItemProductsRecord
                                                              .prodName,
                                                          style:
                                                              FlutterFlowTheme
                                                                  .subtitle1
                                                                  .override(
                                                            fontSize: 18,
                                                            fontFamily: 'Rubik',
                                                            color: Color(
                                                                0xFF15212B),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          shopListItemProductsRecord
                                                              .prodWeight,
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText2
                                                                  .override(
                                                            fontFamily: 'Rubik',
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        shopListItemProductsRecord
                                                            .prodPrice
                                                            .toString(),
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Rubik',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                1, 0, 0, 0),
                                                        child: Text(
                                                          'KZT',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily: 'Rubik',
                                                            color: Color(
                                                                0xFF681A5C),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 0, 0, 0),
                                                        child: Text(
                                                          listViewOrdercollectionRecord
                                                                  .orderCount
                                                                  .toString() +
                                                              ' шт.',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily: 'Rubik',
                                                            color: Color(
                                                                0xFF681A5C),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 16, 0),
                      child: Text(
                        'Имя:',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Rubik',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 16, 0),
                      child: Container(
                        width: 330,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFFDCBF5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: StreamBuilder<List<OrdersinpayRecord>>(
                          stream: queryOrdersinpayRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(child: CircularProgressIndicator());
                            }
                            List<OrdersinpayRecord>
                                textFieldOrdersinpayRecordList = snapshot.data;
                            // Customize what your widget looks like with no query results.
                            if (snapshot.data.isEmpty) {
                              return Container(
                                height: 100,
                                child: Center(
                                  child: Text('Нет результата'),
                                ),
                              );
                            }
                            final textFieldOrdersinpayRecord =
                                textFieldOrdersinpayRecordList.first;
                            return Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                              child: TextFormField(
                                controller: textController1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Ваше имя',
                                  hintStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Rubik',
                                    color: Colors.black,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Rubik',
                                  color: Colors.black,
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Обязательное поле для заполнения';
                                  }

                                  return null;
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: Text(
                        'Телефон:',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Rubik',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 16, 0),
                      child: Container(
                        width: 330,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFFDCBF5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: StreamBuilder<List<OrdersinpayRecord>>(
                          stream: queryOrdersinpayRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(child: CircularProgressIndicator());
                            }
                            List<OrdersinpayRecord>
                                textFieldOrdersinpayRecordList = snapshot.data;
                            // Customize what your widget looks like with no query results.
                            if (snapshot.data.isEmpty) {
                              return Container(
                                height: 100,
                                child: Center(
                                  child:
                                      Text('Корзина пусто на данный момент.'),
                                ),
                              );
                            }
                            var maskFormatter = new MaskTextInputFormatter(
                                mask: '+7(###) ###-##-##');
                            final textFieldOrdersinpayRecord =
                                textFieldOrdersinpayRecordList.first;

                            return Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                              child: TextFormField(
                                maxLength: 17,
                                buildCounter: (BuildContext context,
                                        {int currentLength,
                                        int maxLength,
                                        bool isFocused}) =>
                                    null,
                                inputFormatters: [maskFormatter],
                                controller: textController2,
                                keyboardType: TextInputType.number,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Ваш телефон',
                                  hintStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Rubik',
                                    color: Colors.black,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Rubik',
                                  color: Colors.black,
                                ),
                                validator: (val) {
                                  if (val.isEmpty || val.length < 17) {
                                    return 'Обязательное поле для заполнения';
                                  }

                                  return null;
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 16, 20),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (!formKey.currentState.validate()) {
                            return;
                          }

                          /* String username = 'makberryatyrau@gmail.com';
                          String password = 'Makberry2021!';*/

                          var productDetails = "";
                          for (int i = 0; i < listProducts.length; i++) {
                            productDetails +=
                                /* "\n"*/ listProducts[i].prodName +
                                    " " +
                                    orderProducts[i].orderCount.toString() +
                                    " шт.\n";
                          }
                          /*var orderDetails = "";
                          for (int i = 0; i < orderProducts.length; i++) {
                            orderDetails += /* "\n"*/ orderProducts[i]
                                .orderCount
                                .toString();
                          }*/
                          var bot = TelegramBot.init(
                              "1655294363:AAHCuFFzabzu2P5o_jMsyfNH_SktDqeIE1s");
                          bot
                              .sendMessage(
                                  chatId: "-402717601",
                                  text:
                                      "Заявка с моб. приложения Janzeto:\n Имя: ${textController1.text}\n Телефон: ${textController2.text}\n Продукт:$productDetails")
                              .then((Message messageResult) {
                            // got result
                          }).catchError((error) {
                            // handle error
                          });
                          /* final smtpServer = gmail(username, password);
                          // Use the SmtpServer class to configure an SMTP server:
                          // final smtpServer = SmtpServer('smtp.domain.com');
                          // See the named arguments of SmtpServer for further configuration
                          // options.
                          //1655294363:AAHCuFFzabzu2P5o_jMsyfNH_SktDqeIE1s
                          //402717601
                          // Create our message.
                          final message = Message()
                            ..from = Address(username, 'Janzeto')
                            ..recipients.add('janzeto@wwpager.site')
                            ..ccRecipients.addAll(['nartai.kali@gmail.com'])
                            ..subject = 'Заявка с моб. приложения Janzeto'
                            ..text =
                                'This is the plain text.\nThis is line 2 of the text part.'
                            ..html =
                                " <h1>Заявка:</h1>\n<p>Имя: ${textController1.text}</p>\n<p>Телефон: ${textController2.text} </p>" +
                                    productDetails;

                          try {
                            final sendReport = await send(message, smtpServer);
                            print('Message sent: ' + sendReport.toString());
                          } on MailerException catch (e) {
                            print('Message not sent.');
                            for (var p in e.problems) {
                              print('Problem: ${p.code}: ${p.msg}');
                            }
                          }*/
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThankyouPageWidget(),
                            ),
                          );
                        },
                        text: 'Отправить заявку',
                        options: FFButtonOptions(
                          width: 330,
                          height: 50,
                          color: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Rubik',
                            color: Colors.white,
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 20,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
