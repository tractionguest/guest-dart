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


/// tests for InvitesApi
void main() {
  // final instance = InvitesApi();

  group('tests for InvitesApi', () {
    // Delete Multiple Invites
    //
    // Queues up a \"delete\" background task for one or more `Invite` entities.
    //
    //Future<BatchJobV1> batchDeleteInvites({ IdentifierListV1 identifierListV1 }) async
    test('test batchDeleteInvites', () async {
      // TODO
    });

    // Create an Invite
    //
    // Creates a new `Invite` for a specific `Location`.
    //
    //Future<InviteDetailV1> createLocationInvite(String locationId, InviteCreateParamsV1 inviteCreateParamsV1, { String idempotencyKey }) async
    test('test createLocationInvite', () async {
      // TODO
    });

    // Create an Invite from a Registration
    //
    // Creates a new `Invite` from `Registration` data.
    //
    //Future<InviteDetailV1> createRegistrationInvite(String registrationId, { String idempotencyKey }) async
    test('test createRegistrationInvite', () async {
      // TODO
    });

    // Deletes an Invite
    //
    // Deletes a single instance of `Invite`
    //
    //Future deleteInvite(String inviteId, { String idempotencyKey }) async
    test('test deleteInvite', () async {
      // TODO
    });

    // Get an Invite
    //
    // Gets the details of a single instance of a `Invite`.
    //
    //Future<InviteDetailV1> getInvite(String inviteId, { String include }) async
    test('test getInvite', () async {
      // TODO
    });

    // List all Invites
    //
    // Gets a list of all `Invite` entities.
    //
    //Future<PaginatedInvitesListV1> getInvites({ int limit, int offset, String query, String withColours, String locationIds, String sortBy, DateTime startsBefore, DateTime startsAfter, String include, bool isApproved, DateTime activeAfter, DateTime activeBefore }) async
    test('test getInvites', () async {
      // TODO
    });

    // Update an Invite
    //
    // Updates an existing `Invite`.
    //
    //Future<InviteDetailV1> updateInvite(String inviteId, InviteUpdateParamsV1 inviteUpdateParamsV1, { String idempotencyKey }) async
    test('test updateInvite', () async {
      // TODO
    });

  });
}
