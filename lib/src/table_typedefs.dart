import 'package:flutter/widgets.dart';

/// Function used to build a widget for passed cell in a row.
typedef TableCellBuilder = Widget Function(BuildContext context, int column);

typedef TableRowContentBuilder = Widget Function(
  BuildContext context,
  TableCellBuilder cellBuilder,
);

typedef TableRowBuilder = Widget? Function(
  BuildContext context,
  int row,
  TableRowContentBuilder contentBuilder,
);

typedef TableHeaderBuilder = Widget Function(
  BuildContext context,
  TableRowContentBuilder contentBuilder,
);

typedef TableFooterBuilder = TableHeaderBuilder;

typedef TablePlaceholderBuilder = Widget Function(
  BuildContext context,
  int row,
  TableRowContentBuilder contentBuilder,
);

/// Function used to wrap a given placeholder widget containing all visible
/// placeholders in order to achieve some custom behaviour.
typedef TablePlaceholderContainerBuilder = Widget Function(
  Widget placeholderContainer,
);
