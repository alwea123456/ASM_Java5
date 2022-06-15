<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form id="frm" class="bg-white login-form" name="frmLogin">
	<div class="container ">
		<legend style="margin-top: 30px;">
			Đăng Nhập
			<svg xmlns="http://www.w3.org/2000/svg" style="margin-left: 100px;"
				width="50" height="50" fill="currentColor"
				class="bi bi-qr-code-scan" viewBox="0 0 16 16">
                                    <path
					d="M0 .5A.5.5 0 0 1 .5 0h3a.5.5 0 0 1 0 1H1v2.5a.5.5 0 0 1-1 0v-3Zm12 0a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0V1h-2.5a.5.5 0 0 1-.5-.5ZM.5 12a.5.5 0 0 1 .5.5V15h2.5a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5v-3a.5.5 0 0 1 .5-.5Zm15 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1 0-1H15v-2.5a.5.5 0 0 1 .5-.5ZM4 4h1v1H4V4Z" />
                                    <path
					d="M7 2H2v5h5V2ZM3 3h3v3H3V3Zm2 8H4v1h1v-1Z" />
                                    <path
					d="M7 9H2v5h5V9Zm-4 1h3v3H3v-3Zm8-6h1v1h-1V4Z" />
                                    <path
					d="M9 2h5v5H9V2Zm1 1v3h3V3h-3ZM8 8v2h1v1H8v1h2v-2h1v2h1v-1h2v-1h-3V8H8Zm2 2H9V9h1v1Zm4 2h-1v1h-2v1h3v-2Zm-4 2v-1H8v1h2Z" />
                                    <path d="M12 9h2V8h-2v1Z" />
                                  </svg>
		</legend>

		<div class="input-place">
			<div class="inputGroup">
				<input placeholder="Email/Số Điện Thoại/Tên Đăng Nhập"
					name="txtUserName" ng-model="userName" type="text"
					class="form-control" aria-describedby="passwordHelpBlock" required>
				<div class="form-text error">
					<span id="chkUserName" ng-show="frmLogin.txtUserName.$invalid">Vui
						lòng nhập tài khoản</span>
				</div>
			</div>
			<div class="inputGroup">
				<input placeholder="Mật Khẩu" name="txtPassword" type="password"
					ng-model="password" class="form-control"
					aria-describedby="passwordHelpBlock" required>
				<div class="form-text error">
					<span ng-show="frmLogin.txtPassword.$invalid">Vui lòng nhập
						mật khẩu</span>
				</div>
			</div>
			<br>
			<button class="btn-lg btn-block col-sm-12 sign-in" ng-click="login()">Đăng
				Nhập</button>
			<small id="loginFm" style="color: #f94e30; display: none;">Sai
				tài khoản hoặc mật khẩu</small>
			<div class="forgot-password justify-content-around">
				<a data-bs-toggle="modal" data-bs-target="#exampleModal">Quên
					Mật Khẩu</a> <a style="margin-left: 125px;">Đăng Nhập bằng SMS</a> <br>
				<div class="separator">Hoặc</div>
			</div>
			<br>
			<div class="button-link d-flex justify-content-center">
				<button type="button" class="btn btn-outline-secondary">
					<i class="fab fa-facebook-f" style="color: blue;"></i> Facebook
				</button>
				<button type="button" class="btn btn-outline-secondary">
					<i class="fab fa-google" style="color: red;"></i> Google
				</button>
				<button type="button" class="btn btn-outline-secondary"
					style="width: 100px;">
					<i class="fab fa-apple" style="color: black;"></i>Apple
				</button>
			</div>

			<div class="signUp text-center">
				<span>Bạn mới biết đến Shepoo? <a href="#!signUp">Đăng Ký</a></span>
			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="input-group mb-3">
							<input type="text" class="form-control"
								placeholder="Nhập tài khoản" aria-label="Recipient's username"
								aria-describedby="button-addon2">
							<button class="btn btn-outline-secondary" type="button"
								id="button-addon2">Button</button>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Đóng</button>
						<button type="button" class="btn btn-primary">Xác nhận</button>
					</div>
				</div>
			</div>
		</div>


	</div>
</form>