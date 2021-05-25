//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/audit_logs_api.dart';
part 'api/batches_api.dart';
part 'api/capacities_api.dart';
part 'api/email_templates_api.dart';
part 'api/group_visits_api.dart';
part 'api/hosts_api.dart';
part 'api/invites_api.dart';
part 'api/locations_api.dart';
part 'api/packages_api.dart';
part 'api/registrations_api.dart';
part 'api/signins_api.dart';
part 'api/users_api.dart';
part 'api/watchlists_api.dart';

part 'model/audit_log.dart';
part 'model/audit_log_change.dart';
part 'model/batch_job.dart';
part 'model/capacity.dart';
part 'model/capacity_by_hour_response.dart';
part 'model/capacity_forecast.dart';
part 'model/custom_field.dart';
part 'model/docusign.dart';
part 'model/email_template.dart';
part 'model/error.dart';
part 'model/errors_list.dart';
part 'model/external_watchlist_result.dart';
part 'model/group_visit.dart';
part 'model/group_visit_create_params.dart';
part 'model/group_visit_update_params.dart';
part 'model/guest_response.dart';
part 'model/host.dart';
part 'model/host_batch_create_params.dart';
part 'model/host_create_params.dart';
part 'model/identifier_list.dart';
part 'model/image.dart';
part 'model/internal_watchlist_result.dart';
part 'model/invite.dart';
part 'model/invite_create_params.dart';
part 'model/invite_detail.dart';
part 'model/invite_update_params.dart';
part 'model/invite_watchlist.dart';
part 'model/location.dart';
part 'model/notification_trigger.dart';
part 'model/notification_trigger_create_params.dart';
part 'model/package.dart';
part 'model/package_create_params.dart';
part 'model/package_update_params.dart';
part 'model/paginated_audit_logs_list.dart';
part 'model/paginated_email_templates_list.dart';
part 'model/paginated_group_visits_list.dart';
part 'model/paginated_hosts_list.dart';
part 'model/paginated_invites_list.dart';
part 'model/paginated_locations_list.dart';
part 'model/paginated_packages_list.dart';
part 'model/paginated_registrations_list.dart';
part 'model/paginated_signins_list.dart';
part 'model/paginated_watchlist_list.dart';
part 'model/pagination.dart';
part 'model/permission_group.dart';
part 'model/registration.dart';
part 'model/registration_detail.dart';
part 'model/signable_document.dart';
part 'model/signin.dart';
part 'model/signin_acknowledgement.dart';
part 'model/signin_create_params.dart';
part 'model/signin_data.dart';
part 'model/signin_detail.dart';
part 'model/signin_update_params.dart';
part 'model/signin_watchlist.dart';
part 'model/simple_signature.dart';
part 'model/user.dart';
part 'model/visitor.dart';
part 'model/watchlist.dart';
part 'model/watchlist_create_params.dart';
part 'model/watchlist_match.dart';
part 'model/watchlist_search.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
