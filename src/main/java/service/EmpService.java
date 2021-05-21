package service;

import entity.Employee;
import utils.ConnectionHelper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmpService {

    public boolean createEmp(Employee employee){
        PreparedStatement pstm = null;
        try (Connection conn = ConnectionHelper.getConnection()) {
            String query = "INSERT INTO employee (full_name, birthday, address, position, department) " +
                    "VALUES (?,?,?,?,?) ";
            pstm = conn.prepareStatement(query);
            pstm.setString(1, employee.getFullName());
            pstm.setString(2, employee.getBirthDay());
            pstm.setString(3, employee.getAddress());
            pstm.setString(4, employee.getPosition());
            pstm.setString(5, employee.getDepartment());
            int resultCreate = pstm.executeUpdate();
            if (resultCreate != 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Employee> getAll(){
        List<Employee> listEmp = new ArrayList<>();
        Statement stmt = null;
        try (Connection conn = ConnectionHelper.getConnection()) {
            stmt = conn.createStatement();
            String query = "SELECT * FROM employee";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Employee employee = new Employee();
                employee.setId(rs.getLong("id"));
                employee.setFullName(rs.getString("full_name"));
                employee.setBirthDay(rs.getString("birthday"));
                employee.setAddress(rs.getString("address"));
                employee.setPosition(rs.getString("position"));
                employee.setDepartment(rs.getString("department"));
                listEmp.add(employee);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listEmp;
    }
}
