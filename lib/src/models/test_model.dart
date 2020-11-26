class TestModel {
  List<StatesTestedData> statesTestedData;

  TestModel({this.statesTestedData});

  TestModel.fromJson(Map<String, dynamic> json) {
    if (json['states_tested_data'] != null) {
      statesTestedData = List<StatesTestedData>();
      json['states_tested_data'].forEach((v) {
        statesTestedData.add(StatesTestedData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.statesTestedData != null) {
      data['states_tested_data'] =
          this.statesTestedData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StatesTestedData {
  String bedsoccupiednormalisolation;
  String casesoutsidehomeisolationiEinstitutionalisolationhospitaletc;
  String covidenquirycalls;
  String cumulativenumberofasymptomaticcases;
  String cumulativenumberofsymptomaticcases;
  String cumulativepeopleinhomeisolation;
  String cumulativepeopleinobservation;
  String cumulativepeopleinquarantine;
  String cumulativepeopleinsurveillance;
  String femaleconfirmedcases;
  String femaledeceasedcases;
  String maleconfirmedcases;
  String maledeceasedcases;
  String negative;
  String numberofcontainmentzones;
  String numberoffluclinics;
  String othertests;
  String peopleonicubeds;
  String peopleono2beds;
  String peopleonventilator;
  String peoplereleasedfromhomeisolation;
  String peoplereleasedfromobservation;
  String peoplereleasedfromsurveillance;
  String positive;
  String ratrapidantigentest;
  String rtPcrtestincludestruenatcbnaatcrispr;
  String source1;
  String source2;
  String source3;
  String state;
  String tagnatureofcases;
  String tagpeopleinisolation;
  String tagpeopleinquarantine;
  String tagpeopleinquarantine2;
  String tagpeopleinsurveillance;
  String tagtotaltested;
  String totaln95masks;
  String totalnumbedsnormalisolation;
  String totalnumicubeds;
  String totalnumofo2beds;
  String totalnumventilators;
  String totalpeoplecurrentlyinisolation;
  String totalpeoplecurrentlyinquarantine;
  String totalpeoplecurrentlyinquarantine2;
  String totalpeoplecurrentlyinsurveillance;
  String totalpeoplereleasedfromquarantine;
  String totalppe;
  String totaltested;
  String transgenderconfirmedcases;
  String transgenderdeceasedcases;
  String unconfirmed;
  String unknownconfirmedcases;
  String unknowndeceasedcases;
  String unknownnatureofcases;
  String updatedon;

  StatesTestedData(
      {this.bedsoccupiednormalisolation,
      this.casesoutsidehomeisolationiEinstitutionalisolationhospitaletc,
      this.covidenquirycalls,
      this.cumulativenumberofasymptomaticcases,
      this.cumulativenumberofsymptomaticcases,
      this.cumulativepeopleinhomeisolation,
      this.cumulativepeopleinobservation,
      this.cumulativepeopleinquarantine,
      this.cumulativepeopleinsurveillance,
      this.femaleconfirmedcases,
      this.femaledeceasedcases,
      this.maleconfirmedcases,
      this.maledeceasedcases,
      this.negative,
      this.numberofcontainmentzones,
      this.numberoffluclinics,
      this.othertests,
      this.peopleonicubeds,
      this.peopleono2beds,
      this.peopleonventilator,
      this.peoplereleasedfromhomeisolation,
      this.peoplereleasedfromobservation,
      this.peoplereleasedfromsurveillance,
      this.positive,
      this.ratrapidantigentest,
      this.rtPcrtestincludestruenatcbnaatcrispr,
      this.source1,
      this.source2,
      this.source3,
      this.state,
      this.tagnatureofcases,
      this.tagpeopleinisolation,
      this.tagpeopleinquarantine,
      this.tagpeopleinquarantine2,
      this.tagpeopleinsurveillance,
      this.tagtotaltested,
      this.totaln95masks,
      this.totalnumbedsnormalisolation,
      this.totalnumicubeds,
      this.totalnumofo2beds,
      this.totalnumventilators,
      this.totalpeoplecurrentlyinisolation,
      this.totalpeoplecurrentlyinquarantine,
      this.totalpeoplecurrentlyinquarantine2,
      this.totalpeoplecurrentlyinsurveillance,
      this.totalpeoplereleasedfromquarantine,
      this.totalppe,
      this.totaltested,
      this.transgenderconfirmedcases,
      this.transgenderdeceasedcases,
      this.unconfirmed,
      this.unknownconfirmedcases,
      this.unknowndeceasedcases,
      this.unknownnatureofcases,
      this.updatedon});

  StatesTestedData.fromJson(Map<String, dynamic> json) {
    bedsoccupiednormalisolation = json['bedsoccupiednormalisolation'];
    casesoutsidehomeisolationiEinstitutionalisolationhospitaletc =
        json['casesoutsidehomeisolationi.einstitutionalisolationhospitaletc.'];
    covidenquirycalls = json['covidenquirycalls'];
    cumulativenumberofasymptomaticcases =
        json['cumulativenumberofasymptomaticcases'];
    cumulativenumberofsymptomaticcases =
        json['cumulativenumberofsymptomaticcases'];
    cumulativepeopleinhomeisolation = json['cumulativepeopleinhomeisolation'];
    cumulativepeopleinobservation = json['cumulativepeopleinobservation'];
    cumulativepeopleinquarantine = json['cumulativepeopleinquarantine'];
    cumulativepeopleinsurveillance = json['cumulativepeopleinsurveillance'];
    femaleconfirmedcases = json['femaleconfirmedcases'];
    femaledeceasedcases = json['femaledeceasedcases'];
    maleconfirmedcases = json['maleconfirmedcases'];
    maledeceasedcases = json['maledeceasedcases'];
    negative = json['negative'];
    numberofcontainmentzones = json['numberofcontainmentzones'];
    numberoffluclinics = json['numberoffluclinics'];
    othertests = json['othertests'];
    peopleonicubeds = json['peopleonicubeds'];
    peopleono2beds = json['peopleono2beds'];
    peopleonventilator = json['peopleonventilator'];
    peoplereleasedfromhomeisolation = json['peoplereleasedfromhomeisolation'];
    peoplereleasedfromobservation = json['peoplereleasedfromobservation'];
    peoplereleasedfromsurveillance = json['peoplereleasedfromsurveillance'];
    positive = json['positive'];
    ratrapidantigentest = json['ratrapidantigentest'];
    rtPcrtestincludestruenatcbnaatcrispr =
        json['rt-pcrtestincludestruenatcbnaatcrispr'];
    source1 = json['source1'];
    source2 = json['source2'];
    source3 = json['source3'];
    state = json['state'];
    tagnatureofcases = json['tagnatureofcases'];
    tagpeopleinisolation = json['tagpeopleinisolation'];
    tagpeopleinquarantine = json['tagpeopleinquarantine'];
    tagpeopleinquarantine2 = json['tagpeopleinquarantine_2'];
    tagpeopleinsurveillance = json['tagpeopleinsurveillance'];
    tagtotaltested = json['tagtotaltested'];
    totaln95masks = json['totaln95masks'];
    totalnumbedsnormalisolation = json['totalnumbedsnormalisolation'];
    totalnumicubeds = json['totalnumicubeds'];
    totalnumofo2beds = json['totalnumofo2beds'];
    totalnumventilators = json['totalnumventilators'];
    totalpeoplecurrentlyinisolation = json['totalpeoplecurrentlyinisolation'];
    totalpeoplecurrentlyinquarantine = json['totalpeoplecurrentlyinquarantine'];
    totalpeoplecurrentlyinquarantine2 =
        json['totalpeoplecurrentlyinquarantine_2'];
    totalpeoplecurrentlyinsurveillance =
        json['totalpeoplecurrentlyinsurveillance'];
    totalpeoplereleasedfromquarantine =
        json['totalpeoplereleasedfromquarantine'];
    totalppe = json['totalppe'];
    totaltested = json['totaltested'];
    transgenderconfirmedcases = json['transgenderconfirmedcases'];
    transgenderdeceasedcases = json['transgenderdeceasedcases'];
    unconfirmed = json['unconfirmed'];
    unknownconfirmedcases = json['unknownconfirmedcases'];
    unknowndeceasedcases = json['unknowndeceasedcases'];
    unknownnatureofcases = json['unknownnatureofcases'];
    updatedon = json['updatedon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['bedsoccupiednormalisolation'] = this.bedsoccupiednormalisolation;
    data['casesoutsidehomeisolationi.einstitutionalisolationhospitaletc.'] =
        this.casesoutsidehomeisolationiEinstitutionalisolationhospitaletc;
    data['covidenquirycalls'] = this.covidenquirycalls;
    data['cumulativenumberofasymptomaticcases'] =
        this.cumulativenumberofasymptomaticcases;
    data['cumulativenumberofsymptomaticcases'] =
        this.cumulativenumberofsymptomaticcases;
    data['cumulativepeopleinhomeisolation'] =
        this.cumulativepeopleinhomeisolation;
    data['cumulativepeopleinobservation'] = this.cumulativepeopleinobservation;
    data['cumulativepeopleinquarantine'] = this.cumulativepeopleinquarantine;
    data['cumulativepeopleinsurveillance'] =
        this.cumulativepeopleinsurveillance;
    data['femaleconfirmedcases'] = this.femaleconfirmedcases;
    data['femaledeceasedcases'] = this.femaledeceasedcases;
    data['maleconfirmedcases'] = this.maleconfirmedcases;
    data['maledeceasedcases'] = this.maledeceasedcases;
    data['negative'] = this.negative;
    data['numberofcontainmentzones'] = this.numberofcontainmentzones;
    data['numberoffluclinics'] = this.numberoffluclinics;
    data['othertests'] = this.othertests;
    data['peopleonicubeds'] = this.peopleonicubeds;
    data['peopleono2beds'] = this.peopleono2beds;
    data['peopleonventilator'] = this.peopleonventilator;
    data['peoplereleasedfromhomeisolation'] =
        this.peoplereleasedfromhomeisolation;
    data['peoplereleasedfromobservation'] = this.peoplereleasedfromobservation;
    data['peoplereleasedfromsurveillance'] =
        this.peoplereleasedfromsurveillance;
    data['positive'] = this.positive;
    data['ratrapidantigentest'] = this.ratrapidantigentest;
    data['rt-pcrtestincludestruenatcbnaatcrispr'] =
        this.rtPcrtestincludestruenatcbnaatcrispr;
    data['source1'] = this.source1;
    data['source2'] = this.source2;
    data['source3'] = this.source3;
    data['state'] = this.state;
    data['tagnatureofcases'] = this.tagnatureofcases;
    data['tagpeopleinisolation'] = this.tagpeopleinisolation;
    data['tagpeopleinquarantine'] = this.tagpeopleinquarantine;
    data['tagpeopleinquarantine_2'] = this.tagpeopleinquarantine2;
    data['tagpeopleinsurveillance'] = this.tagpeopleinsurveillance;
    data['tagtotaltested'] = this.tagtotaltested;
    data['totaln95masks'] = this.totaln95masks;
    data['totalnumbedsnormalisolation'] = this.totalnumbedsnormalisolation;
    data['totalnumicubeds'] = this.totalnumicubeds;
    data['totalnumofo2beds'] = this.totalnumofo2beds;
    data['totalnumventilators'] = this.totalnumventilators;
    data['totalpeoplecurrentlyinisolation'] =
        this.totalpeoplecurrentlyinisolation;
    data['totalpeoplecurrentlyinquarantine'] =
        this.totalpeoplecurrentlyinquarantine;
    data['totalpeoplecurrentlyinquarantine_2'] =
        this.totalpeoplecurrentlyinquarantine2;
    data['totalpeoplecurrentlyinsurveillance'] =
        this.totalpeoplecurrentlyinsurveillance;
    data['totalpeoplereleasedfromquarantine'] =
        this.totalpeoplereleasedfromquarantine;
    data['totalppe'] = this.totalppe;
    data['totaltested'] = this.totaltested;
    data['transgenderconfirmedcases'] = this.transgenderconfirmedcases;
    data['transgenderdeceasedcases'] = this.transgenderdeceasedcases;
    data['unconfirmed'] = this.unconfirmed;
    data['unknownconfirmedcases'] = this.unknownconfirmedcases;
    data['unknowndeceasedcases'] = this.unknowndeceasedcases;
    data['unknownnatureofcases'] = this.unknownnatureofcases;
    data['updatedon'] = this.updatedon;
    return data;
  }
}
