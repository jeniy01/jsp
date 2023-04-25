<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test4_form.jsp - 폼 입력 테스트4</title>
<style>
</style>
</head>
<body>
	<h2>회원가입 폼</h2>
	<form name="join_form" action="test2.jsp" method="post">
		<table>
			<tbody>
				<tr>
					<th><label for="id">아이디</label></th>
					<td><input type="text" name="id" id="id" required></td>
				</tr>
				<tr>
					<th><label for="pw">비밀번호</label></th>
					<td><input type="password" name="pw" id="pw" required></td>
				</tr>
				<tr>
					<th><label for="pw2">비밀번호 확인</label></th>
					<td><input type="password" name="pw2" id="pw2" required></td>
				</tr>
				<tr>
					<th><label for="name">이름</label></th>
					<td><input type="text" name="name" id="name" required></td>
				</tr>
				<tr>
					<th><label for="tel">전화번호</label></th>
					<td><input type="tel" name="tel" id="tel"></td>
				</tr>
				<tr>
					<th><label for="email">이메일</label></th>
					<td><input type="email" name="email" id="email"></td>
				</tr>
				<tr>
					<th><label>취미</label></th>
					<td><input type="checkbox" name="hobby" id="hb1" value="낚시"> 낚시 &nbsp; &nbsp; &nbsp; 
						<input type="checkbox" name="hobby" id="hb2" value="등산"> 등산 &nbsp; &nbsp; &nbsp;
						<input type="checkbox" name="hobby" id="hb3" value="독서"> 독서 &nbsp; &nbsp; &nbsp;
						<input type="checkbox" name="hobby" id="hb4" value="게임"> 게임 &nbsp; &nbsp; &nbsp;
						<input type="checkbox" name="hobby" id="hb5" value="스포츠"> 스포츠 &nbsp; &nbsp; &nbsp;
					</td>
				</tr>
				<tr>
					<th><label>성별</label></th>
					<td><input type="radio" name="gender" id="gen1" value="1" checked> 남 &nbsp; &nbsp; &nbsp; 
						<input type="radio" name="gender" id="gen2" value="2"> 여 &nbsp; &nbsp; &nbsp;
					</td>
				</tr>
				<tr>
					<th><label>사는 지역</label></th>
					<td>
						<select name="addr">
							<option value="">-- 선택안함 --</option>
							<option value="capital">서울/경기</option>
							<option value="kangwon">강원권</option>
							<option value="choongcheong">충청권</option>
							<option value="jeonla">전라권</option>
							<option value="kyoungsang">경상권</option>
							<option value="jeju">제주권</option>
							<option value="etc">해외/기타</option>
						</select>
					</td>
				</tr>
				<tr>
					<th><label>하고 싶은 말</label></th>
					<td>	
						<textarea rows="10" cols="90" name="memo"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="회원가입"> &nbsp; &nbsp; &nbsp; &nbsp;
						<input type="reset" value="취소">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>