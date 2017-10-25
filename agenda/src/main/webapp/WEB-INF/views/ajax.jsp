<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@ page import="com.lucatic.agenda.utilidades.Utilidades"%>
<%@ page import="com.lucatic.agenda.config.ApplicationContextConfig"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body >

	<%  
  ApplicationContextConfig a;
String s=request.getParameter("val");  
if(s==null || s.trim().equals("")){  
out.print("Introduce un numero o un id");
}else{  

try{  
	//Conectamos a la bbdd
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agenda","root","1111");

//comprobamos si el valor pasado es de tipo numero para buscar por id
if(Utilidades.isNumeric(s)){
	int id=Integer.parseInt(s); 
	PreparedStatement ps=con.prepareStatement("select * from personas where idpersonas=?");
	ps.setInt(1,id);  
	ResultSet rs=ps.executeQuery(); 
	while(rs.next()){
	out.print("ID"+rs.getInt(1)+" NOMBRE: "+rs.getString(2)+" APELLIDO1: "+rs.getString(3)+" APELLIDO2: "+rs.getString(4)+" DNI: "+rs.getInt(5)+" F.NACIMIENTO: "+rs.getDate(6));
	}
}else{
	//buscamos por nombre
	PreparedStatement ps1=con.prepareStatement("select * from personas where nombre=?");
	ps1.setString(1,s);  
	ResultSet rs1=ps1.executeQuery(); 
	while(rs1.next()){  
	out.print(" NOMBRE: "+"<a href='detallesUser?"+rs1.getInt(1)+"'>"+rs1.getString(2)+"</a> APELLIDO1: "+rs1.getString(3)+" APELLIDO2: "+rs1.getString(4)+" DNI: "+rs1.getInt(5)+" F.NACIMIENTO: "+rs1.getDate(6));
	}  
	
}

con.close();
  
}catch(Exception e){e.printStackTrace();}  


}

%>
</body>
</html>