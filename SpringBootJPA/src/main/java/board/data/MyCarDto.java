package board.data;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Entity
@Table(name = "mycar") //mycar라는 테이블이 생성된다(이미 있다면 수정된다)
@Data //Setter, Getter, ToString을 모두 포함
public class MyCarDto {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)//db에 맞게 숫자 자동발생
	private Long num;
	
	@Column(name = "carname")
	private String carname;
	
	@Column(name = "carprice")
	private int carprice;
	
	@Column(name = "carcolor")
	private String carcolor;
	
	@Column(name = "carguip")
	private String carguip;
	
	@CreationTimestamp //엔티티가 생성되는 시점의 시간이 자동 등록
	@Column(updatable = false) //수정안되는 컬럼
	private Timestamp writeday;

}
