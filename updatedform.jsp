<%@page session="true"%>
<% String err=(String)session.getAttribute("Error"); %>
<!DOCTYPE html>
<html>
<head>
	<title>Registration Form</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="client.js"></script>
</head>
<body>
	<div class="content">
		<div class="page">
			<div class="container">
				<header><h1>Registration Form</h1></header>
				
				<form id="form-registration" action="validate.jsp" method="post">
					<table>
						<tr>
							<td class="col-label"><label for="name">Name</label></td>
							<td class="col-textinput">
								<input type="text" class="txtbox" id="name" name="name" required autocomplete="off" maxlength="20" pattern="[a-zA-Z0-9]+">
							</td>
						</tr>
						<tr>
							<td class="col-label"><label for="matricno">Matric No.</label></td>
							<td class="col-textinput">
								<input class="numeric txtbox" type="text" id="matricno" name="matricno" required autocomplete="off" maxlength="7" pattern="[0-9]+">
							</td>
						</tr>
						<tr>
							<td class="col-label"><label for="curr-address">Current Address</label></td>
							<td class="col-textinput"><textarea class="txtbox" id="curr-address" name="curr-address" required autocomplete="off" maxlength="100" pattern="[a-zA-Z0-9]+"></textarea></td>
						</tr>
						<tr>
							<td class="col-label"><label for="home-address">Home Address</label></td>
							<td class="col-textinput"><textarea class="txtbox" id="home-address" name="home-address" required autocomplete="off" maxlength="100" pattern="[a-zA-Z0-9]+"></textarea></td>
						</tr>
						<tr>
							<td class="col-label"><label for="email">Email (Gmail Account)</label></td>
							<td class="col-textinput"><input type="email" class="txtbox" id="email-address" name="email-address" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required autocomplete="off" maxlength="40"></td>
						</tr>
						<tr>
							<td class="col-label"><label for="ini-mobilephone">Mobile Phone No.</label></td>
							<td class="col-textinput"><input type="text" class="txtbox numeric init" name="ini-mobilephone" id="ini-mobilephone" required autocomplete="off" maxlength="4" size="5" pattern="[0-9]+"><span> - </span><input type="text" class="txtbox numeric phone" id="mobilephone" name="mobilephone" required autocomplete="off" maxlength="8" pattern="[0-9]+"></td>
						</tr>
						<tr>
							<td class="col-label"><label for="home-phone">Home Phone No. (Emergency)</label></td>
							<td class="col-textinput"><input type="text" class="txtbox numeric init" name="ini-homephone" id="home-phone" required autocomplete="off" maxlength="4" pattern="[0-9]+"><span> - </span><input type="text" class="txtbox numeric phone" id="homephone" name="homephone" required autocomplete="off" maxlength="8" pattern="[0-9]+"></td>
						</tr>
					</table>
					<br>
					<input class="btn" type="submit" value="Register">
				</form>
					<% if(err!=null)
						{
							out.println(err);
						}
					%>
			</div>
		</div>
	</div>
</body>
</html>