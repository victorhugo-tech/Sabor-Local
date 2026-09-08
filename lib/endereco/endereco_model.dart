import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'endereco_widget.dart' show EnderecoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EnderecoModel extends FlutterFlowModel<EnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldcep widget.
  FocusNode? textFieldcepFocusNode;
  TextEditingController? textFieldcepTextController;
  late MaskTextInputFormatter textFieldcepMask;
  String? Function(BuildContext, String?)? textFieldcepTextControllerValidator;
  // Stores action output result for [Backend Call - API (cep)] action in TextFieldcep widget.
  ApiCallResponse? apiresultadocep;
  // State field(s) for TextFieldlogradouro widget.
  FocusNode? textFieldlogradouroFocusNode;
  TextEditingController? textFieldlogradouroTextController;
  String? Function(BuildContext, String?)?
      textFieldlogradouroTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextFieldbairro widget.
  FocusNode? textFieldbairroFocusNode;
  TextEditingController? textFieldbairroTextController;
  String? Function(BuildContext, String?)?
      textFieldbairroTextControllerValidator;
  // State field(s) for TextFieldcidade widget.
  FocusNode? textFieldcidadeFocusNode;
  TextEditingController? textFieldcidadeTextController;
  String? Function(BuildContext, String?)?
      textFieldcidadeTextControllerValidator;
  // State field(s) for TextFielduf widget.
  FocusNode? textFieldufFocusNode;
  TextEditingController? textFieldufTextController;
  String? Function(BuildContext, String?)? textFieldufTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldcepFocusNode?.dispose();
    textFieldcepTextController?.dispose();

    textFieldlogradouroFocusNode?.dispose();
    textFieldlogradouroTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();

    textFieldbairroFocusNode?.dispose();
    textFieldbairroTextController?.dispose();

    textFieldcidadeFocusNode?.dispose();
    textFieldcidadeTextController?.dispose();

    textFieldufFocusNode?.dispose();
    textFieldufTextController?.dispose();
  }
}
