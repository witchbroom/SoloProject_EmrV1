package com.root.emr.model;

import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ApiVO {
	
	public String serviceKey;
	public String numsOfRow;
	public String pageNo;
	
	public String korNm; // 한글명
	public String mdfeeCd; // 수가코드
	public String mdfeeDivNo; // 수가분류번호
	public String payTpCd; // 급여구분명
	public String soprTpNm; // 수술구분명
	public String unprc; // 의원단가
	public String unprc2; // 병원단가
		

}
