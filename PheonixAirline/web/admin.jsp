<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Admin Page</title>
    </head>
    <% //In case, if Admin session is not set, redirect to Login page
        if ((request.getSession(false).getAttribute("admin") == null)) {
    %>
    <jsp:forward page="/login.jsp"></jsp:forward>
    <%}%>
    <!--when page loads show user monitor table-->

    <body>
        <center><h2>Admin Home</h2></center>
        Welcome <%=session.getAttribute("admin")%>

        <div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
        <%
            if ((request.getAttribute("monitor_table") == null)) {
                request.getRequestDispatcher("AdminDCServlet").forward(request, response);
            }
        %>


        <table border="1">
            <thead>
            </thead>
            <tbody>
                <%
                    if ((request.getAttribute("approve_table") != null)) {
                        List data = new ArrayList();
                        data = (List) request.getAttribute("approve_table");
                        Iterator itr = data.iterator();
                        while (itr.hasNext()) {
                %>
            <form action="ApproveServlet" method="POST">
                <tr>
                <input type="hidden" name="user_id" value="<%=itr.next()%>" />
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td>
                    <input type="submit" value="Approve" />
                </td>
                </tr>
            </form>
            <%}
                }%>
        </tbody>
    </table>



    <form action="SearchUsers_aServlet" method="POST">
        <h3>View Users</h3>
        <input type="text" name="search_user" value="" />
        <select name="search_type">
            <option value="email">Email</option>
            <option value="username">Username</option>
        </select>
        <input type="submit" value="View Users" name="view_users" />
    </form>

    <table border="1">
        <thead>
        </thead>
        <tbody>
            <%
                if ((request.getAttribute("monitor_table") != null)) {
                    List data = new ArrayList();
                    data = (List) request.getAttribute("monitor_table");
                    Iterator itr = data.iterator();
                    while (itr.hasNext()) {
            %>
            <tr>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
            </tr>
            <%}
                }%>
        </tbody>
    </table>




</body>
</html>