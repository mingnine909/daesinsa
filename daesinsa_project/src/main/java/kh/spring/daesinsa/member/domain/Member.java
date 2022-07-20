package kh.spring.daesinsa.member.domain;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.PositiveOrZero;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@SuppressWarnings("serial")
@Component

public class Member implements Serializable {
	
	
//	M_ID         NOT NULL VARCHAR2(20)  
//	M_PWD        NOT NULL VARCHAR2(20)  
//	M_NAME       NOT NULL VARCHAR2(20)  
//	M_EMAIL      NOT NULL VARCHAR2(50)  
//	M_PHONE      NOT NULL VARCHAR2(20)  
//	M_ADRS       NOT NULL VARCHAR2(300) 
//	M_GENDER     NOT NULL NUMBER        
//	M_BDATE      NOT NULL DATE          
//	M_ENROLLDATE NOT NULL TIMESTAMP(6)  
//	M_ISDELETE   NOT NULL NUMBER        
//	M_DELREASON           NUMBER        
//	M_DELDATE             DATE  
//  AUTH		 NOT NULL VARCHAR(50)
//  ENABLED		 NOT NULL NUMBER
//  M_ADR2               VARCHAR2(300)

	@NotBlank(message="아이디는 필수 입력 값입니다.")
	@Pattern(regexp="(?=.*[0-9])(?=.*[a-zA-Z])(?=\\S+$).{6,12}",
    message = "아이디는 6~12자의 영문, 숫자로 작성되어야 합니다.")
	private String id; 
	
	@NotBlank(message="비밀번호는 필수 입력 값입니다.")
	@Pattern(regexp="(?=.*[0-9])(?=.*[a-zA-Z])(?=.*\\W)(?=\\S+$).{8,16}",
    message = "비밀번호는 영문 대,소문자와 숫자, 특수기호가 적어도 1개 이상씩 포함되어야 하며, 8~16자 이내여야 합니다.")
	private String password;
	
	@NotBlank(message="이름은 필수 입력 값입니다.")
	@Size(min=2, max=5,message= "이름은 2자 이상, 6자 미만으로 입력해주세요.")
	private String name;
	

	@NotBlank(message="이메일은 필수 입력 값입니다.")
	@Pattern(regexp = "^(?:\\w+\\.?)*\\w+@(?:\\w+\\.)+\\w+$", message = "이메일 형식이 올바르지 않습니다.")
	private String email;
	
	@NotBlank(message="휴대폰 번호는 필수 입력 값입니다.")
	@PositiveOrZero(message="숫자만 입력해주세요.")
	private String phone;
	
	@NotNull(message="주소는 필수 입력 값입니다.")
	private String adrs;
	private String adrs2;
	private int gender;
	
//	@Past(message="미래의 날짜는 입력할 수 없습니다.")
	private String bdate;
	private String enrolldate;
	private int isdelete;
	private int delreason;
	private String deldate;
	private String auth;
	private int enabled;


	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + ", phone="
				+ phone + ", adrs=" + adrs + ", adrs2=" + adrs2 + ", gender=" + gender + ", bdate=" + bdate
				+ ", enrolldate=" + enrolldate + ", isdelete=" + isdelete + ", delreason=" + delreason + ", deldate="
				+ deldate + ", auth=" + auth + ", enabled=" + enabled + "]";
	}
	

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAdrs() {
		return adrs;
	}
	public void setAdrs(String adrs) {
		this.adrs = adrs;
	}
	public String getAdrs2() {
		return adrs2;
	}
	public void setAdrs2(String adrs2) {
		this.adrs2 = adrs2;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getEnrolldate() {
		return enrolldate;
	}
	public void setEnrolldate(String enrolldate) {
		this.enrolldate = enrolldate;
	}
	public int getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
	}
	public int getDelreason() {
		return delreason;
	}
	public void setDelreason(int delreason) {
		this.delreason = delreason;
	}
	public String getDeldate() {
		return deldate;
	}
	public void setDeldate(String deldate) {
		this.deldate = deldate;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	
	}
	
