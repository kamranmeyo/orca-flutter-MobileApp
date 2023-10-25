class GetForm2ApiModel {
  int? id;
  String? name;
  String? client;
  String? reportNo;
  String? reportDate;
  String? clientNameAdd;
  String? regNo;
  String? vDMake;
  String? vDModel;
  String? engineNo;
  String? fuel;
  String? range1;
  String? range2;
  String? range3;
  String? state;
  String? printState;
  int? autoNo;
  String? createBy;
  String? result1;
  String? result1WL;

  GetForm2ApiModel(
      {this.id,
      this.name,
      this.client,
      this.reportNo,
      this.reportDate,
      this.clientNameAdd,
      this.regNo,
      this.vDMake,
      this.vDModel,
      this.engineNo,
      this.fuel,
      this.range1,
      this.range2,
      this.range3,
      this.state,
      this.printState,
      this.autoNo,
      this.createBy,
      this.result1,
      this.result1WL});

  GetForm2ApiModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    client = json['Client'];
    reportNo = json['ReportNo'];
    reportDate = json['ReportDate'];
    clientNameAdd = json['ClientNameAdd'];
    regNo = json['RegNo'];
    vDMake = json['VDMake'];
    vDModel = json['VDModel'];
    engineNo = json['EngineNo'];
    fuel = json['Fuel'];
    range1 = json['Range1'];
    range2 = json['Range2'];
    range3 = json['Range3'];
    state = json['State'];
    printState = json['PrintState'];
    autoNo = json['AutoNo'];
    createBy = json['CreateBy'];
    result1 = json['Result1'];
    result1WL = json['Result1WL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['Client'] = this.client;
    data['ReportNo'] = this.reportNo;
    data['ReportDate'] = this.reportDate;
    data['ClientNameAdd'] = this.clientNameAdd;
    data['RegNo'] = this.regNo;
    data['VDMake'] = this.vDMake;
    data['VDModel'] = this.vDModel;
    data['EngineNo'] = this.engineNo;
    data['Fuel'] = this.fuel;
    data['Range1'] = this.range1;
    data['Range2'] = this.range2;
    data['Range3'] = this.range3;
    data['State'] = this.state;
    data['PrintState'] = this.printState;
    data['AutoNo'] = this.autoNo;
    data['CreateBy'] = this.createBy;
    data['Result1'] = this.result1;
    data['Result1WL'] = this.result1WL;
    return data;
  }
}
