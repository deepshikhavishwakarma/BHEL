package pack1;


import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/India")
public class India extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out =response.getWriter()){
			String name =request.getParameter("t1");
			String surname =request.getParameter("t2");
			long Contact = Long.parseLong(request.getParameter("t3"));
			
			FileWriter fw = new FileWriter("D://Contact1.txt",true);
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(name+" "+surname+" "+Contact);
			bw.newLine();
			bw.close();
			fw.close();
			
			out.println("<html>"
					+"<head>"
					+"<body>");
			out.println("Data Inserted");
			out.println("<a href='index.html'>Back</a>");
			out.println("</body>");
			out.println("</html>");
			
		}
	}

}
