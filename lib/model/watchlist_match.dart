//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WatchlistMatch {
  /// Returns a new [WatchlistMatch] instance.
  WatchlistMatch({
    this.id,
    this.altNames = const [],
    this.federalRegisterNotice,
    @required this.name,
    this.sourceInformationUrl,
    this.sourceListUrl,
    @required this.list,
    this.type,
    this.category,
    this.street1,
    this.street2,
    this.city,
    this.state,
    this.country,
    this.notes,
    this.frc,
    this.start,
    this.end,
    this.frserve,
    this.optionalID,
    this.alertType,
    this.pairStatus,
    this.pairReason,
    this.pairComments,
    this.applicationDisplayName,
    this.applicationId,
    this.clientId,
    this.clientKey,
    this.clientFullName,
    this.listKey,
    this.listName,
    this.listId,
    this.listVersion,
    this.listModifyDate,
    this.listProfileId,
    this.listProfileKey,
    this.linkSingleStringName,
    this.listParentSingleStringName,
    this.listCategory,
    this.listPepCategory,
    this.listDoBs,
    this.listCountries,
    this.rankString,
    this.ranktype,
    this.rankweight,
    this.pairLoadDate,
    this.eAddressTo,
    this.eAddressCc,
    this.origin,
    this.secondsviewed,
    this.initialUser,
    this.isPairParentFlag,
    this.pairMetSearchCriteriaFlag,
    this.editableDueToAssignmentFlag,
    this.modifyDate,
    this.modifiedByUser,
    this.pairReportType,
    this.finscanCategory,
    this.wrapperStatus,
    this.sourceLists,
  });

  String id;

  List<String> altNames;

  String federalRegisterNotice;

  String name;

  String sourceInformationUrl;

  String sourceListUrl;

  String list;

  /// 
  String type;

  /// 
  String category;

  /// 
  String street1;

  /// 
  String street2;

  /// 
  String city;

  /// 
  String state;

  /// 
  String country;

  /// 
  String notes;

  /// 
  String frc;

  /// 
  String start;

  /// 
  String end;

  /// 
  String frserve;

  /// 
  String optionalID;

  /// 
  String alertType;

  /// 
  String pairStatus;

  /// 
  String pairReason;

  /// 
  String pairComments;

  /// 
  String applicationDisplayName;

  /// 
  String applicationId;

  /// 
  String clientId;

  /// 
  String clientKey;

  /// 
  String clientFullName;

  /// 
  String listKey;

  /// 
  String listName;

  /// 
  String listId;

  /// 
  String listVersion;

  /// 
  String listModifyDate;

  /// 
  String listProfileId;

  /// 
  String listProfileKey;

  /// 
  String linkSingleStringName;

  /// 
  String listParentSingleStringName;

  /// 
  String listCategory;

  /// 
  String listPepCategory;

  /// 
  String listDoBs;

  /// 
  String listCountries;

  /// 
  String rankString;

  /// 
  String ranktype;

  /// 
  String rankweight;

  /// 
  String pairLoadDate;

  /// 
  String eAddressTo;

  /// 
  String eAddressCc;

  /// 
  String origin;

  /// 
  String secondsviewed;

  /// 
  String initialUser;

  /// 
  String isPairParentFlag;

  /// 
  String pairMetSearchCriteriaFlag;

  /// 
  String editableDueToAssignmentFlag;

  /// 
  String modifyDate;

  /// 
  String modifiedByUser;

  /// 
  String pairReportType;

  /// 
  String finscanCategory;

  /// 
  String wrapperStatus;

  /// 
  String sourceLists;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WatchlistMatch &&
     other.id == id &&
     other.altNames == altNames &&
     other.federalRegisterNotice == federalRegisterNotice &&
     other.name == name &&
     other.sourceInformationUrl == sourceInformationUrl &&
     other.sourceListUrl == sourceListUrl &&
     other.list == list &&
     other.type == type &&
     other.category == category &&
     other.street1 == street1 &&
     other.street2 == street2 &&
     other.city == city &&
     other.state == state &&
     other.country == country &&
     other.notes == notes &&
     other.frc == frc &&
     other.start == start &&
     other.end == end &&
     other.frserve == frserve &&
     other.optionalID == optionalID &&
     other.alertType == alertType &&
     other.pairStatus == pairStatus &&
     other.pairReason == pairReason &&
     other.pairComments == pairComments &&
     other.applicationDisplayName == applicationDisplayName &&
     other.applicationId == applicationId &&
     other.clientId == clientId &&
     other.clientKey == clientKey &&
     other.clientFullName == clientFullName &&
     other.listKey == listKey &&
     other.listName == listName &&
     other.listId == listId &&
     other.listVersion == listVersion &&
     other.listModifyDate == listModifyDate &&
     other.listProfileId == listProfileId &&
     other.listProfileKey == listProfileKey &&
     other.linkSingleStringName == linkSingleStringName &&
     other.listParentSingleStringName == listParentSingleStringName &&
     other.listCategory == listCategory &&
     other.listPepCategory == listPepCategory &&
     other.listDoBs == listDoBs &&
     other.listCountries == listCountries &&
     other.rankString == rankString &&
     other.ranktype == ranktype &&
     other.rankweight == rankweight &&
     other.pairLoadDate == pairLoadDate &&
     other.eAddressTo == eAddressTo &&
     other.eAddressCc == eAddressCc &&
     other.origin == origin &&
     other.secondsviewed == secondsviewed &&
     other.initialUser == initialUser &&
     other.isPairParentFlag == isPairParentFlag &&
     other.pairMetSearchCriteriaFlag == pairMetSearchCriteriaFlag &&
     other.editableDueToAssignmentFlag == editableDueToAssignmentFlag &&
     other.modifyDate == modifyDate &&
     other.modifiedByUser == modifiedByUser &&
     other.pairReportType == pairReportType &&
     other.finscanCategory == finscanCategory &&
     other.wrapperStatus == wrapperStatus &&
     other.sourceLists == sourceLists;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (altNames == null ? 0 : altNames.hashCode) +
    (federalRegisterNotice == null ? 0 : federalRegisterNotice.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (sourceInformationUrl == null ? 0 : sourceInformationUrl.hashCode) +
    (sourceListUrl == null ? 0 : sourceListUrl.hashCode) +
    (list == null ? 0 : list.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (category == null ? 0 : category.hashCode) +
    (street1 == null ? 0 : street1.hashCode) +
    (street2 == null ? 0 : street2.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (country == null ? 0 : country.hashCode) +
    (notes == null ? 0 : notes.hashCode) +
    (frc == null ? 0 : frc.hashCode) +
    (start == null ? 0 : start.hashCode) +
    (end == null ? 0 : end.hashCode) +
    (frserve == null ? 0 : frserve.hashCode) +
    (optionalID == null ? 0 : optionalID.hashCode) +
    (alertType == null ? 0 : alertType.hashCode) +
    (pairStatus == null ? 0 : pairStatus.hashCode) +
    (pairReason == null ? 0 : pairReason.hashCode) +
    (pairComments == null ? 0 : pairComments.hashCode) +
    (applicationDisplayName == null ? 0 : applicationDisplayName.hashCode) +
    (applicationId == null ? 0 : applicationId.hashCode) +
    (clientId == null ? 0 : clientId.hashCode) +
    (clientKey == null ? 0 : clientKey.hashCode) +
    (clientFullName == null ? 0 : clientFullName.hashCode) +
    (listKey == null ? 0 : listKey.hashCode) +
    (listName == null ? 0 : listName.hashCode) +
    (listId == null ? 0 : listId.hashCode) +
    (listVersion == null ? 0 : listVersion.hashCode) +
    (listModifyDate == null ? 0 : listModifyDate.hashCode) +
    (listProfileId == null ? 0 : listProfileId.hashCode) +
    (listProfileKey == null ? 0 : listProfileKey.hashCode) +
    (linkSingleStringName == null ? 0 : linkSingleStringName.hashCode) +
    (listParentSingleStringName == null ? 0 : listParentSingleStringName.hashCode) +
    (listCategory == null ? 0 : listCategory.hashCode) +
    (listPepCategory == null ? 0 : listPepCategory.hashCode) +
    (listDoBs == null ? 0 : listDoBs.hashCode) +
    (listCountries == null ? 0 : listCountries.hashCode) +
    (rankString == null ? 0 : rankString.hashCode) +
    (ranktype == null ? 0 : ranktype.hashCode) +
    (rankweight == null ? 0 : rankweight.hashCode) +
    (pairLoadDate == null ? 0 : pairLoadDate.hashCode) +
    (eAddressTo == null ? 0 : eAddressTo.hashCode) +
    (eAddressCc == null ? 0 : eAddressCc.hashCode) +
    (origin == null ? 0 : origin.hashCode) +
    (secondsviewed == null ? 0 : secondsviewed.hashCode) +
    (initialUser == null ? 0 : initialUser.hashCode) +
    (isPairParentFlag == null ? 0 : isPairParentFlag.hashCode) +
    (pairMetSearchCriteriaFlag == null ? 0 : pairMetSearchCriteriaFlag.hashCode) +
    (editableDueToAssignmentFlag == null ? 0 : editableDueToAssignmentFlag.hashCode) +
    (modifyDate == null ? 0 : modifyDate.hashCode) +
    (modifiedByUser == null ? 0 : modifiedByUser.hashCode) +
    (pairReportType == null ? 0 : pairReportType.hashCode) +
    (finscanCategory == null ? 0 : finscanCategory.hashCode) +
    (wrapperStatus == null ? 0 : wrapperStatus.hashCode) +
    (sourceLists == null ? 0 : sourceLists.hashCode);

  @override
  String toString() => 'WatchlistMatch[id=$id, altNames=$altNames, federalRegisterNotice=$federalRegisterNotice, name=$name, sourceInformationUrl=$sourceInformationUrl, sourceListUrl=$sourceListUrl, list=$list, type=$type, category=$category, street1=$street1, street2=$street2, city=$city, state=$state, country=$country, notes=$notes, frc=$frc, start=$start, end=$end, frserve=$frserve, optionalID=$optionalID, alertType=$alertType, pairStatus=$pairStatus, pairReason=$pairReason, pairComments=$pairComments, applicationDisplayName=$applicationDisplayName, applicationId=$applicationId, clientId=$clientId, clientKey=$clientKey, clientFullName=$clientFullName, listKey=$listKey, listName=$listName, listId=$listId, listVersion=$listVersion, listModifyDate=$listModifyDate, listProfileId=$listProfileId, listProfileKey=$listProfileKey, linkSingleStringName=$linkSingleStringName, listParentSingleStringName=$listParentSingleStringName, listCategory=$listCategory, listPepCategory=$listPepCategory, listDoBs=$listDoBs, listCountries=$listCountries, rankString=$rankString, ranktype=$ranktype, rankweight=$rankweight, pairLoadDate=$pairLoadDate, eAddressTo=$eAddressTo, eAddressCc=$eAddressCc, origin=$origin, secondsviewed=$secondsviewed, initialUser=$initialUser, isPairParentFlag=$isPairParentFlag, pairMetSearchCriteriaFlag=$pairMetSearchCriteriaFlag, editableDueToAssignmentFlag=$editableDueToAssignmentFlag, modifyDate=$modifyDate, modifiedByUser=$modifiedByUser, pairReportType=$pairReportType, finscanCategory=$finscanCategory, wrapperStatus=$wrapperStatus, sourceLists=$sourceLists]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (altNames != null) {
      json[r'alt_names'] = altNames;
    }
    if (federalRegisterNotice != null) {
      json[r'federal_register_notice'] = federalRegisterNotice;
    }
      json[r'name'] = name;
    if (sourceInformationUrl != null) {
      json[r'source_information_url'] = sourceInformationUrl;
    }
    if (sourceListUrl != null) {
      json[r'source_list_url'] = sourceListUrl;
    }
      json[r'list'] = list;
    if (type != null) {
      json[r'type'] = type;
    }
    if (category != null) {
      json[r'category'] = category;
    }
    if (street1 != null) {
      json[r'street1'] = street1;
    }
    if (street2 != null) {
      json[r'street2'] = street2;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (country != null) {
      json[r'country'] = country;
    }
    if (notes != null) {
      json[r'notes'] = notes;
    }
    if (frc != null) {
      json[r'frc'] = frc;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (end != null) {
      json[r'end'] = end;
    }
    if (frserve != null) {
      json[r'frserve'] = frserve;
    }
    if (optionalID != null) {
      json[r'optional_ID'] = optionalID;
    }
    if (alertType != null) {
      json[r'alert_type'] = alertType;
    }
    if (pairStatus != null) {
      json[r'pair_status'] = pairStatus;
    }
    if (pairReason != null) {
      json[r'pair_reason'] = pairReason;
    }
    if (pairComments != null) {
      json[r'pair_comments'] = pairComments;
    }
    if (applicationDisplayName != null) {
      json[r'application_display_name'] = applicationDisplayName;
    }
    if (applicationId != null) {
      json[r'application_id'] = applicationId;
    }
    if (clientId != null) {
      json[r'client_id'] = clientId;
    }
    if (clientKey != null) {
      json[r'client_key'] = clientKey;
    }
    if (clientFullName != null) {
      json[r'client_full_name'] = clientFullName;
    }
    if (listKey != null) {
      json[r'list_key'] = listKey;
    }
    if (listName != null) {
      json[r'list_name'] = listName;
    }
    if (listId != null) {
      json[r'list_id'] = listId;
    }
    if (listVersion != null) {
      json[r'list_version'] = listVersion;
    }
    if (listModifyDate != null) {
      json[r'list_modify_date'] = listModifyDate;
    }
    if (listProfileId != null) {
      json[r'list_profile_id'] = listProfileId;
    }
    if (listProfileKey != null) {
      json[r'list_profile_key'] = listProfileKey;
    }
    if (linkSingleStringName != null) {
      json[r'link_single_string_name'] = linkSingleStringName;
    }
    if (listParentSingleStringName != null) {
      json[r'list_parent_single_string_name'] = listParentSingleStringName;
    }
    if (listCategory != null) {
      json[r'list_category'] = listCategory;
    }
    if (listPepCategory != null) {
      json[r'list_pep_category'] = listPepCategory;
    }
    if (listDoBs != null) {
      json[r'list_do_bs'] = listDoBs;
    }
    if (listCountries != null) {
      json[r'list_countries'] = listCountries;
    }
    if (rankString != null) {
      json[r'rank_string'] = rankString;
    }
    if (ranktype != null) {
      json[r'ranktype'] = ranktype;
    }
    if (rankweight != null) {
      json[r'rankweight'] = rankweight;
    }
    if (pairLoadDate != null) {
      json[r'pair_load_date'] = pairLoadDate;
    }
    if (eAddressTo != null) {
      json[r'e_address_to'] = eAddressTo;
    }
    if (eAddressCc != null) {
      json[r'e_address_cc'] = eAddressCc;
    }
    if (origin != null) {
      json[r'origin'] = origin;
    }
    if (secondsviewed != null) {
      json[r'secondsviewed'] = secondsviewed;
    }
    if (initialUser != null) {
      json[r'initial_user'] = initialUser;
    }
    if (isPairParentFlag != null) {
      json[r'is_pair_parent_flag'] = isPairParentFlag;
    }
    if (pairMetSearchCriteriaFlag != null) {
      json[r'pair_met_search_criteria_flag'] = pairMetSearchCriteriaFlag;
    }
    if (editableDueToAssignmentFlag != null) {
      json[r'editable_due_to_assignment_flag'] = editableDueToAssignmentFlag;
    }
    if (modifyDate != null) {
      json[r'modify_date'] = modifyDate;
    }
    if (modifiedByUser != null) {
      json[r'modified_by_user'] = modifiedByUser;
    }
    if (pairReportType != null) {
      json[r'pair_report_type'] = pairReportType;
    }
    if (finscanCategory != null) {
      json[r'finscan_category'] = finscanCategory;
    }
    if (wrapperStatus != null) {
      json[r'wrapper_status'] = wrapperStatus;
    }
    if (sourceLists != null) {
      json[r'source_lists'] = sourceLists;
    }
    return json;
  }

  /// Returns a new [WatchlistMatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WatchlistMatch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WatchlistMatch(
        id: json[r'id'],
        altNames: json[r'alt_names'] == null
          ? null
          : (json[r'alt_names'] as List).cast<String>(),
        federalRegisterNotice: json[r'federal_register_notice'],
        name: json[r'name'],
        sourceInformationUrl: json[r'source_information_url'],
        sourceListUrl: json[r'source_list_url'],
        list: json[r'list'],
        type: json[r'type'],
        category: json[r'category'],
        street1: json[r'street1'],
        street2: json[r'street2'],
        city: json[r'city'],
        state: json[r'state'],
        country: json[r'country'],
        notes: json[r'notes'],
        frc: json[r'frc'],
        start: json[r'start'],
        end: json[r'end'],
        frserve: json[r'frserve'],
        optionalID: json[r'optional_ID'],
        alertType: json[r'alert_type'],
        pairStatus: json[r'pair_status'],
        pairReason: json[r'pair_reason'],
        pairComments: json[r'pair_comments'],
        applicationDisplayName: json[r'application_display_name'],
        applicationId: json[r'application_id'],
        clientId: json[r'client_id'],
        clientKey: json[r'client_key'],
        clientFullName: json[r'client_full_name'],
        listKey: json[r'list_key'],
        listName: json[r'list_name'],
        listId: json[r'list_id'],
        listVersion: json[r'list_version'],
        listModifyDate: json[r'list_modify_date'],
        listProfileId: json[r'list_profile_id'],
        listProfileKey: json[r'list_profile_key'],
        linkSingleStringName: json[r'link_single_string_name'],
        listParentSingleStringName: json[r'list_parent_single_string_name'],
        listCategory: json[r'list_category'],
        listPepCategory: json[r'list_pep_category'],
        listDoBs: json[r'list_do_bs'],
        listCountries: json[r'list_countries'],
        rankString: json[r'rank_string'],
        ranktype: json[r'ranktype'],
        rankweight: json[r'rankweight'],
        pairLoadDate: json[r'pair_load_date'],
        eAddressTo: json[r'e_address_to'],
        eAddressCc: json[r'e_address_cc'],
        origin: json[r'origin'],
        secondsviewed: json[r'secondsviewed'],
        initialUser: json[r'initial_user'],
        isPairParentFlag: json[r'is_pair_parent_flag'],
        pairMetSearchCriteriaFlag: json[r'pair_met_search_criteria_flag'],
        editableDueToAssignmentFlag: json[r'editable_due_to_assignment_flag'],
        modifyDate: json[r'modify_date'],
        modifiedByUser: json[r'modified_by_user'],
        pairReportType: json[r'pair_report_type'],
        finscanCategory: json[r'finscan_category'],
        wrapperStatus: json[r'wrapper_status'],
        sourceLists: json[r'source_lists'],
    );

  static List<WatchlistMatch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WatchlistMatch>[]
      : json.map((v) => WatchlistMatch.fromJson(v)).toList(growable: true == growable);

  static Map<String, WatchlistMatch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WatchlistMatch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WatchlistMatch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WatchlistMatch-objects as value to a dart map
  static Map<String, List<WatchlistMatch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WatchlistMatch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WatchlistMatch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

