<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <style>
        div{border: 0px solid black;}
        *{font-size: 12px;}
    </style>
</head>
<body>
    <div class="container">
        <!-- Top영역 -->
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                    <div class="container-fluid">
                        <!-- 회사로고(logo) -->
                        <a class="navbar-brand" href="#">
                            <img src="https://www.ikosmo.co.kr/images/common/logo_center_v2.jpg"
                            style="width: 120px;" alt=""></a>
                        <!-- GNB(Global Navigation Bar : 해당 웹사이트의 전체(global) 메뉴)  -->
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">자유게시판</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">자료실</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">방명록</a>
                            </li>
                            <!--  -->
                            <li class="nav-item dropdown">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                                        Dropdown</a>
                                    <ul class="dropdown-menu">
                                      <li><a class="dropdown-item" href="#">Link</a></li>
                                      <li><a class="dropdown-item" href="#">Another link</a></li>
                                      <li><a class="dropdown-item" href="#">A third link</a></li>
                                    </ul>
                                </li>
                            </li>
                        </ul>
                        <!-- 검색폼 -->
                        <form class ="mt-3" method="get" action="">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Search" style="width: 200px;">
                            <button class="btn btn-warning" type="submit">
                                <i class="bi-search" style="font-size: 1rem; color: white;"></i></button>
                        </div>
                    </form>
                    <!-- 회원가입/로그인 링크   -->
                    <ul class="navbar-nav">
                        <!-- 로그인전 -->
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="bi-person-plus-fill" style="font-size: 1rem;"></i>회원가입</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="bi-box-arrow-in-right" style="font-size: 1rem;"></i>로그인</a>
                        </li>
                        <!-- 로그인후 -->
                        <!-- <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="bi-person-lines-fill" style="font-size: 1rem;"></i>회원정보수정</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="bi-box-arrow-right" style="font-size: 1rem;"></i>로그아웃</a>
                        </li> -->
                    </ul>
                    </div>
                </nav>      
            </div>
        </div>
        <!-- Body영역 -->
        <div class="row">
            <!-- left메뉴 영역 -->
            <div class="col-3">
                <div style="height: 100px;line-height: 100px; text-align: center; background-color: cadetblue;
                border-radius: 10px; margin: 10px 0;font-size: 1.5em; color: white;">
                    웹사이트제작
                </div>
                <ul class="nav flex-column nav-pills">
                    <li class="nav-item">
                      <a class="nav-link active" href="#">자유게시판</a>
                    </li>
                    <li class="nav-item bg-light">
                      <a class="nav-link" href="#">자료실</a>
                    </li>
                    <li class="nav-item dropdown dropend bg-light" >
                      <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                        Dropdown</a>
                        <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Link</a></li>
                        <li><a class="dropdown-item" href="#">Another link</a></li>
                        <li><a class="dropdown-item" href="#">A third link</a></li>
                        </ul>
                    </li>
                  </ul>
            </div>
            <!-- Contents영역 -->
            <div class="col-9 pt-3">
                <h3>게시판 목록 - <small>자유게시판</small></h3>
                <!-- 검색 -->
                <div class="row">
                    <form action="">
                        <div class="input-group ms-auto" style="width: 400px;">
                            <select name="" class="form-control">
                                <option value="">제목</option>
                                <option value="">내용</option>
                                <option value="">작성자</option>
                            </select>
                            <input type="text" class="form-control" placeholder="Search" style="width: 200px;">
                            <button class="btn btn-success" type="submit">
                                <i class="bi-search" style="font-size: 1rem; color: white;"></i></button>
                        </div>
                    </form>

                </div>
                <!-- 게시판 리스트-->
                <div class="row mt-3 mx-1">
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                          <tr class="text-center">
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일</th>
                            <th>조회수</th>
                            <th>첨부</th>
                          </tr>
                        </thead>
                        <tbody>
                        <% for(int i=1 ; i <=10 ; i++){ %>
                          <tr class="text-center">
                            <td>100</td>
                            <td class="text-start"><a href="./viewT.html">자유게시판 많은 이용 부탁드려요</a></td>
                            <td>낙자쌤</td>
                            <td>21-11-15</td>
                            <td>88</td>
                            <td><i class="bi-pin-angle-fill" style="font-size: 1rem;"></i></td>
                          </tr>
                      <%} %>
                          
                        </tbody>
                      </table>
                </div>
                <!-- 각종 버튼 -->
                <div class="row"> 
                    <div class="col d-flex justify-content-end">
                        <button type="button" class="btn btn-primary"
                        onclick="location.href = 'writeT.html'">글쓰기</button>
                        <button type="button" class="btn btn-secondary">수정하기</button>
                        <button type="button" class="btn btn-success">삭제하기</button>
                        <button type="button" class="btn btn-info">답글쓰기</button>
                        <button type="button" class="btn btn-warning">목록보기</button>
                        <button type="button" class="btn btn-danger">전송하기</button>
                        <button type="button" class="btn btn-dark">다시쓰기</button>
                    </div>
                </div>
                <!-- 페이지 번호 -->
                <div class="row mt-3">
                    <div class="col">
                        <ul class="pagination justify-content-center">
                            <li class="page-item"><a class="page-link" href="#">
                                <i class="bi-skip-backward-fill" style="font-size: 1rem;"></i></a></li>
                            <li class="page-item"><a class="page-link" href="#">
                                <i class="bi-skip-start-fill" style="font-size: 1rem;"></i></a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">
                                <i class="bi-skip-end-fill" style="font-size: 1rem;"></i></a></li>
                            <li class="page-item"><a class="page-link" href="#">
                                <i class="bi-skip-forward-fill" style="font-size: 1rem;"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright영역 -->
        <div class="row border border-dark border-bottom-0 border-start-0 border-end-0 pt-2">
            <div class="col-2">
                <h2>신태임&trade;</h2>
            </div>
            <div class="col-10">
                Email : asdf
                Mobile : asdf
                Address : asdf
                <br>
                copyright &copy;
                All right reserved.
            </div>
        </div>


    </div>
</body>
</html>