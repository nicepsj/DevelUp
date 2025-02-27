<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<style type="text/css">
.notetitle{
white-space:nowrap;
text-overflow: ellipsis;
overflow: hidden;
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
				<h1>받은쪽지함</h1>
			</div>
		</div>
		<!-- //title -->

		<!-- container -->
		<div class="container">


			<div class="board_list">
				<div class="board_info d-flex">
					<div class="total">
						전체 <strong class="blue" id="totalCount">${count }</strong> 건 (페이지 <strong
							class="blue" id="nowPage"></strong>/<span id="resultPage"></span>)
					</div>
						<form action="/ongo/mypage/note/searchReceiveBox" method="post">
							<div class="form_box">
	                            <fieldset>
	                                <legend class="visually-hidden">검색</legend>
	                                <div class="input-group">
	                                    <div class="select">
	                                        <label class="visually-hidden" for="category">검색 구분</label>
	                                        <select class="form-select" id="category" title="검색구분선택" name="category">
	                                            <option value="content">내용</option>
	                                            <option value="send_id">보낸사람</option>
	                                        </select>
	                                    </div>
	                                    <input type="text" class="form-control" name="keyword" id="keyword" title="검색어 입력" placeholder="검색어를 입력하세요.">
	                                    <input type="text" hidden="true" name="receive_id" value="${user.member_id }">
	                                    <button type="submit" class="btn btn-search" ><i class="las la-search"></i> 검색</button>
	                                </div>
	                            </fieldset>
	                        </div>
                        </form>
				</div>
			</div>
			<div class="board">
				<table class="table">
					<caption>받은쪽지 목록</caption>
					<colgroup>
						<col width="5%">
						<col width="10%">
						<col width="15%">
						<col width="*%">
						<col width="10%">
						<col width="5%">
					</colgroup>
					<thead>
						<tr>
							<th><input type="checkbox" name=" " class="form-check-input"
								onclick="fnChk()"></th>
							<th scope="col">번호</th>
							<th scope="col">보낸사람</th>
							<th scope="col">내용</th>
							<th scope="col">보낸시간</th>
						</tr>
					</thead>
					<tbody id="ksicList">
					<!--  Dummy list					
						<tr class="notice">
							<td data-before="체크박스">
								<div class="form-check">
									<label class="form-check-label"> <input type="checkbox"
										name="remember" id="remember" class="form-check-input"
										onclick="fnChk()">
									</label>
								</div>
							</td>
							<td data-before="쪽지번호">1</td>
							<td data-before="보낸사람">박소정</td>
							<td data-before="아이디">
								<button type="text" class="blue"
									onclick="location.href='#'">TEAM1</button>
							</td>
							<td data-before="보낸시간">12/20</td>
							<td data-before="삭제">삭제</td>
						</tr>
												<tr class="notice">
							<td data-before="체크박스">
								<div class="form-check">
									<label class="form-check-label"> <input type="checkbox"
										name="remember" id="remember" class="form-check-input"
										onclick="fnChk()">
									</label>
								</div>
							</td>
							<td data-before="쪽지번호">2</td>
							<td data-before="보낸사람">김태원</td>
							<td data-before="아이디">
								<button type="text" class="blue"
									onclick="location.href='#'">TEAM1</button>
							</td>
							<td data-before="보낸시간">12/22</td>
							<td data-before="삭제">삭제</td>
						</tr>
 							-->
 						<c:forEach var="note" items="${notelist }">
						<tr onclick="modalData(this)" class="notice">
						<td data-before="체크박스">
							<div class="form-check">
								<label class="form-check-label"> <input type="checkbox"
									name="remember" id="remember" class="form-check-input"
									onclick="fnChk()">
								</label>
							</div>
						</td>
 							<td id="no">${note.no }</td>
 							<td id="send_id">${note.send_id }</td>
 							<td id="content" class="notetitle">
								<a href="#" title="쪽지읽기 팝업" data-bs-toggle="modal"
								 data-bs-target="#readModal">
								${note.content }</a>
							</td>
							<td id="send_time">${note.send_time }</td>
							<td id="deletenote"><a href="/ongo/mypage/note/deleteNote?no=${note.no }&page=receive">삭제</a></td>
							<td hidden="true">${note.read_chk }</td>							
						</tr>
 						</c:forEach>
					</tbody>
				</table>


				<!-- 페이지네이션 -->
				<div class="pagination">
					<input type="hidden" id="page" name="page" value="1"> <input
						type="hidden" id="per_page" name="per_page" value="5">
					<input type="hidden" id="START_INDEX" name="START_INDEX" value="">
					<input type="hidden" id="END_INDEX" name="END_INDEX" value="">
					<li class="page-item arr"><a class="page-link"
						href="javascript:fnMovePage(1, fnSearch, 'pagination');"
						aria-label="Previous"> <span class="visually-hidden">처음으로</span>
							<span aria-hidden="true"><i
								class="las la-angle-double-left"></i></span>
					</a></li>
					<li class="page-item active"><a class="page-link"
						href="javascript:fnMovePage(1, fnSearch, 'pagination');">1</a></li>
					<li class="page-item arr"><a class="page-link"
						href="javascript:fnMovePage(1, fnSearch, 'pagination');"
						aria-label="NextEnd"> <span class="visually-hidden">다음으로</span>
							<span aria-hidden="true"><i
								class="las la-angle-double-right"></i></span>
					</a></li>
				</div>
				<!-- //페이지네이션 -->
			</div>
		</div>

	</div>
	<!-- // container-->
	</div>
	<!-- // contents -->

	<!-- modal -->
	<div class="modal fade" id="replyModal" tabindex="-1"
		aria-labelledby="Modal" aria-hidden="true">
		<form action="/ongo/mypage/note/sendnote" method="post">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<div class="modal-tit">
							<h2 class="h3">쪽지</h2>
						</div>
						<div class="modal-con">
							<div class="tbl grid-layout grid1">
								<div class="grid-item">
									<label for="IUY_CLSS_NM">수신자</label>
									<div class="tbl-basic-td">
										<div class="input-wrap w100">
											<span><textarea class="grid-input" role="textbox" id="reply_receive_id" name="receive_id" title="수신자" maxlength="500" rows="1" readonly="readonly" required="required"></textarea></span>
											<input type="text" hidden="true" id="send_id" name="send_id" value="${user.member_id}">
										</div>
									</div>
								</div>
								<div class="grid-item">
									<label for="IUY_CLSS_CNTS">내용적기</label>
									<div class="tbl-basic-td">
										<div class="input-wrap w100">
											<div class="input-wrap w100">
												<textarea class="grid-input" role="textbox"
													id="content" name="content"
													title="쪽지내용 입력" maxlength="500" rows="5" required="required"></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="btn-area">
							<button type="submit" class="btn btn-warning text-white btn-large"
								data-bs-dismiss="modal" aria-label="Close">전송</button>
						</div>
						<!-- 닫기버튼 -->
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close">
							<i class="las la-times"></i>
						</button>
						<!-- //닫기버튼 -->
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- //modal -->
	<!-- read note modal -->
	<div class="modal fade" id="readModal" tabindex="-1"
		aria-labelledby="Modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="modal-tit">
						<h2 class="h3">쪽지</h2>
					</div>
					<div class="modal-con">
						<div class="tbl grid-layout grid1">
							<div class="grid-item">
								<label for="IUY_CLSS_NM">보낸사람</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<span id="readModal_send_id"></span>
									</div>
								</div>
							</div>
							<div class="grid-item">
								<label for="IUY_CLSS_CNTS">내 용</label>
								<div class="tbl-basic-td">
									<div class="input-wrap w100">
										<div class="input-wrap w100">
											<textarea class="grid-input" role="textbox"
												id="readModal_content" name="HOFS_INTR_MTRL_CNTS"
												title="쪽지내용 입력" maxlength="500" rows="5" readonly="readonly"></textarea>
										</div>
									</div>
								</div>
							</div>
							<div class="input-wrap w100">
								<span hidden="true" id="readModal_no"></span>
							</div>
							<div class="input-wrap w100">
								<span hidden="true" id="readModal_readchk"></span>
							</div>
						</div>
					</div>
					<div class="btn-area">
						<button type="button" class="btn btn-warning text-white btn-large"
							data-bs-dismiss="modal" aria-label="Close">
							<a href="#" title="답장하기 팝업" data-bs-toggle="modal" data-bs-target="#replyModal">답장하기</a></button>
					</div>
					<!-- 닫기버튼 -->
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="las la-times"></i>
					</button>
					<!-- //닫기버튼 -->
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<!-- Footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- //Footer -->
	<script type="text/javascript">
		function modalData(clicked_element){
			var row_td = clicked_element.getElementsByTagName("td");
			var row_a = clicked_element.getElementsByTagName("a");
			document.getElementById("readModal_send_id").innerHTML = row_td[2].innerHTML;
			document.getElementById("readModal_content").innerHTML = row_a[0].innerHTML;
			document.getElementById("readModal_readchk").innerHTML = row_td[6].innerHTML;
			document.getElementById("readModal_no").innerHTML = row_td[1].innerHTML;
			document.getElementById("reply_receive_id").innerHTML = row_td[2].innerHTML;
			var no = {"no":document.getElementById("readModal_no").textContent}
			if(document.getElementById("readModal_readchk").textContent==0){
				$.ajax({
					url : "/ongo/mypage/note/ajax_readcheck",
					type : "get",
					data : no,
					success : function(data){
					},//end success
					error : function(obj,msg,statusMsg){
						alert("오류발생"+statusMsg);
					}//end error
				})//end ajax
			}//end if
		}//end function modalData
				
	</script>
</body>
</html>