import '/components/servico_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for servico component.
  late ServicoModel servicoModel1;
  // Model for servico component.
  late ServicoModel servicoModel2;
  // Model for servico component.
  late ServicoModel servicoModel3;
  // Model for servico component.
  late ServicoModel servicoModel4;
  // Model for servico component.
  late ServicoModel servicoModel5;
  // Model for servico component.
  late ServicoModel servicoModel6;
  // Model for servico component.
  late ServicoModel servicoModel7;
  // Model for servico component.
  late ServicoModel servicoModel8;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    servicoModel1 = createModel(context, () => ServicoModel());
    servicoModel2 = createModel(context, () => ServicoModel());
    servicoModel3 = createModel(context, () => ServicoModel());
    servicoModel4 = createModel(context, () => ServicoModel());
    servicoModel5 = createModel(context, () => ServicoModel());
    servicoModel6 = createModel(context, () => ServicoModel());
    servicoModel7 = createModel(context, () => ServicoModel());
    servicoModel8 = createModel(context, () => ServicoModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    servicoModel1.dispose();
    servicoModel2.dispose();
    servicoModel3.dispose();
    servicoModel4.dispose();
    servicoModel5.dispose();
    servicoModel6.dispose();
    servicoModel7.dispose();
    servicoModel8.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
