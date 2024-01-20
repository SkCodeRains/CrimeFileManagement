package mybeans;

import java.io.InputStream;
import java.sql.*;

public class uploadMyAnonymousData {
	String Complaint_Id, Category, AppDate, AppTime, Delay_Reason, Incident_Occur, EvidenceType, State, District,
			Police_Station, Additional_Info, Status, DOC, Suspect_Name, Suspect_Id, Id_Number, Address,
			SAdditional_Info;
	InputStream Evidence;
	int statuss;

	public void setComplaint_Id(String complaint_Id) {
		Complaint_Id = complaint_Id;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public void setAppDate(String appDate) {
		AppDate = appDate;
	}

	public void setAppTime(String appTime) {
		AppTime = appTime;
	}

	public void setDelay_Reason(String delay_Reason) {
		Delay_Reason = delay_Reason;
	}

	public void setIncident_Occur(String incident_Occur) {
		Incident_Occur = incident_Occur;
	}

	public void setEvidence(InputStream evidence) {
		Evidence = evidence;
	}

	public void setEvidenceType(String evidenceType) {
		EvidenceType = evidenceType;
	}

	public void setState(String state) {
		State = state;
	}

	public void setDistrict(String district) {
		District = district;
	}

	public void setPolice_Station(String police_Station) {
		Police_Station = police_Station;
	}

	public void setAdditinal_Info(String additional_Info) {
		Additional_Info = additional_Info;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public void setDOC(String dOC) {
		DOC = dOC;
	}

	public void setSuspect_Name(String suspect_Name) {
		Suspect_Name = suspect_Name;
	}

	public void setSuspect_Id(String suspect_Id) {
		Suspect_Id = suspect_Id;
	}

	public void setId_Number(String id_Number) {
		Id_Number = id_Number;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public void setSAdditional_Info(String Sadditional_Info) {
		SAdditional_Info = Sadditional_Info;
		uploadMyAnonymousDataUpload();
	}

	public void uploadMyAnonymousDataUpload() {
		try {
			Connection cn = DbConnection.getConnection();
			CallableStatement cs = cn.prepareCall("{call InsertsAnonymous (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) }");
			cs.setString(1, Complaint_Id);
			cs.setString(2, Category);
			cs.setString(3, AppDate);
			cs.setString(4, AppTime);
			cs.setString(5, Delay_Reason);
			cs.setString(6, Incident_Occur);
			cs.setBlob(7, Evidence);
			cs.setString(8, EvidenceType);
			cs.setString(9, State);
			cs.setString(10, District);
			cs.setString(11, Police_Station);
			cs.setString(12, Additional_Info);
			cs.setString(13, Status);
			cs.setString(14, DOC);
			cs.setString(15, Suspect_Name);
			cs.setString(16, Suspect_Id);
			cs.setString(17, Id_Number);
			cs.setString(18, Address);
			cs.setString(19, Additional_Info);
			statuss = cs.executeUpdate();

		} catch (Exception e) {
			System.err.println(e);
		}
	}

	public int getStatuss() {
		return statuss;
	}

}
