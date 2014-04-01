import java.io.*;
import java.net.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.json.JSONObject;

public class JSONTransference extends HttpServlet{
  protected void doPost(HttpServletRequest request,HttpServletResponse response)
  throws ServletException, IOException{
  
    String json = readJSONString(request);
    JSONObject jsonObject=null;
    try{
      jsonObject = new JSONObject(json);
    }catch(Exception e){
      System.out.println("ParseException : " + e.toString());
    }															
    
    String responseText="";
    try{
      responseText = "Emp Name : " + jsonObject.getString("ename") 
                        + "<br>Job : " +jsonObject.getString("job");
    }catch(Exception e){
    	System.out.println("Error : " + e.toString());
  }                    
    response.setContentType("text/xml");
    response.getWriter().print(responseText);
  
  }	//doPost
  
  private String readJSONString(HttpServletRequest request){  
  
    StringBuffer json = new StringBuffer();
	String line = null;
	
	try{
	  BufferedReader reader = request.getReader();
	  while( (line=reader.readLine()) != null){
	    json.append(line);
	  }	
	}catch(Exception e){
	  System.out.println("Error reading JSON string: " + e.toString());
	}
	return json.toString();
  } //readJSONString
}
