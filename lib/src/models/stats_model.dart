class StatsModel {
  List<CasesTimeSeries> casesTimeSeries;
  List<Statewise> statewise;
  List<Tested> tested;

  StatsModel({this.casesTimeSeries, this.statewise, this.tested});

  StatsModel.fromJson(Map<String, dynamic> json) {
    if (json['cases_time_series'] != null) {
      casesTimeSeries = List<CasesTimeSeries>();
      json['cases_time_series'].forEach((v) {
        casesTimeSeries.add(CasesTimeSeries.fromJson(v));
      });
    }
    if (json['statewise'] != null) {
      statewise = List<Statewise>();
      json['statewise'].forEach((v) {
        statewise.add(Statewise.fromJson(v));
      });
    }
    if (json['tested'] != null) {
      tested = List<Tested>();
      json['tested'].forEach((v) {
        tested.add(Tested.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.casesTimeSeries != null) {
      data['cases_time_series'] =
          this.casesTimeSeries.map((v) => v.toJson()).toList();
    }
    if (this.statewise != null) {
      data['statewise'] = this.statewise.map((v) => v.toJson()).toList();
    }
    if (this.tested != null) {
      data['tested'] = this.tested.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CasesTimeSeries {
  String dailyconfirmed;
  String dailydeceased;
  String dailyrecovered;
  String date;
  String dateymd;
  String totalconfirmed;
  String totaldeceased;
  String totalrecovered;

  CasesTimeSeries(
      {this.dailyconfirmed,
      this.dailydeceased,
      this.dailyrecovered,
      this.date,
      this.dateymd,
      this.totalconfirmed,
      this.totaldeceased,
      this.totalrecovered});

  CasesTimeSeries.fromJson(Map<String, dynamic> json) {
    dailyconfirmed = json['dailyconfirmed'];
    dailydeceased = json['dailydeceased'];
    dailyrecovered = json['dailyrecovered'];
    date = json['date'];
    dateymd = json['dateymd'];
    totalconfirmed = json['totalconfirmed'];
    totaldeceased = json['totaldeceased'];
    totalrecovered = json['totalrecovered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['dailyconfirmed'] = this.dailyconfirmed;
    data['dailydeceased'] = this.dailydeceased;
    data['dailyrecovered'] = this.dailyrecovered;
    data['date'] = this.date;
    data['dateymd'] = this.dateymd;
    data['totalconfirmed'] = this.totalconfirmed;
    data['totaldeceased'] = this.totaldeceased;
    data['totalrecovered'] = this.totalrecovered;
    return data;
  }
}

class Statewise {
  String active;
  String confirmed;
  String deaths;
  String deltaconfirmed;
  String deltadeaths;
  String deltarecovered;
  String lastupdatedtime;
  String migratedother;
  String recovered;
  String state;
  String statecode;
  String statenotes;

  Statewise(
      {this.active,
      this.confirmed,
      this.deaths,
      this.deltaconfirmed,
      this.deltadeaths,
      this.deltarecovered,
      this.lastupdatedtime,
      this.migratedother,
      this.recovered,
      this.state,
      this.statecode,
      this.statenotes});

  Statewise.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    confirmed = json['confirmed'];
    deaths = json['deaths'];
    deltaconfirmed = json['deltaconfirmed'];
    deltadeaths = json['deltadeaths'];
    deltarecovered = json['deltarecovered'];
    lastupdatedtime = json['lastupdatedtime'];
    migratedother = json['migratedother'];
    recovered = json['recovered'];
    state = json['state'];
    statecode = json['statecode'];
    statenotes = json['statenotes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['active'] = this.active;
    data['confirmed'] = this.confirmed;
    data['deaths'] = this.deaths;
    data['deltaconfirmed'] = this.deltaconfirmed;
    data['deltadeaths'] = this.deltadeaths;
    data['deltarecovered'] = this.deltarecovered;
    data['lastupdatedtime'] = this.lastupdatedtime;
    data['migratedother'] = this.migratedother;
    data['recovered'] = this.recovered;
    data['state'] = this.state;
    data['statecode'] = this.statecode;
    data['statenotes'] = this.statenotes;
    return data;
  }
}

class Tested {
  String dailyrtpcrsamplescollectedicmrapplication;
  String individualstestedperconfirmedcase;
  String positivecasesfromsamplesreported;
  String samplereportedtoday;
  String source;
  String source1;
  String source3;
  String testedasof;
  String testpositivitylast7days;
  String testpositivityrate;
  String testsconductedbyprivatelabs;
  String testsperconfirmedcase;
  String testspermillion;
  String totalindividualstested;
  String totalpositivecases;
  String totalrtpcrsamplescollectedicmrapplication;
  String totalsamplestested;
  String updatetimestamp;

  Tested(
      {this.dailyrtpcrsamplescollectedicmrapplication,
      this.individualstestedperconfirmedcase,
      this.positivecasesfromsamplesreported,
      this.samplereportedtoday,
      this.source,
      this.source1,
      this.source3,
      this.testedasof,
      this.testpositivitylast7days,
      this.testpositivityrate,
      this.testsconductedbyprivatelabs,
      this.testsperconfirmedcase,
      this.testspermillion,
      this.totalindividualstested,
      this.totalpositivecases,
      this.totalrtpcrsamplescollectedicmrapplication,
      this.totalsamplestested,
      this.updatetimestamp});

  Tested.fromJson(Map<String, dynamic> json) {
    dailyrtpcrsamplescollectedicmrapplication =
        json['dailyrtpcrsamplescollectedicmrapplication'];
    individualstestedperconfirmedcase =
        json['individualstestedperconfirmedcase'];
    positivecasesfromsamplesreported = json['positivecasesfromsamplesreported'];
    samplereportedtoday = json['samplereportedtoday'];
    source = json['source'];
    source1 = json['source1'];
    source3 = json['source3'];
    testedasof = json['testedasof'];
    testpositivitylast7days = json['testpositivitylast7days'];
    testpositivityrate = json['testpositivityrate'];
    testsconductedbyprivatelabs = json['testsconductedbyprivatelabs'];
    testsperconfirmedcase = json['testsperconfirmedcase'];
    testspermillion = json['testspermillion'];
    totalindividualstested = json['totalindividualstested'];
    totalpositivecases = json['totalpositivecases'];
    totalrtpcrsamplescollectedicmrapplication =
        json['totalrtpcrsamplescollectedicmrapplication'];
    totalsamplestested = json['totalsamplestested'];
    updatetimestamp = json['updatetimestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['dailyrtpcrsamplescollectedicmrapplication'] =
        this.dailyrtpcrsamplescollectedicmrapplication;
    data['individualstestedperconfirmedcase'] =
        this.individualstestedperconfirmedcase;
    data['positivecasesfromsamplesreported'] =
        this.positivecasesfromsamplesreported;
    data['samplereportedtoday'] = this.samplereportedtoday;
    data['source'] = this.source;
    data['source1'] = this.source1;
    data['source3'] = this.source3;
    data['testedasof'] = this.testedasof;
    data['testpositivitylast7days'] = this.testpositivitylast7days;
    data['testpositivityrate'] = this.testpositivityrate;
    data['testsconductedbyprivatelabs'] = this.testsconductedbyprivatelabs;
    data['testsperconfirmedcase'] = this.testsperconfirmedcase;
    data['testspermillion'] = this.testspermillion;
    data['totalindividualstested'] = this.totalindividualstested;
    data['totalpositivecases'] = this.totalpositivecases;
    data['totalrtpcrsamplescollectedicmrapplication'] =
        this.totalrtpcrsamplescollectedicmrapplication;
    data['totalsamplestested'] = this.totalsamplestested;
    data['updatetimestamp'] = this.updatetimestamp;
    return data;
  }
}
