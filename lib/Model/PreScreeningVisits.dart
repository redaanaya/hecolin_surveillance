class PrescreeningVisits
{

  String VRID="";
  String TypeOfVisit="";
  DateTime VisitDate=DateTime.now();
  String VisitDateString="";

  bool VisitDone=false;
  int VisitDoneInt=2;


  PrescreeningVisits(String a_strVRID,String a_strTypeOfVisit,DateTime a_dtVisitDate,bool a_bVisitDone)
  {
    this.VRID=a_strVRID;
    this.TypeOfVisit=a_strTypeOfVisit;
    this.VisitDate=a_dtVisitDate;
    this.VisitDone=a_bVisitDone;
  }

  PrescreeningVisits.fromMap(Map<String, dynamic> result)
      : VRID = result["VRID"],
        TypeOfVisit = result["TypeOfVisit"],
        VisitDateString = result["VisitDate"],
        VisitDoneInt = result["VisitDone"];
  Map<String, Object> toMap() {
    return {
      'VRID': VRID,
      'TypeOfVisit': TypeOfVisit,
      'VisitDate': VisitDate,
      'VisitDone': VisitDone
    };
  }

}