import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mensajes_model.dart';
export 'mensajes_model.dart';

class MensajesWidget extends StatefulWidget {
  const MensajesWidget({Key? key}) : super(key: key);

  @override
  _MensajesWidgetState createState() => _MensajesWidgetState();
}

class _MensajesWidgetState extends State<MensajesWidget> {
  late MensajesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MensajesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Guillermo Peralta',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.85, -0.47),
                child: Container(
                  width: 301.1,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF8679EC),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.98),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 106.6,
                      height: 106.6,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Pera.jfif',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.9, 0.91),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed('salachat');
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/3643739_forward_next_right_share_turn_icon.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.74, 0.91),
                child: Container(
                  width: 301.1,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.19, -0.47),
                child: Text(
                  'Hola',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 30.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.26, 0.87),
                child: Text(
                  'Type Mensage',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.8, -0.28),
                child: Container(
                  width: 301.1,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF8679EC),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.65, -0.28),
                child: Text(
                  'Me gustan tus videos',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 25.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.78, -0.02),
                child: Container(
                  width: 352.2,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFBEBCBC),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.34, -0.02),
                child: Text(
                  'Ni siquiera se quien eres',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 25.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.75, 0.19),
                child: Container(
                  width: 352.2,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFBEBCBC),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.13, 0.2),
                child: Text(
                  'Gracias',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 30.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
