<%@page contentType="text/html;charset=Big5"%>
<%
  String memId = request.getParameter("memId");
  String memName="";
  
  if( memId.equals("Sara"))
    memName = "����";
  else if( memId.equals("Amy"))
    memName = "�@�@";
  else
    memName = "�d�L���H";	
%>	 
<%=memName%>