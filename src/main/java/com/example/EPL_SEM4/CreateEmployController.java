package com.example.EPL_SEM4;

import entity.Employee;
import service.EmpService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "createController", urlPatterns = "/employee")
public class CreateEmployController extends HttpServlet {
    List<Employee> listEmp = new ArrayList<>();
    EmpService empService = new EmpService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/employee.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Employee employee = new Employee();
        if (req.getParameter("fullname") != null) {
            employee.setFullName(req.getParameter("fullname"));
        }
        if (req.getParameter("birthday") != null) {
                String birthday = req.getParameter("birthday");
                employee.setBirthDay(birthday);
        }
        if (req.getParameter("address") != null) {
            employee.setAddress(req.getParameter("address"));
        }
        if (req.getParameter("position") != null) {
            employee.setPosition(req.getParameter("position"));
        }
        if (req.getParameter("department") != null) {
            employee.setDepartment(req.getParameter("department"));
        }
        boolean result = empService.createEmp(employee);
        if(result){
            List<Employee> listResult = empService.getAll();
            listEmp = listResult;
            req.setAttribute("listEmp", listEmp);
            req.getRequestDispatcher("/list.jsp").forward(req, resp);
        }
    }
}
