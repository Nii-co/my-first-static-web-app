<%@ Language= "VBScript" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Test Share Cookies between Microsoft Edge and IE Mode</title>
</head>
<body>
<%
Response.Cookies("TestUser")="TestUserForShareCookies"
Response.Cookies("TestUser").domain ="trees.com"
Response.AddHeader "Set-Cookie", ".mas=TestShareCookie; domain=trees.com"
Response.AddHeader "Set-Cookie", "token=abcteest932r; domain=trees.com"
Response.Cookies("Test")="TestShareCookie"
Response.Cookies("Test").domain="trees.com"
'Response.Redirect  "http://windows10.contoso.com/TestShareCookieSubPageJS.html"
%>
<a href="http://lujiem687vm.trees.com:100/sharedcookie/TestShareCookieSubPageJS.html">Visit TestShareCookieSubPageJS!</a>
<br/>

</body>
</html>