package com.udemyjavawebapplessons;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/HelloWorldServlet")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Step 1: Set content type
        response.setContentType("text/html");

        // Step 2: Get the printwriter. Sends data back to the browser
        PrintWriter out = response.getWriter();

        // Step 3: Generate HTML content
        out.println("<html><body>");

        out.println("<h2> Hello World </h2>");
        out.println("<hr>");
        out.println("Time on the server is: " + new java.util.Date());
        out.println("</html></body>");
    }
}
