<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>마이홈 알림설정</title>
  <link rel="stylesheet" href="../assets/css/index.css">
  <link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<style>

  @keyframes fade_up {
    0% {
      opacity: 0;
      transform: translateY(10%);
    }

    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .header-container {
    display: flex;
    flex-direction: column;
    width: 100%;
  }

  #header-wrap {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 1440px;
    height: 151px;
    margin: 0 auto;
  }

  #header-wrap #border {
    display: flex;
    flex-direction: column;
    margin: 0 auto;
  }

  #header-wrap #nav {
    position: relative;
    display: flex;
    width: 1440px;
    margin: 0 auto;
    margin-top: 20px;
    justify-content: space-between;
    align-items: end;
    margin-bottom: 15px;
  }

  #header-wrap #nav .sector {
    position: absolute;
    line-height: 20px;
    margin-left: 10px;
    /* border: 1px solid #818181; */
    background-color: #818181;
    height: 55px;
    width: 0.1px;
    top: 34px;
    right: 96px;
  }

  #header-wrap #nav .left {
    width: 236px;
    height: 60px;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  #header-wrap #nav .left img {
    width: 236px;
    height: 60px;
  }

  #header-wrap #nav .right {
    display: flex;
    gap: 26px;
    align-items: end;
    padding-top: 44px;
  }

  #header-wrap #nav .right .icons {
    display: flex;
    gap: 26px;
  }

  #header-wrap #nav .right .icons img {
    display: flex;
    width: 30px;
    height: 30px;
  }

  #header-wrap #nav .right .login {
    display: flex;
    font-size: 16px;
    margin-left: 26px;
  }

  #header-wrap #nav .right .login a {
    display: flex;
    width: 100%;
    height: 100%;
    text-align: center;
    justify-content: center;
    text-decoration-line: none;
    color: black;
    padding-right: 31px;
  }

  /* ë©”ë‰´ë¶€ë¶„ */

  .menu-container {
    display: flex;
    flex-direction: column;
    flex: 1;
    z-index: 10;
  }

  #sector {
    display: flex;
    width: 100%;
    height: 0.1px;
    background-color: #818181;
    z-index: 50;
  }

  .menu-wrap {
    display: flex;
    height: 50px;
    font-weight: bold;
    border-top: solid #818181 0.1px;
    border-bottom: solid #818181 0.1px;
  }

  .menu-wrap .menu {
    display: flex;
    align-items: center;
    width: 150px;
    height: 50px;
  }

  .menu-wrap .menu a:hover {
    color: #FFC303;
  }

  .sub-menu-wrap {
    display: flex;
  }

  .sub-menu-wrap ul {
    overflow: hidden;
    height: 0;
  }

  .sub-menu-wrap .sub-menu {
    width: 150px;
    height: 50px;
    display: flex;
    align-items: center;
    text-align: center;
  }

  .sub-menu-wrap .sub-menu a:hover {
    color: #FFC303;
  }

  /* sub */
  #sub {
    display: flex;
    flex-direction: column;
    padding-top: 20px;
    width: 1440px;
    height: 96px;
    margin: 0 auto;
  }

  #sub .main-sub {
    font-weight: bold;
  }

  .sub-sub {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 10px;
  }

  .sub-sub a:hover {
    color: #FFC303;
    font-size: bold;
  }

  .current-category {
    color: #ffc303;
    font-weight: bold;
    text-decoration: none;
  }



  /* contents */
  #notification {
    display: flex;
    flex-direction: column;
    margin-top: 120px;
    align-items: center;
  }

  #notification .not1 {
    font-size: 20px;
    line-height: 30px;
    font-weight: bold;
    margin-right: 420px;
  }

  #notification .not2 {
    font-size: 16px;
    line-height: 24px;
    margin-bottom: 10px;
    margin-right: 265px;
  }

  #notification .alarm-agree .toggle .set-alarm {
    display: flex;
    flex-direction: column;
    border: 1px solid #828282;
    border-radius: 20px;
    width: 580px;
    height: 200px;
    padding: 60px 32px 59px 32px;
    box-sizing: border-box;
    align-items: left;
    gap: 18px;
    align-content: center;
  }

  .set-alarm{
    display: flex;
    justify-content: center;
  }
  .set-alarm li {
    display: flex;
    list-style: none;
    margin: 0 auto;
  }

  #notification .alarm-agree {
    text-align: center;
  }

  #notification .alarm-agree .toggle {
    position: relative;
  }

  p {
    font-size: 20px;
    line-height: 30px;
  }

  .toggle input {
    display: none;
  }

  .toggle-label1 {
    display: flex;
    width: 60px;
    height: 30px;
    background: #cccccc;
    border-radius: 20px;
    cursor: pointer;
    position: relative;
    margin-left: 80px;
    padding-left: 2px;
    box-sizing: border-box;
  }


  .toggle-label1:after {
    content: "";
    position: absolute;
    width: 26px;
    height: 26px;
    background: white;
    border-radius: 50%;
    transition: all 0.3s;
    margin-top: 1.5px;
    margin-left: 1px;
  }

  .toggle-label2 {
    display: flex;
    width: 60px;
    height: 30px;
    background: #cccccc;
    border-radius: 20px;
    cursor: pointer;
    position: relative;
    margin-left: 94px;
    padding-left: 2px;
    box-sizing: border-box;
  }


  .toggle-label2:after {
    content: "";
    position: absolute;
    width: 26px;
    height: 26px;
    background: white;
    border-radius: 50%;
    transition: all 0.3s;
    margin-top: 1.5px;
    margin-left: 1px;
  }

  #toggle-checkbox1:checked+.toggle-label1 {
    background: #FFC303;
  }

  #toggle-checkbox1:checked+.toggle-label1:after {
    transform: translateX(30px);
  }

  #toggle-checkbox2:checked+.toggle-label2 {
    background: #FFC303;
  }

  #toggle-checkbox2:checked+.toggle-label2:after {
    transform: translateX(30px);
  }

  .agree-marketing {
    margin-top: 10px;
    font-size: 12px;
    line-height: 18px;
    margin-right: 255px;
  }

  /* footer */

  footer {
    width: 100%;
    /* 부모 요소의 너비를 100%로 설정 */
    padding: 20px;
    /* 패딩 추가 */
    background-color: #f9f9f9;
    /* 배경색 */
    font-family: Arial, sans-serif;
    /* 폰트 스타일 */
    margin-top: 150px;
  }

  .footer-black {
    color: #000;
  }

  .footer-container {
    display: flex;
    justify-content: space-between;
    width: 1200px;
    margin: 0 auto;
    padding: 20px 0;
  }

  .footer-section {
    margin-bottom: 2px;
    /* 각 섹션 간의 간격 */
  }

  .footer-section h3 {
    font-size: 18px;
    margin-bottom: 15px;
  }

  .footer-section p {
    margin: 10px 0;
    /* 기본 여백 제거 */
    line-height: 1.2;
    /* 줄 간격 조정 */
    margin: 1px 0;
    white-space: normal;
    /* 줄바꿈 허용 */
    font-size: 11px;
  }

  .footer-section ul {
    list-style: none;
    /* 리스트 점 제거 */
    padding: 0;
    /* 기본 패딩 제거 */
    margin: 0;
    /* 기본 마진 제거 */
    line-height: 1.8;
    /* 줄 간격 설정 (1.8은 글자 크기의 180% 간격) */
  }

  .footer-section ul li {
    margin-bottom: 10px;
    /* 리스트 항목 간격 */
    font-size: 12px;
  }

  .footer-section ul li a {
    text-decoration: none;
    /* 링크 밑줄 제거 */
    color: #000000;
    /* 텍스트 색상 */
    font-size: 12px;
  }

  .contact-info {
    display: flex;
    /* Flexbox로 가로 정렬 */
    align-items: center;
    /* 수직 중앙 정렬 */
  }

  .highlight {
    color: #000000;
    /* 강조 색상 */
    font-weight: bold;
    /* 글자 두껍게 */
    font-size: 12px;
    /* 글자 크기 */
  }

  .custom-list {
    list-style-type: none;
    /* 기본 리스트 스타일 제거 */
  }

  .custom-list li::before {
    content: '•';
    /* 리스트 앞에 점 추가 */
    color: #000;
    /* 점의 색상 */
    font-weight: bold;
    /* 점 굵게 */
    display: inline-block;
    /* 점을 인라인으로 표시 */
    width: 13px;
    /* 점과 텍스트 사이의 간격 조정 */
  }

  .button-container {
    display: flex;
    /* 버튼을 가로로 정렬 */
    gap: 10px;
    /* 버튼 사이 간격 */
    align-items: center;
    /* 버튼을 텍스트와 수직으로 정렬 *
    margin-top: 10px; /* 버튼 위쪽 마진 */
  }

  .kakao-button,
  .email-button {
    background-color: #FFFFFF;
    color: #000000;
    border: solid #E6E6E6;
    margin: 3px;
    margin-bottom: 10px;
    border-radius: 20px;
    cursor: pointer;
    padding: 5px 15px;
    /* 버튼 내부 여백 */
    font-size: 11px;
  }

  .kakao-button {
    width: 211px;
    height: 29px;
  }

  .email-button {
    width: 93px;
    height: 29px;
  }

  .footer-section {
    width: 100%;
    /* 부모 요소의 너비를 100%로 설정 */
    padding: 10px;
    /* 패딩 추가 */
    background-color: #f9f9f9;
    /* 배경색 */
    font-family: Arial, sans-serif;
    /* 폰트 스타일 */
  }

  .footer-section.legal p {
    margin: 0;
    /* 기본 여백 제거 */
    white-space: nowrap;
    /* 줄바꿈을 방지합니다. */
    overflow: visible;
    /* 텍스트가 부모 요소의 경계를 넘어가도 보이게 합니다. */
  }

  .legal p {
    font-size: 12px;
    color: #767676;
    line-height: 1.5;
  }
</style>

<body>
  <div class="header-container">
    <div id="header-wrap">
      <div id="border">
        <div id="nav">
          <div class="left">
            <img src="../assets/images/myhome/logo.png" alt="로고">
          </div>
          <div class="right">
            <div class="icons">
              <a href="#"><img src="../assets/images/myhome/search_icon2.jpg" alt="검색"></a>
              <a href="#"><img src="../assets/images/myhome/truck_transport_icon2.jpg" alt="배송"></a>
              <a href="#"><img src="../assets/images/myhome/shopping_cart_icon2.jpg" alt="카트"></a>
            </div>
            <div class="sector"></div>
            <div class="login"><a href="#">로그인</a></div>
          </div>
        </div>
        <div class="menu-container">
          <ul class="menu-wrap h4">
            <li class="menu"><a href="#">스토어</a></li>
            <li class="menu"><a href="#">커뮤니티</a></li>
            <li class="menu"><a href="#">마이홈</a></li>
            <li class="menu"><a href="#">이벤트</a></li>
          </ul>
          <div id="sector"></div>
          <div class="sub-menu-wrap">
            <ul>
              <li class="sub-menu"><a href="#">강아지</a></li>
              <li class="sub-menu"><a href="#">고양이</a></li>
              <li class="sub-menu"><a href="#">새</a></li>
              <li class="sub-menu"><a href="#">물고기</a></li>
              <li class="sub-menu"><a href="#">헬스+</a></li>
            </ul>
            <ul>
              <li class="sub-menu"><a href="#">홈</a></li>
              <li class="sub-menu"><a href="#">헬스+</a></li>
            </ul>
            <ul>
              <li class="sub-menu"><a href="./profile.jsp">나의 정보</a></li>
              <li class="sub-menu"><a href="./no-pet.jsp">반려동물 정보</a></li>
              <li class="sub-menu"><a href="./shipping-status.jsp">나의 쇼핑</a></li>
              <li class="sub-menu"><a href="#">내 게시글</a></li>
            </ul>

            <ul>
              <li class="sub-menu"><a href="#"></a></li>
              <li class="sub-menu"><a href="#"></a></li>
              <li class="sub-menu"><a href="#"></a></li>
              <li class="sub-menu"><a href="#"></a></li>
            </ul>

          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="sub">
    <div class="main-sub h1">나의 정보</div>
    <span class="sub-sub">
      <a href="./profile.jsp" class="h4">프로필</a>
      <p>|</p>
      <a href="./likes.jsp" class="h4">좋아요</a>
      <p>|</p>
      <a href="./notification.jsp" class="current-category h4">알림설정</a>
      <p>|</p>
      <a href="./set-password.jsp" class="h4">비밀번호 변경</a>
      </span>
  </div>
  <div id="notification">
    <span class="not1">이벤트 및 혜택 알림</span>
    <span class="not2">특가, 쿠폰 등 이벤트 정보를 빠르게 알려드릴게요</span>
    <div class="alarm-agree">
      <div class="toggle">
        <ul class="set-alarm">
          <li>
            <p>이메일 알림</p>
            <input type="checkbox" id="toggle-checkbox1">
            <label for="toggle-checkbox1" class="toggle-label1"></label>
          </li>
          <li>
            <p>SMS 알림</p>
            <input type="checkbox" id="toggle-checkbox2">
            <label for="toggle-checkbox2" class="toggle-label2"></label>
          </li>
        </ul>
      </div>
    </div>
    <script src="script.js"></script>
    <span class="agree-marketing">*알림 수신 동의와 함께 개인정보 마케팅 활용에 동의하시게 됩니다.</span>
  </div>
  <footer>
    <div class="footer-container">
      <div class="footer-section">
        <h3>고객센터 &gt;</h3>
        <p><span class="highlight">0000-0000</span> <span>09:00~18:00</span></p>
        <ul class="custom-list">
          <li>평일: 전체 문의 상담</li>
          <li>토요일, 공휴일: 포포 배송 주문건 상담</li>
          <li>일요일: 휴무</li>
        </ul>
      </div>

      <div class="footer-section">
        <ul>
          <li><a href="#">회사소개</a></li>
          <li><a href="#">채용정보</a></li>
          <li><a href="#">이용약관</a></li>
          <li><a href="#">개인정보 처리방침</a></li>
          <li><a href="#">공지사항</a></li>
          <li><a href="#">안전거래센터</a></li>
        </ul>
      </div>

      <div class="footer-section">
        <ul>
          <li><a href="#">입점신청</a></li>
          <li><a href="#">제휴/광고 문의</a></li>
          <li><a href="#">POWPOW 신고센터</a></li>
          <li><a href="#">파트너 개인정보 처리방침</a></li>
          <li><a href="#">상품권 소개</a></li>
          <li><a href="#">고객의 소리</a></li>
        </ul>
      </div>

      <div class="footer">
        <div class="footer-section legal">
          <p>(주)포포 | 공동 제작 류재은 이진아 김태혁 문세연 신민철 이소연 최도윤 | 서울 강남구 테헤란로 146, 3층 4층</p>
          <p>contact@powpow.com | 사업자등록번호: <span class="highlight">사업자정보확인</span></p>
          <p>통신판매업신고번호 제2024-서울강남-0000호</p>
        </div>

        <div class="footer-section legal2">
          <p>(주)포포는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 책임을 지지 않습니다.</p>
          <p>단, (주) 포포가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다.</p>
        </div>

        <div class="footer-section legal3">
          <p>Copyright 2024. powpow, Co., Ltd. All rights reserved.</p>
        </div>
      </div>
    </div>
  </footer>
</body>
<script>
  const mainMenus = document.querySelectorAll(".menu-wrap .menu");
  const subMenuUl = document.querySelectorAll(".sub-menu-wrap ul");
  const subMenuAll = document.querySelector(".sub-menu-wrap");
  const subMenus = document.querySelectorAll(".sub-menu-wrap .sub-menu");

  let count = 0;
  let hoverTimeout; // 타임아웃을 저장할 변수

  mainMenus.forEach((menu) => {
    menu.addEventListener("mouseover", () => {
      clearTimeout(hoverTimeout); // 기존에 설정된 타임아웃이 있으면 제거
      subMenuUl.forEach((ul) => {
        ul.style.height = "250px";
        ul.style.backgroundColor = "white";
      });
    });

    menu.addEventListener("mouseleave", () => {
      hoverTimeout = setTimeout(() => {
        subMenuUl.forEach((ul) => {
          ul.style.height = "0";
          ul.style.backgroundColor = "none";
        });
      }, 100); // 100ms 지연 후 메뉴를 닫음
    });
  });

  subMenus.forEach((sub, i) => {
    sub.addEventListener("mouseover", () => {
      clearTimeout(hoverTimeout); // 서브메뉴에서도 마우스 오버 시 타임아웃 제거
      subMenuUl.forEach((ul) => {
        ul.style.height = "250px";
      });
    });

    sub.addEventListener("mouseleave", () => {
      hoverTimeout = setTimeout(() => {
        subMenuUl.forEach((ul) => {
          ul.style.height = "0";
        });
      }, 100); // 100ms 지연 후 서브메뉴를 닫음
    });
  });
  const checkbox = document.getElementById('toggle-checkbox');
        const status = document.getElementById('status');

    checkbox.addEventListener('change', () => {
        status.textContent = checkbox.checked ? '현재 상태: 동의함' : '현재 상태: 동의하지 않음';
    });
</script>

</html>