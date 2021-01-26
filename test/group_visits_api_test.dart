import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for GroupVisitsApi
void main() {
  var instance = new GroupVisitsApi();

  group('tests for GroupVisitsApi', () {
    // Create a new Group Visit (Appointment)
    //
    // Creates a `GroupVisit` (Appointment)
    //
    //Future<GroupVisit> createGroupVisit({ String idempotencyKey, GroupVisitCreateParams groupVisitCreateParams }) async 
    test('test createGroupVisit', () async {
      // TODO
    });

    // Delete a Group Visit (Appointment)
    //
    // Deletes a single instance of `GroupVisit` (Appointment).
    //
    //Future deleteGroupVisit(String groupVisitId, { String idempotencyKey }) async 
    test('test deleteGroupVisit', () async {
      // TODO
    });

    // Get a Group Visit (Appointment)
    //
    // Gets the details of a single instance of a `GroupVisit`.
    //
    //Future<GroupVisit> getGroupVisit(String groupVisitId) async 
    test('test getGroupVisit', () async {
      // TODO
    });

    // List all Group Visits (Appointments)
    //
    // Gets a list of all `GroupVisit` entities (Appointments).
    //
    //Future<ErrorsList> getGroupVisits({ String limit, String offset, String locationIds, String sortWith }) async 
    test('test getGroupVisits', () async {
      // TODO
    });

    // Update a Group Visit (Appointment)
    //
    // Updates an existing `GroupVisit` (Appointment).
    //
    //Future<GroupVisit> updateGroupVisit(String groupVisitId, { String idempotencyKey, GroupVisitUpdateParams groupVisitUpdateParams }) async 
    test('test updateGroupVisit', () async {
      // TODO
    });

  });
}
