package com.multi.ongo.auction;

import java.sql.Date;

public class AuctionBoard_DTO {
	private String id;  //? ????΄?  - ?κ²μκΈ??±λ‘μ??
	private String dealType;    // μ€κ³ κ±°λκ΅¬λΆ( μ€κ³ κ±°λ,??)  - ?κ²μκΈ??±λ‘μ??
	private String product_category;  //??μΉ΄νκ³ λ¦¬(?μ§??ΈκΈ°κΈ°,?λ₯? ?±?±)  - ?κ²μκΈ??±λ‘μ??
	private String product_state; // ????(?λ§€μ€,κ±°λμ§νμ€?, ?λ£? )  - ?Έ?Ό=  ?κ²μκΈ??±λ‘μ??
	private int product_price; // ??κ°?κ²?  - ?κ²μκΈ??±λ‘μ??
	private String board_title; // ? λͺ?  - ?κ²μκΈ??±λ‘μ??
	private String product_name; //??λͺ?  - ?κ²μκΈ??±λ‘μ??
	private String board_content; // ?΄?©  - ?κ²μκΈ??±λ‘μ??
	private int hits; // μ‘°ν?	?Έ?Ό=  
	private Date write_date; //??±?Ό  - ?Έ?Ό=  ?κ²μκΈ??±λ‘μ??
	private int deal_number; // κ±°λλ²νΈ  - ?Έ?Ό=  ?κ²μκΈ??±λ‘μ??
	
	
	public AuctionBoard_DTO() {
		
	}


	public AuctionBoard_DTO(String id, String dealType, String product_category, String product_state, int product_price,
			String board_title, String product_name, String board_content, int hits, Date write_date, int deal_number) {
		super();
		this.id = id; //??΄?
		this.dealType = dealType; // κ±°λκ΅¬λΆ
		this.product_category = product_category; // ??μΉ΄νκ³ λ¦¬
		this.product_state = product_state; //????(μ§νμ€λ±) ?? 
		this.product_price = product_price; //??κ°?κ²?
		this.board_title = board_title; // κ²μκΈ?? λͺ?
		this.product_name = product_name; //??λͺ?
		this.board_content = board_content; //κ²μκΈ??΄?©
		this.hits = hits; // μ‘°ν?
		this.write_date = write_date; //??±?Ό λ§΅νΌ??
		this.deal_number = deal_number; // κ²μλ²νΈ λ§΅νΌ??(????€)
	}
	




	@Override
	public String toString() {
		return "DealBoard_DTO [id=" + id + ", dealType=" + dealType + ", product_category=" + product_category
				+ ", product_state=" + product_state + ", product_price=" + product_price + ", board_title="
				+ board_title + ", product_name=" + product_name + ", board_content=" + board_content + ", hits=" + hits
				+ ", write_date=" + write_date + ", deal_number=" + deal_number + "]";
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getDealType() {
		return dealType;
	}


	public void setDealType(String dealType) {
		this.dealType = dealType;
	}


	public String getProduct_category() {
		return product_category;
	}


	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}


	public String getProduct_state() {
		return product_state;
	}


	public void setProduct_state(String product_state) {
		this.product_state = product_state;
	}


	public int getProduct_price() {
		return product_price;
	}


	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}


	public String getBoard_title() {
		return board_title;
	}


	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}


	public String getProduct_name() {
		return product_name;
	}


	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}


	public String getBoard_content() {
		return board_content;
	}


	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}


	public int getHits() {
		return hits;
	}


	public void setHits(int hits) {
		this.hits = hits;
	}


	public Date getWrite_date() {
		return write_date;
	}


	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}


	public int getDeal_number() {
		return deal_number;
	}


	public void setDeal_number(int deal_number) {
		this.deal_number = deal_number;
	}
	
	
	
	
	
	
	
	
}
