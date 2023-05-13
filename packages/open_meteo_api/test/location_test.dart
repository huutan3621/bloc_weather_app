import 'package:open_meteo_api/open_meteo_api.dart';
import 'package:test/test.dart';

void main() {
  group('Location', () {
    group('fromJson', () {
      test('returns correct Location object', () {
        expect(
          Location.fromJson(
            <String, dynamic>{
              'id': 1566083,
              'name': 'Ho Chi Minh City',
              'latitude': 10.82302,
              'longitude': 106.62965,
            },
          ),
          isA<Location>()
              .having((w) => w.id, 'id', 1566083)
              .having((w) => w.name, 'name', 'Ho Chi Minh City')
              .having((w) => w.latitude, 'latitude', 10.82302)
              .having((w) => w.longitude, 'longitude', 106.62965),
        );
      });
    });
  });
}
