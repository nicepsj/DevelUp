<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head> 

	<script type="text/javascript">
	//구분 저장공유
	$(document).ready(function(){ 
		data = "${dealRead.dealType}" 
		$("#dealType").val(data).attr("selected", "selected"); 
	});
	//상품카테고리 저장공유
	$(document).ready(function(){ 
		data = "${dealRead.product_category}" 
		$("#product_category").val(data).attr("selected", "selected"); 
	});
</script>

<style>
      .modal2 {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        display: none;
        background-color: rgba(0, 0, 0, 0.4);
      }
      .modal2.show {
        display: block;
      }
      .modal2_body {
        position: absolute;
        top: 50%;
        left: 50%;
		text-align:left;
        width: 200px;
        height: auto;
        padding: 5px;
        text-align: center;
        background-color: rgb(255, 255, 255);
        border-radius: 10px;
        box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
        transform: translateX(-50%) translateY(-50%);
      }
    </style>


</head>
<body>
<!-- 이 아래부터  content부분 복사해서 붙여넣기 하시면 됩니다. 하단 footer부분 인클루트 시켜주세요 -->

<!-- content -->
<div id="contents">
        <!-- title -->
        <div class="sub_top">
            <div class="container">
                <h1>중고</h1>
            </div>
        </div>
        <!-- //title -->

        <!-- 게시판 -->
        <div class="container">
            <form  action="/ongo/dealRead.do?deal_number=${dealRead.deal_number}&state=UPDATE" method="post">
                <input type="hidden" name="countPerPage" id="countPerPage" value="10">
                <input type="hidden" name="zon" id="zon" value="">

                <!-- 현재 탭 표시 -->
                <h2 class="visually-hidden">중고</h2>
                <!-- //현재 탭 표시 -->

		
					<!-- 로그인시스템 생성전 임시필요 -->
			<!-- 		<div class="cont-box-inner">
						<div class="tbl grid-layout grid2">
							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">임시아이디(작성자)</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w20">
										<input class="grid-input" type="text" maxlength="50"
											title="id" id="id" name="id">
									</div>
								</div>
							</div>
							</div>
					</div> -->
							
				
							
							<div class="cont-box-inner">
					<div class="tbl grid-layout grid2">
						<div class="grid-item colspan2">
							<label for="select_target_1">구분</label>
							<div class="tbl-basic-td">
								<div class="input-wrap w20">
									<select class="form-select grid-input" id="dealType" name="dealType" >
										<option value="중고">중고</option>
										<option value="나눔">나눔</option>
									</select>
								</div>
							</div>
						</div>
							
							
							
							
							
							
							<div class="grid-item colspan2">
								<label for="select_target_1" >상품카테고리</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w20">
									
										<select class="form-select grid-input" title="게시판" id="product_category" name="product_category">
											<option value="디지털&가전">디지털&가전</option>
											<option value="가구&인테리어">가구&인테리어</option>
											<option value="유아동">유아동</option>
											<option value="생활&가공식품">생활&가공식품</option>
											<option value="레져&스포츠">레져&스포츠</option>
											<option value="여성잡화">여성잡화</option>
											<option value="여성의류">여성의류</option>
											<option value="남성잡화">남성잡화</option>
											<option value="남성의류">남성의류</option>
											<option value="게임&취미">게임&취미</option>
											<option value="뷰티&미용">뷰티&미용</option>
											<option value="반려동물용품">반려동물용품</option>
											<option value="도서&티켓&음반">도서&티켓&음반</option>
											<option value="기타">기타</option>
										</select>
									</div>
								</div>
							</div>
							
							
							
							
							<!--<div class="grid-item colspan2">
								<label for="select_target_1">상태</label>
							 	<div class="tbl-basic-td">
									<div class="input-wrap w20">
										<select class="form-select grid-input" title="상태">
											<option value="01">판매중</option>
											<option value="02">판매완료</option>
										</select>
									</div>
								</div> 
							</div>-->
							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">제목</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										${dealRead.board_title}
										<!-- <input class="grid-input" type="text" maxlength="500"
											title="board_title" id="board_title" name="board_title"> -->
									</div>
								</div>
							</div>
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
								<div class="grid-item colspan2">
								<label for="HOFS_DTADR">작성자</label>
								<div class="tbl-basic-td">
									<div class="col-md-8" >
										<input type="button" id="modal2-open" value="${dealRead.member_id}" style="border: 0em;">
										<%-- <div class="col-md-8">${dealRead.member_id}</div> --%>
									</div>
								</div>
							</div>
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
				<!--모달 --------------------------------------------------------- -->
							
							<div class="modal2" id="modal2">
					<div class="modal2_body">
						<ul>
							<li><a href="" onclick="location.href='#'">쪽지보내기</a></li>
							<li><a href="" onclick="location.href='#'">회원정보보기</a></li>
							<li><a href="" onclick="location.href='#'">거래내역보기</a></li>
						</ul>
					</div>
				</div>
				
				<script type="text/javascript">
					 const body = document.querySelector('body');
				      const modal2 = document.querySelector('.modal2');
				      //const btnOpenPopup = document.querySelector('.btn-open-popup');
				      const btnOpenPopup = document.querySelector('#modal2-open');
				      btnOpenPopup.addEventListener('click', () => {
				        modal2.classList.toggle('show');
				        if (modal2.classList.contains('show')) {
				          body.style.overflow = 'hidden';
				        }
				      });
				      modal2.addEventListener('click', (event) => {
				        if (event.target === modal2) {
				          modal2.classList.toggle('show');
				          if (!modal2.classList.contains('show')) {
				            body.style.overflow = 'auto';
				          }
				        }
				      });
				</script>
							
							
							<!-- --------------------------------------------------------- -->
						<%-- 	<div class="grid-item colspan2">
								<label for="HOFS_DTADR">상품명</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										${dealRead.product_name}
										<!-- <input class="grid-input" type="text" maxlength="50"
											title="product_name" id="product_name" name="product_name"> -->
									</div>
								</div>
							</div>
							 --%>
							
							
							
							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">금액</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w30 me-4">
									
									
									<span class="blue-bold"><fmt:formatNumber  pattern="#,###원">
										${dealRead.product_price}</fmt:formatNumber></span>
										<!-- <input class="grid-input" type="number" maxlength="50"
											title="product_price" id="product_price" name="product_price"> -->
									</div>
									<!--<div class="form-check">
										<input type="checkbox" class="form-check-input" value=" ">
										<label class="form-check-label"> <span class="radio"></span>나눔</label> 
									</div>-->
								</div>
							</div>


							<div class="grid-item colspan2">
								<label for="HOFS_INTR_MTRL_CNTS">내용</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										${dealRead.board_content}
										<!-- <textarea class="grid-input" role="textbox"
											id="board_content" name="board_content"
											title="board_content" maxlength="1000" rows="5"></textarea> -->
									</div>
								</div>
							</div>

							<div class="grid-item colspan2">
								<label for="HOFS_DTADR">대표사진</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
									${dealRead.list_photo}
										<!-- <input type="file" class="form-control" id="list_photo" Name="list_photo" value=""/> -->
									</div>
								</div>
							</div> 

						</div>
					</div>
					
					<!-- <div class="btn-area">
						<input type="submit" value="게시글 등록" class="btn btn-primary btn-large" />
					</div> -->
			<div class="btn-area">
				<button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/deal_listAll.do?dealType=all'">리스트</button>
				<button class="btn btn-primary btn-large" type="button" onclick="location.href='#'">거래요청</button>
			</div>
			
					
					
			<div class="btn-area">
				
				
				<button type="submit" class="btn btn-success btn-large">수정</button>
				
				<%-- <button class="btn btn-primary btn-large" type="button" onclick="location.href='/ongo/dealRead.do?deal_number=${dealRead.deal_number}&state=UPDATE'">글수정</button> --%>
			</div>
				
				</form>
			</div>
		</div>





<!-- Footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- //Footer -->
</body>
</html>