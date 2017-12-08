package kr.ac.hansung.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Take {
	
	private int year;
	private int semester;
	private String course_id;
	private String course_name;
	private String division;
	private int credits;

}