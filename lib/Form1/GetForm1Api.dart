class GetForm1Api {
  int? id;
  String? name;
  String? certificateNo;
  String? calibrationDate;
  String? calibrationDue;
  String? clientName;
  String? clientAddress;
  String? equipmentDetails;
  String? eqRegNo;
  String? eqMake;
  String? eqModel;
  String? refModel;
  String? refMake;
  String? refSerialNo;
  String? traceability;
  String? referenceCode;
  String? tbMake;
  String? range1;
  String? range2;
  String? range3;
  String? range4;
  String? range5;
  String? range6;
  String? range7;
  String? range8;
  String? range9;
  String? range10;
  String? range11;
  String? range12;
  String? range13;
  String? range14;
  String? range15;
  String? range16;
  String? state;
  int? formNoAuto;
  String? dateInWord;
  String? createBy;
  String? printState;
  String? range17;
  String? range18;
  String? range19;
  String? range20;
  String? nA1;
  String? nA2;
  String? nA3;
  String? nA4;

  GetForm1Api(
      {this.id,
      this.name,
      this.certificateNo,
      this.calibrationDate,
      this.calibrationDue,
      this.clientName,
      this.clientAddress,
      this.equipmentDetails,
      this.eqRegNo,
      this.eqMake,
      this.eqModel,
      this.refModel,
      this.refMake,
      this.refSerialNo,
      this.traceability,
      this.referenceCode,
      this.tbMake,
      this.range1,
      this.range2,
      this.range3,
      this.range4,
      this.range5,
      this.range6,
      this.range7,
      this.range8,
      this.range9,
      this.range10,
      this.range11,
      this.range12,
      this.range13,
      this.range14,
      this.range15,
      this.range16,
      this.state,
      this.formNoAuto,
      this.dateInWord,
      this.createBy,
      this.printState,
      this.range17,
      this.range18,
      this.range19,
      this.range20,
      this.nA1,
      this.nA2,
      this.nA3,
      this.nA4});

  GetForm1Api.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    certificateNo = json['CertificateNo'];
    calibrationDate = json['CalibrationDate'];
    calibrationDue = json['CalibrationDue'];
    clientName = json['ClientName'];
    clientAddress = json['ClientAddress'];
    equipmentDetails = json['EquipmentDetails'];
    eqRegNo = json['EqRegNo'];
    eqMake = json['EqMake'];
    eqModel = json['EqModel'];
    refModel = json['RefModel'];
    refMake = json['RefMake'];
    refSerialNo = json['RefSerialNo'];
    traceability = json['Traceability'];
    referenceCode = json['ReferenceCode'];
    tbMake = json['TbMake'];
    range1 = json['Range1'];
    range2 = json['Range2'];
    range3 = json['Range3'];
    range4 = json['Range4'];
    range5 = json['Range5'];
    range6 = json['Range6'];
    range7 = json['Range7'];
    range8 = json['Range8'];
    range9 = json['Range9'];
    range10 = json['Range10'];
    range11 = json['Range11'];
    range12 = json['Range12'];
    range13 = json['Range13'];
    range14 = json['Range14'];
    range15 = json['Range15'];
    range16 = json['Range16'];
    state = json['State'];
    formNoAuto = json['FormNoAuto'];
    dateInWord = json['DateInWord'];
    createBy = json['CreateBy'];
    printState = json['PrintState'];
    range17 = json['Range17'];
    range18 = json['Range18'];
    range19 = json['Range19'];
    range20 = json['Range20'];
    nA1 = json['NA1'];
    nA2 = json['NA2'];
    nA3 = json['NA3'];
    nA4 = json['NA4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['CertificateNo'] = this.certificateNo;
    data['CalibrationDate'] = this.calibrationDate;
    data['CalibrationDue'] = this.calibrationDue;
    data['ClientName'] = this.clientName;
    data['ClientAddress'] = this.clientAddress;
    data['EquipmentDetails'] = this.equipmentDetails;
    data['EqRegNo'] = this.eqRegNo;
    data['EqMake'] = this.eqMake;
    data['EqModel'] = this.eqModel;
    data['RefModel'] = this.refModel;
    data['RefMake'] = this.refMake;
    data['RefSerialNo'] = this.refSerialNo;
    data['Traceability'] = this.traceability;
    data['ReferenceCode'] = this.referenceCode;
    data['TbMake'] = this.tbMake;
    data['Range1'] = this.range1;
    data['Range2'] = this.range2;
    data['Range3'] = this.range3;
    data['Range4'] = this.range4;
    data['Range5'] = this.range5;
    data['Range6'] = this.range6;
    data['Range7'] = this.range7;
    data['Range8'] = this.range8;
    data['Range9'] = this.range9;
    data['Range10'] = this.range10;
    data['Range11'] = this.range11;
    data['Range12'] = this.range12;
    data['Range13'] = this.range13;
    data['Range14'] = this.range14;
    data['Range15'] = this.range15;
    data['Range16'] = this.range16;
    data['State'] = this.state;
    data['FormNoAuto'] = this.formNoAuto;
    data['DateInWord'] = this.dateInWord;
    data['CreateBy'] = this.createBy;
    data['PrintState'] = this.printState;
    data['Range17'] = this.range17;
    data['Range18'] = this.range18;
    data['Range19'] = this.range19;
    data['Range20'] = this.range20;
    data['NA1'] = this.nA1;
    data['NA2'] = this.nA2;
    data['NA3'] = this.nA3;
    data['NA4'] = this.nA4;
    return data;
  }
}
