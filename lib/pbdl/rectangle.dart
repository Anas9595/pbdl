import 'package:pbdl/pbdl/pb_style.dart';
import 'package:pbdl/pbdl/pbdl_node.dart';
import 'abstract_design_node_factory.dart';
import 'color.dart';
import 'pbdl_frame.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rectangle.g.dart';

@JsonSerializable()
class Rectangle with PBColorMixin implements PBDLNodeFactory, PBDLNode {
  @override
  String pbdfType = 'rectangle';

  var hasConvertedToNewRoundCorners;

  var fixedRadius;

  var needsConvertionToNewRoundCorners;

  var points;

  Rectangle({
    this.fixedRadius,
    this.hasConvertedToNewRoundCorners,
    this.needsConvertionToNewRoundCorners,
    bool edited,
    bool isClosed,
    pointRadiusBehaviour,
    List this.points,
    this.UUID,
    booleanOperation,
    exportOptions,
    PBDLFrame this.boundaryRectangle,
    isFixedToViewport,
    isFlippedHorizontal,
    isFlippedVertical,
    isLocked,
    this.isVisible,
    layerListExpandedType,
    this.name,
    nameIsFixed,
    resizingConstraint,
    resizingType,
    rotation,
    sharedStyleID,
    shouldBreakMaskChain,
    hasClippingMask,
    clippingMaskMode,
    userInfo,
    maintainScrollPosition,
    this.type,
    this.pbdfType = 'rectangle',
    this.style,
  });

  @override
  PBDLNode createPBDLNode(Map<String, dynamic> json) =>
      Rectangle.fromJson(json);
  factory Rectangle.fromJson(Map<String, dynamic> json) =>
      _$RectangleFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RectangleToJson(this);

  @override
  String UUID;

  @override
  var boundaryRectangle;

  @override
  bool isVisible;

  @override
  String name;

  @override
  String prototypeNodeUUID;

  @override
  PBStyle style;

  @override
  String type;

  @override
  Future<PBDLNode> interpretNode() {
    /*
    Border border;
    for (var b in style.borders.reversed) {
      if (b.isEnabled) {
        border = b;
      }
    }
    return Future.value(InheritedContainer(
      this,
      Point(boundaryRectangle.x, boundaryRectangle.y),
      Point(boundaryRectangle.x + boundaryRectangle.width,
          boundaryRectangle.y + boundaryRectangle.height),
      name,
      currentContext: currentContext,
      borderInfo: {
        'borderRadius':
            style.borderOptions.isEnabled ? points[0]['cornerRadius'] : null,
        'borderColorHex': border != null ? toHex(border.color) : null,
        'borderThickness': border != null ? border.thickness : null
      },
    )); */
  }
}
