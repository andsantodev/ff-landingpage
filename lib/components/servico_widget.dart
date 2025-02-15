import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'servico_model.dart';
export 'servico_model.dart';

class ServicoWidget extends StatefulWidget {
  const ServicoWidget({
    super.key,
    required this.icone,
    required this.nomeServico,
  });

  final Widget? icone;
  final String? nomeServico;

  @override
  State<ServicoWidget> createState() => _ServicoWidgetState();
}

class _ServicoWidgetState extends State<ServicoWidget> {
  late ServicoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: _model.mouseRegionHovered
                  ? Color(0x33000000)
                  : Color(0x00000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(100.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondary,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.icone!,
              Text(
                valueOrDefault<String>(
                  widget.nomeServico,
                  '[nome servico]',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
