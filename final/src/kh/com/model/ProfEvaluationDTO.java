package kh.com.model;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;

// 교수평가 DTO
@Alias("ProfEvaluationDTO")
public class ProfEvaluationDTO implements Serializable {

	private int sub_seq; 			// 과목 Seq
	private String sub_category;	// 전공:100,교양:200
	private String major_number; 	// 없음:0,기계공학과:100,전기공학과:200,컴퓨터공학과:300...
	private int sub_semester; 		// 전공여부()
	private String sub_name; 		// 과목명
	private String professor_id;	// 교수아이디 외래키
	private String professor_name;	// 교수 이름
	private String sub_info; 		// 강의 소개
	private String student_id; 		// 학생아이디
	private String student_name;	// 학생이름
	private int student_year; 		// 학생학년
	private int critic; 			// 교수평가 점수

	private int sub_s_class;
	private int sub_e_class;
	private int sub_grade;
	private int sub_point;

public ProfEvaluationDTO() {}

	public int getSub_seq() {
		return sub_seq;
	}
	
	public void setSub_seq(int sub_seq) {
		this.sub_seq = sub_seq;
	}
	
	public String getSub_category() {
		return sub_category;
	}
	
	public void setSub_category(String sub_category) {
		this.sub_category = sub_category;
	}
	
	public String getMajor_number() {
		return major_number;
	}
	
	public void setMajor_number(String major_number) {
		this.major_number = major_number;
	}
	
	public int getSub_semester() {
		return sub_semester;
	}
	
	public void setSub_semester(int sub_semester) {
		this.sub_semester = sub_semester;
	}
	
	public String getSub_name() {
		return sub_name;
	}
	
	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}
	
	public String getProfessor_id() {
		return professor_id;
	}
	
	public void setProfessor_id(String professor_id) {
		this.professor_id = professor_id;
	}
	
	public String getProfessor_name() {
		return professor_name;
	}
	
	public void setProfessor_name(String professor_name) {
		this.professor_name = professor_name;
	}
	
	public String getSub_info() {
		return sub_info;
	}
	
	public void setSub_info(String sub_info) {
		this.sub_info = sub_info;
	}
	
	public String getStudent_id() {
		return student_id;
	}
	
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	
	public String getStudent_name() {
		return student_name;
	}
	
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	
	public int getStudent_year() {
		return student_year;
	}
	
	public void setStudent_year(int student_year) {
		this.student_year = student_year;
	}
	
	public int getCritic() {
		return critic;
	}
	
	public void setCritic(int critic) {
		this.critic = critic;
	}
	
	public int getSub_s_class() {
		return sub_s_class;
	}
	
	public void setSub_s_class(int sub_s_class) {
		this.sub_s_class = sub_s_class;
	}
	
	public int getSub_e_class() {
		return sub_e_class;
	}
	
	public void setSub_e_class(int sub_e_class) {
		this.sub_e_class = sub_e_class;
	}
	
	public int getSub_grade() {
		return sub_grade;
	}
	
	public void setSub_grade(int sub_grade) {
		this.sub_grade = sub_grade;
	}
	
	public int getSub_point() {
		return sub_point;
	}
	
	public void setSub_point(int sub_point) {
		this.sub_point = sub_point;
	}

	@Override
	public String toString() {
		return "ProfEvaluationDTO [sub_seq=" + sub_seq + ", sub_category=" + sub_category + ", major_number="
				+ major_number + ", sub_semester=" + sub_semester + ", sub_name=" + sub_name + ", professor_id="
				+ professor_id + ", professor_name=" + professor_name + ", sub_info=" + sub_info + ", student_id="
				+ student_id + ", student_name=" + student_name + ", student_year=" + student_year + ", critic="
				+ critic + ", sub_s_class=" + sub_s_class + ", sub_e_class=" + sub_e_class + ", sub_grade=" + sub_grade
				+ ", sub_point=" + sub_point + "]";
	}
		
	

	

}