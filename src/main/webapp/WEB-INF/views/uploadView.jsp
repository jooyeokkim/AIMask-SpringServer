<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet" href="resources/css/uploadview.css"/>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&family=Quicksand:wght@700&display=swap" rel="stylesheet">
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous"> -->

    <title>Home</title>
  </head>
  <body>
    <div class="mainContainer">
        <div class="d-flex justify-content-center align-items-center">
          <div id="nav">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-heart white ms-2" viewBox="0 0 16 16">
				<path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
			</svg>
            <label class="mt-3 mb-3 nskr white">aimask.kro.kr</label>
          </div>
        </div>
        <section class="d-flex justify-content-center align-items-center">
          <div id="main-intro" class="d-flex flex-column align-items-center">
              <label id="maintitle" class="quicksand mb-4">AIMask</label>
			  <div id="icons">
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
					<path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
				  </svg>
				<label class="quicksand fs-5">or</label>
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
					<path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
					<path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
					<path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
				  </svg>
			  </div>
			  <label id="main-description" class="nskr">개인/단체 사진을 선택하고 '다음'을 누르세요!</label>
			  <label id="main-description" class="nskr mb-4">여러분들의 사진은 절대 유출시키지 않습니다</label>
              <br>
              <div id="search" class="d-flex justify-content-center align-items-center">
                <form class="d-flex justify-content-center align-items-center nskr" action="upload" method="POST" enctype="multipart/form-data">
				  <input type="file" name="myfile" style="width:230px"><br>
                  <button type="submit" class="btn btn-success nskr" onclick="appendLoading()">다음</button>
                </form>
              </div>
              <div id="loading">
                <div class="d-flex align-items-center">
                  <strong id="font-bhs" class="icon-margin">Loading...</strong>
                  <div class="spinner-border ms-auto" role="status" aria-hidden="true"></div>
                </div>
              </div>
          </div>
        </section>
        <p id="carouse-message" class="mb-3 mt-5 text-center"><b>이 AI는 이미지속 인물에게 마스크를 씌웁니다!</b></p>
        <footer class="d-flex justify-content-center mb-4">
          <img src="resources/upload/mask_example.png">
        </footer>
    </div>
    <script>
      function appendLoading() {
        var search_button = document.getElementById("search-button");
        var loading = document.getElementById("loading");
        loading.style.display="block";
		  }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
  </body>
</html>