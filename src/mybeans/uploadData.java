package mybeans;

import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.Connection;

public class uploadData {
	String Complaint_Id, Category, sCategory, date, time, RFDIR, occurapps, EvidenceType, PPAAI;
	String Sname, Suspect_Id, numbr, SADDRESS, SPPAA;
	String unm, rzn, dob, wi, Email, uaddress, rela, wiv, PAAIV;
	InputStream Evidence;
	int statuss = 0;

	public String getComplaint_Id() {
		return Complaint_Id;
	}

	public void setComplaint_Id(String complaint_Id) {
		Complaint_Id = complaint_Id;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public String getsCategory() {
		return sCategory;
	}

	public void setsCategory(String sCategory) {
		this.sCategory = sCategory;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getRFDIR() {
		return RFDIR;
	}

	public void setRFDIR(String rFDIR) {
		RFDIR = rFDIR;
	}

	public String getOccurapps() {
		return occurapps;
	}

	public void setOccurapps(String occurapps) {
		this.occurapps = occurapps;
	}

	public String getEvidenceType() {
		return EvidenceType;
	}

	public void setEvidenceType(String evidenceType) {
		EvidenceType = evidenceType;
	}

	public String getPPAAI() {
		return PPAAI;
	}

	public void setPPAAI(String pPAAI) {
		PPAAI = pPAAI;
	}

	public String getSname() {
		return Sname;
	}

	public void setSname(String sname) {
		Sname = sname;
	}

	public String getSuspect_Id() {
		return Suspect_Id;
	}

	public void setSuspect_Id(String suspect_Id) {
		Suspect_Id = suspect_Id;
	}

	public String getNumbr() {
		return numbr;
	}

	public void setNumbr(String numbr) {
		this.numbr = numbr;
	}

	public String getSADDRESS() {
		return SADDRESS;
	}

	public void setSADDRESS(String sADDRESS) {
		SADDRESS = sADDRESS;
	}

	public String getSPPAA() {
		return SPPAA;
	}

	public void setSPPAA(String sPPAA) {
		SPPAA = sPPAA;
	}

	public String getUnm() {
		return unm;
	}

	public void setUnm(String unm) {
		this.unm = unm;
	}

	public String getRzn() {
		return rzn;
	}

	public void setRzn(String rzn) {
		this.rzn = rzn;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getWi() {
		return wi;
	}

	public void setWi(String wi) {
		this.wi = wi;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getUaddress() {
		return uaddress;
	}

	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}

	public String getRela() {
		return rela;
	}

	public void setRela(String rela) {
		this.rela = rela;
	}

	public String getWiv() {
		return wiv;
	}

	public void setWiv(String wiv) {
		this.wiv = wiv;
	}

	public String getPAAIV() {
		return PAAIV;

	}

	public void setPAAIV(String pAAIV) {
		PAAIV = pAAIV;
		operation();
	}

	public InputStream getEvidence() {
		return Evidence;
	}

	public void setEvidence(InputStream evidence) {
		Evidence = evidence;
	}

	public void operation() {
		Connection cn = DbConnection.getConnection();
		try {
			CallableStatement ct = cn.prepareCall("{call Inserts(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
			ct.setString(1, Complaint_Id);
			ct.setString(2, Category);
			ct.setString(3, sCategory);
			ct.setString(4, date);
			ct.setString(5, time);
			ct.setString(6, RFDIR);
			ct.setString(7, occurapps);
			ct.setBlob(8, Evidence);
			ct.setString(9, EvidenceType);
			ct.setString(10, PPAAI);

			ct.setString(11, Suspect_Id);
			ct.setString(12, numbr);
			ct.setString(13, SADDRESS);
			ct.setString(14, SPPAA);

			ct.setString(15, unm);
			ct.setString(16, rzn);
			ct.setString(17, dob);
			ct.setString(18, wi);
			ct.setString(19, Email);
			ct.setString(20, uaddress);
			ct.setString(21, rela);
			ct.setString(22, wiv);
			ct.setString(23, PAAIV);
			ct.setString(24, Sname);
			statuss = ct.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public int getStatuss() {
		return statuss;
	}
}
