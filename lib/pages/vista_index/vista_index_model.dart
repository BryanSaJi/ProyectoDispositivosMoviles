import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bs_mostra_detalle_producto_widget.dart';
import '/components/log_out_modal/log_out_modal_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'vista_index_widget.dart' show VistaIndexWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class VistaIndexModel extends FlutterFlowModel<VistaIndexWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for txtBuscarProducto widget.
  final txtBuscarProductoKey = GlobalKey();
  FocusNode? txtBuscarProductoFocusNode;
  TextEditingController? txtBuscarProductoTextController;
  String? txtBuscarProductoSelectedOption;
  String? Function(BuildContext, String?)?
      txtBuscarProductoTextControllerValidator;
  List<ProductRecord> simpleSearchResults = [];
  // State field(s) for lvProductos widget.

  PagingController<DocumentSnapshot?, ProductRecord>?
      lvProductosPagingController;
  Query? lvProductosPagingQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtBuscarProductoFocusNode?.dispose();

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
          queryBuilder: (_) => lvProductosPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 25,
          isStream: false,
        ),
      );
  }
}
