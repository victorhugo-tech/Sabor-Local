import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menupedidos_model.dart';
export 'menupedidos_model.dart';

class MenupedidosWidget extends StatefulWidget {
  const MenupedidosWidget({super.key});

  static String routeName = 'menupedidos';
  static String routePath = '/menupedidos';

  @override
  State<MenupedidosWidget> createState() => _MenupedidosWidgetState();
}

class _MenupedidosWidgetState extends State<MenupedidosWidget> {
  late MenupedidosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenupedidosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFADCC494),
        drawer: Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 309.72,
                    height: 853.0,
                    decoration: BoxDecoration(
                      color: Color(0xFADCC494),
                      borderRadius: BorderRadius.only(),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              256.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: 47.32,
                            height: 44.3,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.circular(40.0),
                                bottomLeft: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0),
                              ),
                            ),
                            child: FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 48.0,
                              fillColor: Color(0xFADCC494),
                              icon: Icon(
                                Icons.menu,
                                color: Color(0xFF090808),
                                size: 24.0,
                              ),
                              onPressed: () async {
                                if (scaffoldKey.currentState!.isDrawerOpen ||
                                    scaffoldKey.currentState!.isEndDrawerOpen) {
                                  Navigator.pop(context);
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFADCC494),
          automaticallyImplyLeading: false,
          actions: [],
          centerTitle: true,
          elevation: 5.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: Color(0xFADCC494),
              icon: Icon(
                Icons.menu,
                color: Color(0xFF040404),
                size: 24.0,
              ),
              onPressed: () async {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
          ],
        ),
      ),
    );
  }
}
