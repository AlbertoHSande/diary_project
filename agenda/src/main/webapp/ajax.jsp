<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

  <%  
String s=request.getParameter("val");  
if(s==null || s.trim().equals("")){  
out.print("introduce id de usuario");
}else{  
int id=Integer.parseInt(s); 
try{  
	//Conectamos a la bbdd
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agenda","root","1111");  
PreparedStatement ps=con.prepareStatement("select * from personas where idpersonas=?");
ps.setInt(1,id);  
ResultSet rs=ps.executeQuery(); 
while(rs.next()){  
out.print(rs.getInt(1)+" "+rs.getString(2));
}  
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>
</body>
</html>