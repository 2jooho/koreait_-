<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자 페이지</title>
        
        <link rel="stylesheet" href="<c:url value="/assets/css/ad_index_styles.css"/>" />
                
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        <style>
 		body{
  			font-family: "Helvetica Nene", Helvetica, Arial, 맑은 고딕;,"malgun gothic", sans-serif;
 		}
 </style>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="<c:url value="/admin_page/admin_index.jsp"/>">로고자리</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- 상단 네비게이션 검색 창-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- 상단 네비게이션 삽입삽입-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item"  href="<c:url value="../user_page/style_minjoo/myPage.jsp"/>">Settings</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="<c:url value="../user_page/style_minjoo/login.jsp"/>">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <!--메인 컨텐츠 wrapper-->
        <div id="layoutSidenav">
            <!--좌측 네비게이션 세팅-->
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading"></div>
                            <a class="nav-link" href="<c:url value="/admin_page/admin_index.jsp"/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-house-user"></i></div>
                                관리자 홈
                            </a>
                            <div class="sb-sidenav-menu-heading">menu</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsers" aria-expanded="false" aria-controls="collapseUsers">
                                <div class="sb-nav-link-icon"><i class="fas fa-address-card"></i></div>
                                사용자 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseUsers" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<c:url value="/admin_page/admin_memberInfo.jsp"/>">회원정보</a>
                                    <a class="nav-link" href="<c:url value="/admin_page/admin_trainerInfo.jsp"/>">트레이너 정보</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-history"></i></div>
                                예약관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<c:url value="/admin_page/admin_reservInfo.jsp"/>">예약 정보</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-copy"></i></div>
                                컨텐츠 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseGongji" aria-expanded="false" aria-controls="pagesCollapseGongji">
                                        공지사항 관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseGongji" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="<c:url value="/admin_page/admin_notice.jsp"/>">공지사항 목록</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseSales" aria-expanded="false" aria-controls="pagesCollapseSales">
                                        판매 관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseSales" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link"href="<c:url value="/admin_page/admin_sell.jsp"/>">판매 내역</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseBranch" aria-expanded="false" aria-controls="pagesCollapseBranch">
                                        지점 관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseBranch" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="<c:url value="/admin_page/admin_branch.jsp"/>">지점 목록</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseCus" aria-expanded="false" aria-controls="pagesCollapseCus">
                                        고객문의 관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseCus" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="<c:url value="/admin_page/admin_inqury.jsp"/>">고객문의 목록</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseEvent" aria-expanded="false" aria-controls="pagesCollapseEvent">
                                        이벤트 관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseEvent" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="<c:url value="/admin_page/admin_event.jsp"/>">이벤트 목록</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Accounting</div>
                            <a class="nav-link" href="<c:url value="/admin_page/admin_income.jsp"/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-coins"></i></div>
                                수입
                            </a>
                            <a class="nav-link" href="<c:url value="/admin_page/admin_outcome.jsp"/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-coins"></i></div>
                                지출
                            </a>
                            <a class="nav-link" href="<c:url value="/admin_page/admin_result.jsp"/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                통계
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        사용자 로그인 정보
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">김관리 관리자님, 환영합니다! :)</h1>
                        <ol>
                        </ol>

                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area mr-1"></i>
                                            Page View
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-pen-square"></i>
                                            Page Description
                                    </div>
                                    <div class="card-body">
                                        <table class="table" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>구분</th>
                                                <th>내용</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Total Visitor</td>
                                                <td>1,234,567</td>
                                            </tr>
                                            <tr>
                                                <td>Today Visitor</td>
                                                <td>1,234</td>
                                            </tr>
                                            <tr>
                                                <td>Yesterday Visitor</td>
                                                <td>234</td>
                                            </tr>
                                            <tr>
                                                <td>New Reservation</td>
                                                <td>234</td>
                                            </tr>
                                            <tr>
                                                <td>New Customer Inqury</td>
                                                <td>234</td>
                                            </tr>
                                        </tbody>
                                      </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                <a href="">예약 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>제목</th>
                                                <th>트레이너 명</th>
                                                <th>예약자 명</th>
                                                <th>예약 시간</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>234</td>
                                                <td>이두근과 함께하는 이두박살 PT</td>
                                                <td>이두근</td>
                                                <td>김삼두</td>
                                                <td>2020/04/25</td>
                                                <td>예약 진행중</td>
                                            </tr>
                                            <tr>
                                                <td>233</td>
                                                <td>삼두근과 함께하는 삼두박살 PT</td>
                                                <td>삼두근</td>
                                                <td>강이두</td>
                                                <td>2020/07/25</td>
                                                <td>예약 완료</td>
                                            </tr>
                                            <tr>
                                                <td>232</td>
                                                <td>소돼지와 달려봐요</td>
                                                <td>소돼지</td>
                                                <td>강한말</td>
                                                <td>2020/01/12</td>
                                                <td>예약 취소</td>
                                            </tr>
                                            <tr>
                                                <td>231</td>
                                                <td>김자전거와 함께하는 자전자전 스피닝</td>
                                                <td>김자전거</td>
                                                <td>김오토바이</td>
                                                <td>2020/03/29</td>
                                                <td>예약 완료</td>
                                            </tr>
                                            <tr>
                                                <td>230</td>
                                                <td>김자전거와 함께하는 자전자전 스피닝</td>
                                                <td>김자전거</td>
                                                <td>김신발</td>
                                                <td>2020/03/29</td>
                                                <td>예약 완료</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                <a href="">고객문의 목록</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>제목</th>
                                                <th>작성자 명</th>
                                                <th>작성 시간</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>6,321</td>
                                                <td>살이 빠질까요?</td>
                                                <td>김봄</td>
                                                <td>2020/11/25</td>
                                                <td>답변 완료</td>
                                            </tr>
                                            <tr>
                                                <td>6,320</td>
                                                <td>살이 찔까요?</td>
                                                <td>강여름</td>
                                                <td>2020/10/25</td>
                                                <td>답변 완료</td>
                                            </tr>
                                            <tr>
                                                <td>6,319</td>
                                                <td>오늘 햄버거 가능?</td>
                                                <td>송가을</td>
                                                <td>2020/09/12</td>
                                                <td>미 답변</td>
                                            </tr>
                                            <tr>
                                                <td>6,318</td>
                                                <td>소주는 살 안찌죠?</td>
                                                <td>구겨울</td>
                                                <td>2020/06/29</td>
                                                <td>답변 완료</td>
                                            </tr>
                                            <tr>
                                                <td>6,317</td>
                                                <td>질문답변 질문답변 질문답변 질문답변 질문답변 질문답변</td>
                                                <td>임계절</td>
                                                <td>2020/02/29</td>
                                                <td>답변 완료</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <!--Footer 푸터 삽입 영역-->
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; 홈페이지 명</div>
                            <div>
                            <!-- 홈 화면 정해지면 넣기 -->
                                <a href="#">홈페이지 명</a>
                                &middot;
                                <a href="<c:url value="/admin_page/admin_index.jsp"/>">관리자 페이지</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        
         <script src="<c:url value="/assets/demo/chart-bar-demo.js"/>"></script>
         <script src="<c:url value="/assets/demo/chart-area-demo.js"/>"></script>
         <script src="<c:url value="/js/scripts.js"/>"></script>
         <script src="<c:url value="/assets/demo/datatables-demo.js"/>"></script>
    </body>
</html>
