package com.dnapass.training.entity;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Student100")
public class Student implements Serializable{
	
	@Id
	private int studentId;
	private String studentName;
	private LocalDate studentDob;
	private String studentGender;
	private String studentEmail;
	private String studentSection;
	private String studentSubject;
	private String studentCountry;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(int studentId, String studentName, LocalDate studentDob, String studentGender, String studentEmail,
			String studentSection, String studentSubject, String studentCountry) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentDob = studentDob;
		this.studentGender = studentGender;
		this.studentEmail = studentEmail;
		this.studentSection = studentSection;
		this.studentSubject = studentSubject;
		this.studentCountry = studentCountry;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((studentCountry == null) ? 0 : studentCountry.hashCode());
		result = prime * result + ((studentDob == null) ? 0 : studentDob.hashCode());
		result = prime * result + ((studentEmail == null) ? 0 : studentEmail.hashCode());
		result = prime * result + ((studentGender == null) ? 0 : studentGender.hashCode());
		result = prime * result + studentId;
		result = prime * result + ((studentName == null) ? 0 : studentName.hashCode());
		result = prime * result + ((studentSection == null) ? 0 : studentSection.hashCode());
		result = prime * result + ((studentSubject == null) ? 0 : studentSubject.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Student other = (Student) obj;
		if (studentCountry == null) {
			if (other.studentCountry != null)
				return false;
		} else if (!studentCountry.equals(other.studentCountry))
			return false;
		if (studentDob == null) {
			if (other.studentDob != null)
				return false;
		} else if (!studentDob.equals(other.studentDob))
			return false;
		if (studentEmail == null) {
			if (other.studentEmail != null)
				return false;
		} else if (!studentEmail.equals(other.studentEmail))
			return false;
		if (studentGender == null) {
			if (other.studentGender != null)
				return false;
		} else if (!studentGender.equals(other.studentGender))
			return false;
		if (studentId != other.studentId)
			return false;
		if (studentName == null) {
			if (other.studentName != null)
				return false;
		} else if (!studentName.equals(other.studentName))
			return false;
		if (studentSection == null) {
			if (other.studentSection != null)
				return false;
		} else if (!studentSection.equals(other.studentSection))
			return false;
		if (studentSubject == null) {
			if (other.studentSubject != null)
				return false;
		} else if (!studentSubject.equals(other.studentSubject))
			return false;
		return true;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public LocalDate getStudentDob() {
		return studentDob;
	}
	public void setStudentDob(LocalDate studentDob) {
		this.studentDob = studentDob;
	}
	public String getStudentGender() {
		return studentGender;
	}
	public void setStudentGender(String studentGender) {
		this.studentGender = studentGender;
	}
	public String getStudentEmail() {
		return studentEmail;
	}
	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}
	public String getStudentSection() {
		return studentSection;
	}
	public void setStudentSection(String studentSection) {
		this.studentSection = studentSection;
	}
	public String getStudentSubject() {
		return studentSubject;
	}
	public void setStudentSubject(String studentSubject) {
		this.studentSubject = studentSubject;
	}
	public String getStudentCountry() {
		return studentCountry;
	}
	public void setStudentCountry(String studentCountry) {
		this.studentCountry = studentCountry;
	}
	
	
	
	

}
