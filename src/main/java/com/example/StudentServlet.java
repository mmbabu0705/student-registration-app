package com.example;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

@WebServlet("/register")
public class StudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        String name = req.getParameter("name");
        String fatherName = req.getParameter("fatherName");
        String dob = req.getParameter("dob");
        String gender = req.getParameter("gender");
        String course = req.getParameter("course");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");

        // ===== Excel File Path =====
        String path = "/opt/data/student-details.xlsx";   // change if required
        File file = new File(path);

        XSSFWorkbook wb;
        XSSFSheet sheet;

        if (file.exists()) {

            // Open existing file safely (no InvalidFormatException)
            FileInputStream fis = new FileInputStream(file);
            wb = new XSSFWorkbook(fis);
            fis.close();

            sheet = wb.getSheetAt(0);

        } else {

            // Create new workbook + sheet + header
            wb = new XSSFWorkbook();
            sheet = wb.createSheet("Students");

            XSSFRow header = sheet.createRow(0);
            header.createCell(0).setCellValue("Student Name");
            header.createCell(1).setCellValue("Father Name");
            header.createCell(2).setCellValue("DOB");
            header.createCell(3).setCellValue("Gender");
            header.createCell(4).setCellValue("Course");
            header.createCell(5).setCellValue("Email");
            header.createCell(6).setCellValue("Phone");
            header.createCell(7).setCellValue("Address");
        }

        int rowNo = sheet.getLastRowNum() + 1;
        XSSFRow row = sheet.createRow(rowNo);

        row.createCell(0).setCellValue(name);
        row.createCell(1).setCellValue(fatherName);
        row.createCell(2).setCellValue(dob);
        row.createCell(3).setCellValue(gender);
        row.createCell(4).setCellValue(course);
        row.createCell(5).setCellValue(email);
        row.createCell(6).setCellValue(phone);
        row.createCell(7).setCellValue(address);

        FileOutputStream out = new FileOutputStream(file);
        wb.write(out);
        out.close();
        wb.close();

        // Forward data to success.jsp
        req.setAttribute("name", name);
        req.setAttribute("fatherName", fatherName);
        req.setAttribute("dob", dob);
        req.setAttribute("gender", gender);
        req.setAttribute("course", course);
        req.setAttribute("email", email);
        req.setAttribute("phone", phone);
        req.setAttribute("address", address);

        req.getRequestDispatcher("success.jsp").forward(req, resp);
    }
}
