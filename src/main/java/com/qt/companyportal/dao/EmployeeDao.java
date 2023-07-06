package com.qt.companyportal.dao;

import com.qt.companyportal.database.Database;
import com.qt.companyportal.model.EmployeeModel;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class EmployeeDao {

    public String insert(EmployeeModel em) {
        Connection con = Database.connectDb();  // for connection
        String message = null;  // for returning msg success/error/null
        CallableStatement cs = null;

        String sql = "insert into employees(name, email, phone, exp, designation, company, state, city )"
                + "values (?,?,?,?,?,?,?,?)";
        try {
            cs = con.prepareCall(sql);
            cs.setString(1, em.getName());
            cs.setString(2, em.getEmail());
            cs.setString(3, em.getPhone());
            cs.setInt(4, em.getExperience());
            cs.setString(5, em.getDesignation());
            cs.setString(6, em.getCompany());
            cs.setString(7, em.getState());
             cs.setString(8, em.getCity());

            int row = cs.executeUpdate();

            if (row >= 1) {
                message = "Record insert Successfull";
            }

        } catch (SQLException ex) {
            message = "unable to insert bcoz of : " + ex.getMessage();
        } finally {

            if (con != null) {

                try {
                    con.close();
                } catch (SQLException ex) {
                    
                }

            }

        }

        return message;
    }

    public ArrayList<EmployeeModel> selectAll() {
        ArrayList<EmployeeModel> employees = new ArrayList<>();
        Connection con = Database.connectDb();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            String sql = "select * from employees";
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();

            while (rs.next()) {
                employees.add(
                        new EmployeeModel(
                                rs.getInt("id"),
                                rs.getString("name"),
                                rs.getString("email"),
                                rs.getString("phone"),
                                rs.getInt("exp"),
                                rs.getString("designation"),
                                rs.getString("company"),
                                rs.getString("state"),
                                rs.getString("city"),
                                rs.getString("created_at"),
                                rs.getString("modified_at"))
                );

            }

        } catch (Exception e) {
            System.out.println("error in selectAll " + e.getMessage());
        } finally {

            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                }
            }
        }

        return employees;
    }

    public EmployeeModel selectById(int id) {
        EmployeeModel em = null;
        Connection con = Database.connectDb();
        CallableStatement cs = null;
        ResultSet rs = null;

        try {
            String sql = "select * from employees where id = " + id;
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();

            while (rs.next()) {
                em = new EmployeeModel(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getInt("exp"),
                        rs.getString("designation"),
                        rs.getString("company"),
                        rs.getString("state"),
                        rs.getString("city"),
                        rs.getString("created_at"),
                        rs.getString("modified_at")
                );
            }

        } catch (Exception e) {
            System.out.println("error in SelectById() " + e.getMessage());
        }
        return em;
    }

    public String update(EmployeeModel em) {
        Connection con = Database.connectDb();
        CallableStatement cs = null;
        String message = null;
        try {
            String sql = "update employees set name = ? , email=?, phone=?, exp=?, designation=?, company=?, city=?, state=? where id = ?";
            cs = con.prepareCall(sql);
            cs.setString(1, em.getName());
            cs.setString(2, em.getEmail());
            cs.setString(3, em.getPhone());
            cs.setInt(4, em.getExperience());
            cs.setString(5, em.getDesignation());
            cs.setString(6, em.getCompany());
            cs.setString(7, em.getCity());
            cs.setString(8, em.getState());
            cs.setInt(9, em.getId());  // id for where clause
            int row = cs.executeUpdate();

            if (row >= 1) {
                message = "Employee reocord Update Successfull ";
            }
        } catch (Exception e) {
            message = "unable to update bcoz of : " + e.getMessage();
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                }
            }
        }
        return message;
    }

    public String delete(int id) {

        Connection con = Database.connectDb();
        CallableStatement cs = null;
        String message = null;

        try {
            String sql = "delete from employees where id =" + id;
            cs = con.prepareCall(sql);
            int rows = cs.executeUpdate();

            if (rows >= 1) {
                message = "Employee delete successful";

            }
        } catch (Exception e) {
            message = "unable to delete bcoz of  :" + e.getMessage();

        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
            {

            }
        }
        return message;

    }

    public int login(String email, String password) {
        Connection con = Database.connectDb();
        CallableStatement cs = null;
        ResultSet rs = null;
        int status = 0;
        System.out.println("email "+email);
        System.out.println("pass " +password);

        try {
            String sql = "select * from admin where email=? AND password =? ";

            cs = con.prepareCall(sql);
            cs.setString(1, email);
            cs.setString(2, password);
            rs = cs.executeQuery();

            while (rs.next()) {
                status = 1;
            }
        } catch (SQLException e) {
            System.out.println("Unable to login because of  : " + e.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

        return status;
    }

}
