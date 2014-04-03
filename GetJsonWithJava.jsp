<%@page contentType="text/html;charset=Big5" %>
<%@page import="org.json.JSONObject" %>
<%
    response.setHeader("Pragma", "No-Cache");
    response.setHeader("Cache-Control", "No-Cache");
    response.setDateHeader("Expires", 0);
    //建立json物件:emp,內含ename屬性(值:Linsanity)及phone屬性,
    //其中phone屬性為一個json物件,內含O屬性(值:03-4257387),H屬性(值:03-168168),M 屬性(值:0933168168)
    JSONObject emp = new JSONObject();
    emp.put("empId", "1688");
    emp.put("ename", "Linsanity");

    JSONObject phone = new JSONObject();
    phone.put("O", "03-4257387");
    phone.put("H", "03-168168");
    phone.put("M", "0933-168168");
    emp.put("phone", phone);
%>
<%=emp%> 

