package com.multi.ongo.auction;

import java.util.List;

public interface AuctionBoard_DAO {
	
	//μ€κ³ κ±°λ?±λ‘?
	public int writeProd(AuctionBoard_DTO dto);
	 
	//μ€κ³ κ±°λ ? μ²΄μ‘°?
	public List<AuctionBoard_DTO> boardlist();
	
	//μ€κ³ κ±°λ κ²μκΈ??½κΈ?
	public AuctionBoard_DTO auctionRead(int auction_number);

	
	//μ€κ³ κ±°λ κ²μκΈ? ??°?΄?Έ(?? )
	int update(AuctionBoard_DTO dto);
	
	
	//μ€κ³ κ±°λ κ²μκΈ? ?­? 
	int auctionDelete(String id);
}
