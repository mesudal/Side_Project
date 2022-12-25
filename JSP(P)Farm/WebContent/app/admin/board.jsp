<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/font.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/contents.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/board.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/form.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/page.css"/>

    <!-- 버튼 클릭 시 확인 알림창 -->
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/js/admin/check.js"></script>
    <title>관리자-소통공간 관리</title>
</head>

<body>

    <div id="wrapper">
        <!-- 세로 메뉴바 -->
		<jsp:include page="${pageContext.request.contextPath}/app/admin/admin_menu.jsp"/>

        <!-- 헤더 ~ 밑에 메인 컨텐츠 -->
        <div id="container">
            <!-- 헤더 -->
            <header>
                <span id="admin-header-title">소통공간 관리</span>
                <span id="admin-mode">관리자 모드</span>
                <span id="userCount">가입된 회원 수 총 <strong> 21343 </strong>명</span>
            </header>

            <!-- 컨텐츠 검색 부분 -->
            <div class="p-contents chart-no">

                <!-- 검색어 입력 폼 -->
                <form action="" name="searchForm" method="post">
                    <div class="search-form">
                        <span class="s-form">
                            <select name="searchSelect" class="s-select">
                                <option value="title">제목</option>
                                <option value="id">아이디</option>
                                <option value="content">내용</option>
                                <option value="all">제목 + 내용</option>
                                <option value="boardNum">게시판번호</option>
                            </select>
                        </span>
                        <span class="s-f-input">
                            <span class="search-input">
                                <input type="text" name="programSearch" placeholder="검색어를 입력하세요">
                            </span>
                        </span>
                        <button type="button" class="">
                            <img src="${pageContext.request.contextPath}/assets/images/common/search.png">
                        </button>
                    </div>
                </form>

            </div>

            <!-- 프로그램 리스트 출력 틀 -->
            <div class="p-contents contents-bottom">
                <span class="list-count">총
                    <span>2476</span>건
                </span>

                <table class="board">
                    <tr class="title">
                        <th class="num">번호</th>
                        <th class="title">제목</th>
                        <th class="content">내용</th>
                        <th class="id">아이디</th>
                        <th class="file-check">첨부파일</th>
                        <th class="date">작성날짜</th>
                        <th class="hits">조회수</th>
                        <th class="reply">댓글</th>
                        <th class="delete"></th>
                    </tr>
                    <!-- ↓ 데이터 출력 -->
                    <tr>
                        <td>12432</td>
                        <td class="title" onclick="location.href='#'">
                            ● [ 농산물상자 & 파렛트 ] 저렴히 판매합니다..●</td>
                        <td class="content">1 . 플라스틱상자 일체 (농산물상자 , 과일상자 , 운반상자 , 계육상자 , 두부상자 등)</td>
                        <td>Isay농yousay부</td>
                        <td><img src="${pageContext.request.contextPath}/assets/images/common/fileImage.png"></td>
                        <td>2022-10-03</td>
                        <td>86</td>
                        <td>0</td>
                        <td class="delete"><input type="button" value="삭제" onclick="deleteListCheck()"></td>
                    </tr>
                </table>

                <!-- 페이징 -->
                <div id="page">
                    <div class="page_nation">
                        <a class="arrow pprev" href="#"></a>
                        <a class="arrow prev" href="#"></a>
                        <a href="#" class="active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#">6</a>
                        <a href="#">7</a>
                        <a href="#">8</a>
                        <a href="#">9</a>
                        <a href="#">10</a>
                        <a class="arrow next" href="#"></a>
                        <a class="arrow nnext" href="#"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<html>