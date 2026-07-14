import 'package:icon_font_generator/icon_font_generator.dart';
import 'package:test/test.dart';

const _squareSvg =
    '<svg viewBox="0 0 24 24"><rect x="3" y="3" width="18" height="18"/></svg>';

void main() {
  test('svgToOtf honours explicit charCodes', () {
    final result = svgToOtf(
      svgMap: {'square': _squareSvg},
      charCodes: {'square': 0xF1234},
    );
    final glyph = result.glyphList.firstWhere((g) => g.metadata.name == 'square');
    expect(glyph.metadata.charCode, 0xF1234);
  });
}
