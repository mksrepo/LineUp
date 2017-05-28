<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Photo Gallery</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery.simple-dtpicker.js"></script>
<link type="text/css" href="jquery.simple-dtpicker.css" rel="stylesheet" />
<script type="text/javascript">
	$(document).ready(function(){
	    $("button").click(function(){
	        $('#imgPath').val(($(this).data('src')));
	        $('#statusMsg').val($('#'+$(this).data('status')).val());
	        $('#pageForm').submit();
	    });
	});
</script>
</head>
<body>
	<form id="pageForm" action="/LineUp/postontwitter" method="post">
		<input type="hidden" id="imgPath" name="imgPath" />
		<input type="hidden" id="statusMsg" name="statusMsg" value="Post by LineUp application" />
	</form>
	<table cellspacing="5">
		<tr>
			<td colspan="3"><h2 style="color: red;"><%=request.getAttribute("message")==null?"":"Message: "+request.getAttribute("message")%></h2></td>
		</tr>
		<tr>
			<td align="center" colspan="3"><h1>Morning Post</h1></td>
		</tr>
		<tr>
			<td align="center"><img alt="good morning" src="/LineUp/resources/img/morning/1.jpg" height="110px"></td>
			<td align="center"><img alt="good morning" src="/LineUp/resources/img/morning/2.jpg" height="110px"></td>
			<td align="center"><img alt="good morning" src="/LineUp/resources/img/morning/3.jpg" height="110px"></td>
		</tr>
		<tr>
			<td align="center"><input type="text" id="mrng1" /></td>
			<td align="center"><input type="text" id="mrng2" /></td>
			<td align="center"><input type="text" id="mrng3" /></td>
		</tr>
		<tr>
			<td align="center"><Button data-src="/resources/img/morning/1.jpg" data-status="mrng1">Post on Twitter</Button></td>
			<td align="center"><Button data-src="/resources/img/morning/2.jpg" data-status="mrng2">Post on Twitter</Button></td>
			<td align="center"><Button data-src="/resources/img/morning/3.jpg" data-status="mrng3">Post on Twitter</Button></td>
		</tr>
		<tr>
			<td align="center"><img alt="good morning" src="/LineUp/resources/img/morning/4.jpg" height="110px"></td>
			<td align="center"><img alt="good morning" src="/LineUp/resources/img/morning/5.jpg" height="110px"></td>
			<td align="center"><img alt="good morning" src="/LineUp/resources/img/morning/6.jpg" height="110px"></td>
		</tr>
		<tr>
			<td align="center"><input type="text" id="mrng4" /></td>
			<td align="center"><input type="text" id="mrng5" /></td>
			<td align="center"><input type="text" id="mrng6" /></td>
		</tr>
		<tr>
			<td align="center"><Button data-src="/resources/img/morning/4.jpg" data-status="mrng4">Post on Twitter</Button></td>
			<td align="center"><Button data-src="/resources/img/morning/5.jpg" data-status="mrng5">Post on Twitter</Button></td>
			<td align="center"><Button data-src="/resources/img/morning/6.jpg" data-status="mrng6">Post on Twitter</Button></td>
		</tr>
		<tr>
			<td align="center" colspan="3"><h1>Night Post</h1></td>
		</tr>
		<tr>
			<td align="center"><img alt="good night" src="/LineUp/resources/img/night/1.jpg" height="110px"></td>
			<td align="center"><img alt="good night" src="/LineUp/resources/img/night/2.jpg" height="110px"></td>
			<td align="center"><img alt="good night" src="/LineUp/resources/img/night/3.jpg" height="110px"></td>
		</tr>
		<tr>
			<td align="center"><input type="text" id="night1" /></td>
			<td align="center"><input type="text" id="night2" /></td>
			<td align="center"><input type="text" id="night3" /></td>
		</tr>
		<tr>
			<td align="center"><Button data-src="/resources/img/night/1.jpg" data-status="night1">Post on Twitter</Button></td>
			<td align="center"><Button data-src="/resources/img/night/2.jpg" data-status="night2">Post on Twitter</Button></td>
			<td align="center"><Button data-src="/resources/img/night/3.jpg" data-status="night3">Post on Twitter</Button></td>
		</tr>
		<tr>
			<td align="center"><img alt="good night" src="/LineUp/resources/img/night/4.jpg" height="110px"></td>
			<td align="center"><img alt="good night" src="/LineUp/resources/img/night/5.jpg" height="110px"></td>
			<td align="center"><img alt="good night" src="/LineUp/resources/img/night/6.jpg" height="110px"></td>
		</tr>
		<tr>
			<td align="center"><input type="text" id="night4" /></td>
			<td align="center"><input type="text" id="night5" /></td>
			<td align="center"><input type="text" id="night6" /></td>
		</tr>
		<tr>
			<td align="center"><Button data-src="/resources/img/night/4.jpg" data-status="night4">Post on Twitter</Button></td>
			<td align="center"><Button data-src="/resources/img/night/5.jpg" data-status="night5">Post on Twitter</Button></td>
			<td align="center"><Button data-src="/resources/img/night/6.jpg" data-status="night6">Post on Twitter</Button></td>
		</tr>
	</table>
</body>
</html>