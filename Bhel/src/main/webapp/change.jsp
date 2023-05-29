<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Retrieve and Update Data</title>
</head>
<body>

    <%-- Retrieve Data --%>
    <%
        // Establish database connection
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bhel", "root", "");

            // Execute query to retrieve data
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM bhel_login1");
            List<String> options = new ArrayList<>();
            List<String> options2 = new ArrayList<>();


            // Process the retrieved data
            while (rs.next()) {
                String name = rs.getString("username");
                String fnarea = rs.getString("functionarea");
                
                String option = rs.getString("functionalarea"); 
                options.add(option);
                String option_id = rs.getString("ID");
                options2.add(option_id);


                // Display the retrieved data
                out.println("Name: " + name + ", functionalarea: " + fnarea);
            }

            // Close the resources
            rs.close();
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close the database connection
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>

    <%-- Update Data --%>
    <%
        // Check if the form is submitted
        if (request.getMethod().equals("POST")) {
            // Get the updated data from form fields
            String newName = request.getParameter("name");
            String fnarea = request.getParameter("functionarea");

            // Establish database connection
            /* //Connection con = null; */
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bhel", "root", "");

                // Execute update query to modify data
                PreparedStatement pstmt = con.prepareStatement("UPDATE bhel_login1 SET username = ?, functionarea = ?");
                pstmt.setString(1, newName);
                pstmt.setString(2, fnarea);
                pstmt.executeUpdate();

                // Display success message
                out.println("Data updated successfully!");
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // Close the database connection
                if (con != null) {
                    try {
                        con.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    %>

    <%-- Display Update Form --%>
    <form method="post">
        Current function area: <input type="text" name="functionalarea" value="<%= request.getAttribute("currentFnArea") %>" disabled><br><br>
     
    Change function area :<select class="input-group-text" id="inputGroup-sizing-default" name="functionalarea">
                          <% for (String option : options) { %>
                           <option value="<%= option %>"><%= option %></option>
                             <% } %>
                             </select><br>
    Controlling Officer: <select class="input-group-text" id="inputGroup-sizing-default" name="ID">
        <% for (String option : options2) { %>
            <option value="<%= option %>"><%= option %></option>
        <% } %>
        
        </select><br>
    
    <button type="submit" class="btn">Submit</button>
    
    </form>

</body>
</html>
