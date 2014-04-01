<%@page contentType="text/html;charset=Big5"%>
<%
  String memId = request.getParameter("memId");
  String member="";
  
  if( memId.equals("Sara"))
    member = "Sara Tung,1980-08-08,F,master's degree,Y,No.300, Jhongda Rd., Jhongli City, Taoyuan County 32001, Taiwan (R.O.C.)";
  else if( memId.equals("Amy"))
    member = "Amy Chuang,2000-01-01,F,doctor's degree,Y,No. 1, Sec. 4, Roosevelt Road, Taipei, 10617 Taiwan(R.O.C)";
  else
    member = "Not found";	
%>	 
<%=member%>
