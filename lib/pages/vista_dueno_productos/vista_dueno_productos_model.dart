import '/backend/backend.dart';
import '/components/bs_mostra_detalle_producto_dueno_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'vista_dueno_productos_widget.dart' show VistaDuenoProductosWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class VistaDuenoProductosModel
    extends FlutterFlowModel<VistaDuenoProductosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for lvProductos widget.

  PagingController<DocumentSnapshot?, ProductRecord>?
      lvProductosPagingController;
  Query? lvProductosPagingQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lvProductosPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, ProductRecord> setLvProductosController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    lvProductosPagingController ??= _createLvProductosController(query, parent);
    if (lvProductosPagingQuery != query) {
      lvProductosPagingQuery = query;
      lvProductosPagingController?.refresh();
    }
    return lvProductosPagingController!;
  }

  PagingController<DocumentSnapshot?, ProductRecord>
      _createLvProductosController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, ProductRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryProductRecordPage(
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 25,
          isStream: false,
        ),
      );
  }
}
