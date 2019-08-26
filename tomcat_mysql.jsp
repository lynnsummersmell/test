<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>   
<%@ page import="java.sql.*"%>
<%@ page import="java.net.InetAddress"%>

<html>
<head>
<title>通过JSP打开数据表</title>
</head>
<body>

 <%  
        try {  
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://10.100.130.24:3306/test_mysql"; //数据库名
            String username = "lilin";  //数据库用户名
            String password = "Lilin123!";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

            if(conn != null){  
                out.print("数据库连接成功！\n");
                out.print("<br />");
                InetAddress addr = InetAddress.getLocalHost();
                out.println("主机地址："+addr.getHostAddress());
                out.println("主机名："+addr.getHostName()); 
                out.println("<br />"); 
                out.println("-------------------------------"); 
                out.print("<br />");            
                Statement stmt = null;  
                ResultSet rs = null; 
                String sql ="select * from person";  //查询语句
                stmt = conn.createStatement();  
                rs = stmt.executeQuery(sql);  
                out.println("执行结果如下所示:"); 
                out.println("<br />"); 
                out.println("-------------------------------"); 
                out.println("<br />"); 
                out.println("姓名" + "\t" + "别"+"\t"+"年龄");
                out.println("<br />");  
                while (rs.next()) {  
                out.println(rs.getString("name")+"   &nbsp  "+rs.getString("sex")+"  &nbsp "+rs.getInt("age"));
                out.print("<br />");
                }             
            } 
            else{  
                out.print("连接失败！");  
            }  
        }
        catch (Exception e) {        
            out.print("数据库连接异常！");  
        }  
%>   
</body>
</html>
