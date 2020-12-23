<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 > 펫플레이스 > 리스트</title>
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../../css/admin/components/table/list.css">
    <link rel="stylesheet" href="../../css/admin/components/form/default.css">
    <script src="https://kit.fontawesome.com/b280fc7aa7.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6c3f482aeb9a4689468c97bf295d500e"></script>
    <script src="../js/petplace/list.js"></script>
</head>

<body>
    <!-------------------------------header------------------------------------>
    <header class="header">
        <div class="container">
            <div class="logo">
                <a href="../index">
                    <i class="fas fa-dog fa-3x"></i>
                    <h1>PetMet</h1>
                </a>
            </div>

            <nav>
                <h1 class="d-none">헤더 목록</h1>
                <ul>
                    <li>
                        <a href="../member/list">
                            <i class="fas fa-users fa-2x"></i>
                            <span>MEMBER</span>
                        </a>
                    </li>
                    <li>
                        <a href="../feed/list">
                            <i class="fas fa-camera-retro fa-2x"></i>
                            <span>FEED</span>
                        </a>
                    </li>
                    <li>
                        <a href="../community/notice/list">
                            <i class="fas fa-american-sign-language-interpreting fa-2x"></i>
                            <span>COMMUNITY</span>
                        </a>
                    </li>
                    <li>
                        <a href="list">
                            <i class="fas fa-map-marked-alt fa-2x"></i>
                            <span>PLACE</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>


    <!-------------------------------body------------------------------------>
    <div class="body">
        <h1 class="d-none">contents body</h1>

        <div class="container">

            <aside class="aside">
                <h1 class="d-none">aside</h1>

                <nav>
                    <h1 class="d-none">세부 메뉴</h1>

                    <ul>
                        <li>
                            <i class="fas fa-map-marked-alt"></i>
                            <a href="list">&nbsp;&nbsp;Pet Place</a>
                        </li>
                </nav>

            </aside>

            <main class="main">
                <h1 class="d-none">main</h1>

                <section class="search-form">

                    <h1 class="d-none">검색폼</h1>

                    <form class="search__container search__form">

                        <select class="selectbox" name="f">
                            <option ${param.f=="name" ?"selected":""} value="name">이름</option>
                            <option ${param.f=="content" ?"selected":""} value="content">내용</option>
                            <option ${param.f=="address" ?"selected":""} value="address">지역</option>
                            <option ${param.f=="category_name" ?"selected":""} value="category_name">카테고리</option>
                        </select>

                        <input type="text" class="search__input" name="q" value="${param.q}">

                        <label>날짜 검색</label>
                        <input type="date" name="sd" value="${param.sd}">~
                        <input type="date" name="ed" value="${param.ed}">
                        <input type="submit" class="button" value="검색">
                    </form>

                </section>
                
                <section>
                
                	<div id="map" style="width:100%;height:400px;">
                		
                	</div>
                
                </section>

				<form action="list" method= "post">
                <section>
                    <h1 class="d-none">Pet Place 관리</h1>

                    <table class="list-table">
                        <thead>
                            <tr>
                                <td>번호</td>
                                <td class="col-m">이름</td>
                                <td class="col-l">주소</td>
                                <td class="col-m">작성일</td>
                                <td>조회수</td>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach var="p" items="${list}">
                                <tr ${p.num%2==0?"class='even'":""}>
                                    <td>${p.num}</td>
                                    <td><a href="detail?id=${p.id}">${p.name}</a></td>
                                    <td>${p.address}</td>
                                    <td>${p.regDate}</td>
                                    <td>${p.hit}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </section>

				</form>
                <section>
                    <c:set var="page" value="${(empty param.p)?1:param.p}"/>
                    <c:set var="startNum" value="${page-(page-1)%5}" />
                    <c:set var="lastNum" value="${tp}"/>
                    <div class="pager">
                        <c:if test="${1 <= startNum-5}">
		                    <div>
		                      <a href="?p=1"><i class="fas fa-angle-double-left"></i></a>
		                    </div>
		                    <div>
		                      <a href="?p=${startNum - 5 }"><i class="fas fa-angle-left"></i></a>
		                    </div>
                   		</c:if>
                        <ul>
                    	<c:forEach var="i" begin="0" end="4">
							<c:if test="${(startNum + i) <= lastNum }">
								<li><a href="?p=${startNum+i}&f=${param.f}&q=${param.q}&sd=${param.sd}&ed=${param.ed}">${startNum+i}</a></li>
							</c:if>
						</c:forEach>
                    	</ul>
                        <c:if test="${startNum+5 <= lastNum}">
		                    <div>
		                      <a href="?p=${startNum+5}&f=${param.f}&q=${param.q}&sd=${param.sd}&ed=${param.ed}"><i class="fas fa-angle-right"></i></a>
		                    </div>
		                    <div>
		                      <a href="?p=${lastNum }"><i class="fas fa-angle-double-right"></i></a>
		                    </div>
                    	</c:if>
                    </div>
                </section>
            </main>
        </div>
    </div>

    <!-------------------------------footer------------------------------------>
    <footer class="footer">
        <div class="container">
            <h1>footer</h1>
        </div>
    </footer>

</body>

</html>