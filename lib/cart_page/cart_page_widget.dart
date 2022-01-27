import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:janzeto_cake/flutter_flow/flutter_flow_count_controller.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../checkout_page/checkout_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../info_page/info_page_widget.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPageWidget extends StatefulWidget {
  CartPageWidget({
    Key key,
    this.orderinfo,
    this.productsinfo,
  }) : super(key: key);

  final DocumentReference orderinfo;
  final DocumentReference productsinfo;

  @override
  _CartPageWidgetState createState() => _CartPageWidgetState();
}

class _CartPageWidgetState extends State<CartPageWidget> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();
  int countControllerValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                      child: IconButton(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => NavBarPage(
                                                  initialPage: 'HomePage'),
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
                                      padding:
                                          EdgeInsets.fromLTRB(90, 20, 0, 0),
                                      child: Text(
                                        'Корзина',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
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
                              child: Text('Корзина пусто на данный момент'),
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
                                return Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => InfoPageWidget(
                                            productinfo:
                                                listViewOrdercollectionRecord
                                                    .orderedItem,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 120,
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
                                                    width: 80,
                                                    height: 80,
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
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child: IconButton(
                                                          onPressed: () async {
                                                            int productUpdate =
                                                                listViewOrdercollectionRecord
                                                                    .orderCount;
                                                            if (productUpdate >
                                                                1) {
                                                              var productsUpdateData =
                                                                  {
                                                                'order_count':
                                                                    FieldValue
                                                                        .increment(
                                                                            -1),
                                                              };
                                                              await listViewOrdercollectionRecord
                                                                  .reference
                                                                  .update(
                                                                      productsUpdateData);
                                                            }
                                                          },
                                                          icon: Icon(
                                                            Icons.remove,
                                                            color: Colors.black,
                                                            size: 20,
                                                          ),
                                                          iconSize: 20,
                                                        ),
                                                      ),
                                                      Text(
                                                        listViewOrdercollectionRecord
                                                                .orderCount
                                                                .toString() +
                                                            ' шт.',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Rubik',
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child: IconButton(
                                                          onPressed: () async {
                                                            final productsUpdateData =
                                                                {
                                                              'order_count':
                                                                  FieldValue
                                                                      .increment(
                                                                          1),
                                                            };
                                                            await listViewOrdercollectionRecord
                                                                .reference
                                                                .update(
                                                                    productsUpdateData);
                                                          },
                                                          icon: Icon(
                                                            Icons.add,
                                                            color: Colors.black,
                                                            size: 20,
                                                          ),
                                                          iconSize: 20,
                                                        ),
                                                      ),
                                                      /*Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child: Container(
                                                          width: 120,
                                                          height: 30,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                            shape: BoxShape
                                                                .rectangle,
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFF9E9E9E),
                                                              width: 1,
                                                            ),
                                                          ),
                                                          child:
                                                              FlutterFlowCountController(
                                                            decrementIconBuilder:
                                                                (enabled) =>
                                                                    FaIcon(
                                                              FontAwesomeIcons
                                                                  .minus,
                                                              color: enabled
                                                                  ? Color(
                                                                      0xDD000000)
                                                                  : Color(
                                                                      0xFFEEEEEE),
                                                              size: 20,
                                                            ),
                                                            incrementIconBuilder:
                                                                (enabled) =>
                                                                    FaIcon(
                                                              FontAwesomeIcons
                                                                  .plus,
                                                              color: enabled
                                                                  ? Color(
                                                                      0xFF681A5C)
                                                                  : Color(
                                                                      0xFFEEEEEE),
                                                              size: 20,
                                                            ),
                                                            countBuilder:
                                                                (count) => Text(
                                                              count.toString(),
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Roboto',
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                            count: countControllerValue ??=
                                                                listViewOrdercollectionRecord
                                                                    .orderCount,
                                                            updateCount: (count) =>
                                                                setState(() =>
                                                                    countControllerValue =
                                                                        count),
                                                            stepSize: 1,
                                                            minimum: 0,
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15,
                                                                        0,
                                                                        15,
                                                                        0),
                                                          ),
                                                        ),
                                                      ),*/
                                                      /*Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Text(
                                                            'Now',
                                                          ),
                                                          Text(
                                                            '$_counter',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline5,
                                                          ),
                                                        ],
                                                      ),
                                                      FloatingActionButton(
                                                        onPressed:
                                                            _incrementCounter,
                                                        tooltip: 'Increment',
                                                        child: Icon(Icons.add),
                                                      ),*/
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 8, 2, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 10, 0, 0),
                                                  child: Text(
                                                    dateTimeFormat(
                                                        'Hm',
                                                        listViewOrdercollectionRecord
                                                            .createdTimes),
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Rubik',
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () async {
                                                    await listViewOrdercollectionRecord
                                                        .reference
                                                        .delete();
                                                  },
                                                  icon: Icon(
                                                    Icons.delete_forever,
                                                    color: Color(0xFFFF0000),
                                                    size: 30,
                                                  ),
                                                  iconSize: 30,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
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
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckoutPageWidget(
                              ordercollection: widget.orderinfo,
                              orderedproducts: widget.productsinfo,
                            ),
                          ),
                        );
                      },
                      text: 'Оформить заказ',
                      options: FFButtonOptions(
                        width: 300,
                        height: 50,
                        color: Color(0xFF681A5C),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Rubik',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
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
            )
          ],
        ),
      ),
    );
  }
}
