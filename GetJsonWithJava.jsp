<%@page contentType="text/html;charset=Big5" %>
<%@page import="org.json.JSONObject" %>
<%
    response.setHeader("Pragma", "No-Cache");
    response.setHeader("Cache-Control", "No-Cache");
    response.setDateHeader("Expires", 0);
    //�إ�json����:emp,���tename�ݩ�(��:Linsanity)��phone�ݩ�,
    //�䤤phone�ݩʬ��@��json����,���tO�ݩ�(��:03-4257387),H�ݩ�(��:03-168168),M �ݩ�(��:0933168168)
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

