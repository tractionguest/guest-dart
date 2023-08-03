//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PackagesApi
void main() {
  // final instance = PackagesApi();

  group('tests for PackagesApi', () {
    // Create package
    //
    // Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.
    //
    //Future<PackageV1> createPackage({ PackageCreateParamsV1 packageCreateParamsV1 }) async
    test('test createPackage', () async {
      // TODO
    });

    // 
    //
    // Delete a pacakge
    //
    //Future deletePackage(String packageId, { String idempotencyKey }) async
    test('test deletePackage', () async {
      // TODO
    });

    // Get Package
    //
    // Gets the details of a single instance of a Package
    //
    //Future<PackageV1> getPackage(String packageId, { String include }) async
    test('test getPackage', () async {
      // TODO
    });

    // Get packages
    //
    // Gets a list of [Package] entities.
    //
    //Future<PaginatedPackagesListV1> getPackages({ String locationIds, int limit, int offset, String include, bool pickedUp, String query }) async
    test('test getPackages', () async {
      // TODO
    });

    // Update Package
    //
    // Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package's intended recipient. Changes package_state to 'recipient_matched' if a match hasn't been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package's carrier/courier information 
    //
    //Future<PackageV1> updatePackage(String packageId, { String idempotencyKey, PackageUpdateParamsV1 packageUpdateParamsV1 }) async
    test('test updatePackage', () async {
      // TODO
    });

  });
}
