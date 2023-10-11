//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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

part 'model/audit_log_change_v1.dart';
part 'model/audit_log_v1.dart';
part 'model/batch_job_v1.dart';
part 'model/capacity_by_hour_response_v1.dart';
part 'model/capacity_forecast_v1.dart';
part 'model/capacity_v1.dart';
part 'model/custom_field_v1.dart';
part 'model/docusign_v1.dart';
part 'model/email_template_v1.dart';
part 'model/error_v1.dart';
part 'model/errors_list_v1.dart';
part 'model/external_watchlist_result_v1.dart';
part 'model/group_visit_create_params_v1.dart';
part 'model/group_visit_update_params_v1.dart';
part 'model/group_visit_v1.dart';
part 'model/guest_response_v1.dart';
part 'model/host_batch_create_params_v1.dart';
part 'model/host_create_params_v1.dart';
part 'model/host_v1.dart';
part 'model/identifier_list_v1.dart';
part 'model/image_v1.dart';
part 'model/internal_watchlist_result_v1.dart';
part 'model/invite_create_params_v1.dart';
part 'model/invite_create_params_v1_parking_stall.dart';
part 'model/invite_detail_v1.dart';
part 'model/invite_detail_v1_invites_parking_lot.dart';
part 'model/invite_update_params_v1.dart';
part 'model/invite_v1.dart';
part 'model/invite_watchlist_v1.dart';
part 'model/location_v1.dart';
part 'model/notification_trigger_create_params_v1.dart';
part 'model/notification_trigger_v1.dart';
part 'model/package_create_params_v1.dart';
part 'model/package_update_params_v1.dart';
part 'model/package_v1.dart';
part 'model/paginated_audit_logs_list_v1.dart';
part 'model/paginated_email_templates_list_v1.dart';
part 'model/paginated_group_visits_list_v1.dart';
part 'model/paginated_hosts_list_v1.dart';
part 'model/paginated_invites_list_v1.dart';
part 'model/paginated_locations_list_v1.dart';
part 'model/paginated_packages_list_v1.dart';
part 'model/paginated_registrations_list_v1.dart';
part 'model/paginated_signins_list_v1.dart';
part 'model/paginated_watchlist_list_v1.dart';
part 'model/pagination_v1.dart';
part 'model/permission_group_v1.dart';
part 'model/registration_detail_v1.dart';
part 'model/registration_v1.dart';
part 'model/signable_document_v1.dart';
part 'model/signin_acknowledgement_v1.dart';
part 'model/signin_create_params_v1.dart';
part 'model/signin_data_v1.dart';
part 'model/signin_detail_v1.dart';
part 'model/signin_update_params_v1.dart';
part 'model/signin_v1.dart';
part 'model/signin_watchlist_v1.dart';
part 'model/simple_signature_v1.dart';
part 'model/user_v1.dart';
part 'model/visitor_v1.dart';
part 'model/watchlist_create_params_v1.dart';
part 'model/watchlist_match_v1.dart';
part 'model/watchlist_search_v1.dart';
part 'model/watchlist_v1.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
