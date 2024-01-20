package myservlets;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import mybeans.GenerateID;
import mybeans.uploadData;

@MultipartConfig(maxFileSize = 1073741824)
@WebServlet("/ccnaUpload")
public class genralUplaod extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String Complaint_Id, Category, sCategory, date, time, RFDIR, occurapps, EvidenceType, PPAAI;
		String Sname, Suspect_Id, numbr, SADDRESS, SPPAA;
		String unm, rzn, dob, wi, Email, uaddress, rela, wiv, PAAIV;
		InputStream Evidence;

		try {
			uploadData obj = new uploadData();

			GenerateID ID = new GenerateID();
			ID.SetID();
			Part fp = request.getPart("evidence");

			Complaint_Id = ID.getIDCo();
			Category = request.getParameter("Category");
			sCategory = request.getParameter("sCategory");
			date = request.getParameter("date");
			time = request.getParameter("time");
			EvidenceType = fp.getContentType();
			Evidence = fp.getInputStream();
			RFDIR = request.getParameter("RFDIR");
			occurapps = request.getParameter("occurapps");
			PPAAI = request.getParameter("PPAAI");

			Sname = request.getParameter("Sname");
			Suspect_Id = request.getParameter("SuspectId");
			numbr = request.getParameter("numbr");
			SADDRESS = request.getParameter("SADDRESS");
			SPPAA = request.getParameter("SPPAA");

			unm = request.getParameter("unm");
			rzn = request.getParameter("rzn");
			dob = request.getParameter("dob");
			wi = request.getParameter("wi");
			Email = request.getParameter("Email");
			uaddress = request.getParameter("uaddress");
			rela = request.getParameter("rela");
			wiv = request.getParameter("wiv");
			PAAIV = request.getParameter("PAAIV");

			obj.setComplaint_Id(Complaint_Id);
			obj.setEvidenceType(EvidenceType);
			obj.setEvidence(Evidence);
			obj.setCategory(Category);
			obj.setsCategory(sCategory);
			obj.setDate(date);
			obj.setTime(time);
			obj.setRFDIR(RFDIR);
			obj.setOccurapps(occurapps);
			obj.setPPAAI(PPAAI);

			obj.setSname(Sname);
			obj.setSuspect_Id(Suspect_Id);
			obj.setNumbr(numbr);
			obj.setSADDRESS(SADDRESS);
			obj.setSPPAA(SPPAA);

			obj.setUnm(unm);
			obj.setRzn(rzn);
			obj.setDob(dob);
			obj.setWi(wi);
			obj.setEmail(Email);
			obj.setUaddress(uaddress);
			obj.setRela(rela);
			obj.setWiv(wiv);
			obj.setPAAIV(PAAIV);

			int statuss = obj.getStatuss();

			if (statuss == 1) {
				response.sendRedirect("Success.jsp?id=" + Complaint_Id);
			}

		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
