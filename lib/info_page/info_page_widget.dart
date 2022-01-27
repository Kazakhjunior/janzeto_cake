import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../cart_page/cart_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class InfoPageWidget extends StatefulWidget {
  InfoPageWidget({
    Key key,
    this.productinfo,
  }) : super(key: key);

  final DocumentReference productinfo;

  @override
  _InfoPageWidgetState createState() => _InfoPageWidgetState();
}

class _InfoPageWidgetState extends State<InfoPageWidget> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProductsRecord>(
      stream: ProductsRecord.getDocument(widget.productinfo),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.

        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        final infoPageProductsRecord = snapshot.data;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 330,
                            child: PageView(
                              controller: pageViewController,
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              children: [
                                StreamBuilder<ProductsRecord>(
                                  stream: ProductsRecord.getDocument(
                                      infoPageProductsRecord.reference),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                          child: CircularProgressIndicator());
                                    }
                                    final imageProductsRecord = snapshot.data;
                                    return Image.network(
                                      imageProductsRecord.prodinfoImage,
                                      width: 100,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                              child: StreamBuilder<ProductsRecord>(
                            stream:
                                ProductsRecord.getDocument(widget.productinfo),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                              final textProductsRecord = snapshot.data;

                              return Text(
                                textProductsRecord.prodName,
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Rubik',
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              );
                            },
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 5, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          StreamBuilder<ProductsRecord>(
                            stream:
                                ProductsRecord.getDocument(widget.productinfo),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                              final textProductsRecord = snapshot.data;
                              return Text(
                                textProductsRecord.prodWeight,
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w400,
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 5, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          StreamBuilder<ProductsRecord>(
                            stream:
                                ProductsRecord.getDocument(widget.productinfo),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                              final textProductsRecord = snapshot.data;
                              return Text(
                                textProductsRecord.prodPrice.toString(),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Rubik',
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Text(
                              'KZT',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Rubik',
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Описание:',
                              style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Rubik',
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 5, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              infoPageProductsRecord.productinfo,
                              style: FlutterFlowTheme.bodyText1
                                  .override(fontFamily: 'Rubik', fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StreamBuilder<List<OrdercollectionRecord>>(
                            stream: queryOrdercollectionRecord(
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                              List<OrdercollectionRecord>
                                  buttonOrdercollectionRecordList =
                                  snapshot.data;
                              // Customize what your widget looks like with no query results.
                              if (snapshot.data.isEmpty) {
                                return Container(
                                  height: 100,
                                  child: Center(
                                    child: Text('No results.'),
                                  ),
                                );
                              }
                              final buttonOrdercollectionRecord =
                                  buttonOrdercollectionRecordList.first;
                              return FFButtonWidget(
                                onPressed: () async {
                                  final ordercollectionCreateData =
                                      createOrdercollectionRecordData(
                                    userInfo: currentUserReference,
                                    orderCount: 1,
                                    orderedItem:
                                        infoPageProductsRecord.reference,
                                    createdTimes: getCurrentTimestamp,
                                  );
                                  await OrdercollectionRecord.collection
                                      .doc()
                                      .set(ordercollectionCreateData);
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                      reverseDuration:
                                          Duration(milliseconds: 0),
                                      child: CartPageWidget(
                                        orderinfo: buttonOrdercollectionRecord
                                            .reference,
                                        productsinfo:
                                            infoPageProductsRecord.reference,
                                      ),
                                    ),
                                  );
                                },
                                text: 'Добавить в корзину',
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 50,
                                  color: Color(0xFF681A5C),
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Rubik',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment(-0.9, -0.95),
                  child: IconButton(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                    iconSize: 30,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
