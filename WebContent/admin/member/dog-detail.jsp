<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../../css/style.css" type="text/css" rel="stylesheet">
    <link href="../../css/admin/components/table/detail.css" type="text/css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b280fc7aa7.js" crossorigin="anonymous"></script>
</head>

<body>

    <header id="header" class="header">
        <div class="container">
            <div class="logo">
                <a href="../index.html">
                    <i class="fas fa-dog fa-3x"></i>
                    <h1>PetMet</h1>
                </a>
            </div>

            <nav>
                <h1 class="d-none">헤더 목록</h1>
                <ul>
                    <li>
                        <a href="list.html">
                            <i class="fas fa-users fa-2x"></i>
                            <span>MEMBER</span>
                        </a>
                    </li>
                    <li>
                        <a href="../feed/index.html">
                            <i class="fas fa-camera-retro fa-2x"></i>
                            <span>FEED</span>
                        </a>
                    </li>
                    <li>
                        <a href="../community/index.html">
                            <i class="fas fa-american-sign-language-interpreting fa-2x"></i>
                            <span>COMMUNITY</span>
                        </a>
                    </li>
                    <li>
                        <a href="../petplace/list.html">
                            <i class="fas fa-map-marked-alt fa-2x"></i>
                            <span>PLACE</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        </div>
    </header>


    <div class="body">
        <div class="container">
            <aside class="aside">
                <h1 class="d-none">페이지 목록</h1>
                <ul>
                    <li><a href="list.html">회원 목록</a></li>
                    <li><a href="dog-list.html">강아지 목록</a></li>
                    <li><a href="matching-list.html">매칭 목록</a></li>
                    <li><a href="report-num-list.html">신고 목록</a></li>

                </ul>
            </aside>
            <main id="main" class="main">
                <h1 class="d-none">메인이다</h1>
                <section>
                    <h1 class="d-none">디테일 테이블</h1>
                    <img src="../../static/dog/2020/12/${d.files}">
                    <table>
                       <tr>
                           <td>이름</td>
                           <td>${d.name}</td>
                           <td>회원</td>
                           <td>${d.masterId}</td>
                       </tr>

                       <tr>
                        <td>성별</td>
                        <td>${d.gender==1?"남":"여"}</td>
                        <td>견종</td>
                        <td>${d.kind}</td>
                    </tr>
                    
                    <tr>
                        <td>중성화</td>
                        <td>${d.neut==1?"O":"X"}</td>
                        <td>생일</td>
                        <td>${d.birth}</td>
                    </tr>

                    <tr>
                        <td>무게</td>
                        <td>${d.weight}kg</td>
                        <td>성격</td>
                        <td>${d.character}</td>
                    </tr>

                    <tr>
                        <td colspan="2">등록일자</td>
                        <td colspan="2">${d.regDate}</td>
                        
                    </tr>
                    
                    <tr>
                    	<td>내용</td>
                        <td colspan="3">${d.content}</td>
                    </tr>
                     
                  
                    </table>

                </section>
                <div class="pager">
                  <a href="doglist"><input type="button" value="목록으로 가기"></a>
                </div>
            </main>


        </div>
    </div>

    <footer id="footer" class="footer">

        <div class="container">
            <h1>footer</h1>
        </div>

    </footer>

</body>

</html>