package com.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.service.LecturerImpl;

/*This is the Lecturer model class
@author Sahan Kumarasiri*/

public class Lecturer implements LecturerImpl {
	
	private String PaperID;
	
	private String PaperType;

	private String PaperVersion;

	private String FacultyName;

	private String Department;

	private String DatePublished;
	
	private String Signature;
	
	private Double Duration;

	public Lecturer(ResultSet resultSet) throws SQLException{
		
		this.PaperID = resultSet.getString("paperID");
        this.PaperType = resultSet.getString("paperType");
        this.PaperVersion = resultSet.getString("paperVersion");
        this.FacultyName = resultSet.getString("faculty");
        this.Department = resultSet.getString("department");
        this.DatePublished = resultSet.getString("datePublished");
        this.Signature = resultSet.getString("signature");
        this.Duration = resultSet.getDouble("duration");
        
		
	}

	/**
	 * @return the paperID
	 */
	public String getPaperID() {
		return PaperID;
	}

	/**
	 * @param paperID the paperID to set
	 */
	public void setPaperID(String paperID) {
		PaperID = paperID;
	}

	/**
	 * @return the paperType
	 */
	public String getPaperType() {
		return PaperType;
	}

	/**
	 * @param paperType the paperType to set
	 */
	public void setPaperType(String paperType) {
		PaperType = paperType;
	}

	/**
	 * @return the facultyName
	 */
	public String getFacultyName() {
		return FacultyName;
	}
	
	/**
	 * @return the paperVersion
	 */
	public String getPaperVersion() {
		return PaperVersion;
	}

	/**
	 * @param paperVersion the paperVersion to set
	 */
	public void setPaperVersion(String paperVersion) {
		PaperVersion = paperVersion;
	}

	/**
	 * @param facultyName the facultyName to set
	 */
	public void setFacultyName(String facultyName) {
		FacultyName = facultyName;
	}

	/**
	 * @return the department
	 */
	public String getDepartment() {
		return Department;
	}

	/**
	 * @param department the department to set
	 */
	public void setDepartment(String department) {
		Department = department;
	}

	/**
	 * @return the datePublished
	 */
	public String getDatePublished() {
		return DatePublished;
	}

	/**
	 * @param datePublished the datePublished to set
	 */
	public void setDatePublished(String datePublished) {
		DatePublished = datePublished;
	}

	/**
	 * @return the siganature
	 */
	public String getSignature() {
		return Signature;
	}

	/**
	 * @param siganature the siganature to set
	 */
	public void setSignature(String signature) {
		Signature = signature;
	}

	/**
	 * @return the duration
	 */
	public Double getDuration() {
		return Duration;
	}

	/**
	 * @param duration the duration to set
	 */
	public void setDuration(Double duration) {
		Duration = duration;
	}

	@Override
	public String toString() {
		return "Lecturer [PaperID=" + PaperID + ", PaperType=" + PaperType + ", PaperVersion=" + PaperVersion
				+ ", FacultyName=" + FacultyName + ", Department=" + Department + ", DatePublished=" + DatePublished
				+ ", Signature=" + Signature + ", Duration=" + Duration + "]";
	}

	

}


