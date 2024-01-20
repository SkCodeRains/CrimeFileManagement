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
import mybeans.uploadMyAnonymousData;

@MultipartConfig(maxFileSize = 1073741824)
@WebServlet("/formrendering")
public class uploadAnonymous extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String Complaint_Id, Category, AppDate, AppTime, Delay_Reason, Incident_Occur, EvidenceType, State, District,
			Police_Station, Additional_Info, Status, DOC, Suspect_Name, Suspect_Id, Id_Number, Address,
			sAdditional_Info;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {			
			GenerateID ID = new GenerateID();
			ID.SetID();
			Complaint_Id = ID.getID();
			Category = request.getParameter("anonycategory");
			AppDate = request.getParameter("appdates");
			AppTime = request.getParameter("apptimes");
			try {
				Delay_Reason = request.getParameter("rzn");
			} catch (Exception e) {
				
			}
			Incident_Occur = request.getParameter("occurapps");
			Part fp = request.getPart("evidence");
			EvidenceType = fp.getContentType();
			InputStream Evidence = fp.getInputStream();
			State = request.getParameter("state");
			District = request.getParameter("dist");
			Police_Station = request.getParameter("pstation");
			try {
				Additional_Info = request.getParameter("addiinfo");
			} catch (Exception e) {
				// TODO: handle exception
			}
			Status = "waiting";
			DOC = "NOW()";
			try {
				Suspect_Name = request.getParameter("sname");
			} catch (Exception e) {
				// TODO: handle exception
			}
			try {
				Suspect_Id = request.getParameter("sid");
				Id_Number = request.getParameter("sidno");
			} catch (Exception e) {
				// TODO: handle exception
			}
			try {
				Address = request.getParameter("saddress");

			} catch (Exception e) {
				// TODO: handle exception
			}
			try {
				Additional_Info = request.getParameter("saddiinfo");
			} catch (Exception e) {
				// TODO: handle exception
			}
			uploadMyAnonymousData obj = new uploadMyAnonymousData();
			obj.setComplaint_Id(Complaint_Id);
			obj.setCategory(Category);
			obj.setAppDate(AppDate);
			obj.setAppTime(AppTime);
			obj.setDelay_Reason(Delay_Reason);
			obj.setIncident_Occur(Incident_Occur);
			obj.setEvidence(Evidence);
			obj.setEvidenceType(EvidenceType);
			obj.setState(State);
			obj.setDistrict(District);
			obj.setPolice_Station(Police_Station);
			obj.setAdditinal_Info(Additional_Info);
			obj.setStatus(Status);
			obj.setDOC(DOC);
			obj.setSuspect_Name(Suspect_Name);
			obj.setSuspect_Id(Suspect_Id);
			obj.setId_Number(Id_Number);
			obj.setAddress(Address);
			obj.setSAdditional_Info(Additional_Info);
			int statuss = obj.getStatuss();
			if (statuss == 1) {
				response.sendRedirect("Success.jsp?id=" + Complaint_Id);
			}

		} catch (Exception e) {
			System.err.print(e);
		}
	}

}
