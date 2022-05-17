package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("shop")
@Data
public class ShopDto {
	
	private int num;
	private int price;
	private String sangpum;
	private String color;
	private String subject;
	private String content;
	private String ipgoday;
	private String photo;

}
