package util;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;

import com.itextpdf.text.Paragraph;

import com.itextpdf.text.pdf.PdfWriter;


import bean.Employee;


import java.io.FileOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class GeneratePdf {

    public static OutputStream getPdfFile(List<Employee> employee) throws IOException {
    	System.out.println("Generating pdf");
      
    	OutputStream file = new FileOutputStream(new File("C://Users//vinot//Downloads//mypdf.pdf"));
        
        
  	  Document document = new Document();

        try {
        	

            PdfWriter.getInstance(document, file);
            document.open();

            for (Employee emp : employee) {
            	System.out.println("writing the file");
                System.out.println(emp.getFirstName());
                System.out.println(emp.getLastName());
                System.out.println(emp.getAge());

                document.add(new Paragraph(emp.getFirstName()));
                document.add(new Paragraph(" "));
                document.add(new Paragraph(emp.getLastName()));
                document.add(new Paragraph(" "));
                document.add(new Paragraph(emp.getAge()));
                System.out.println("writing completed");
            }

       
           
            document.close();
            file.close();
          
            
        } catch (DocumentException ex) {
        
            Logger.getLogger(GeneratePdf.class.getName()).log(Level.SEVERE, null, ex);
        }
		
        return file;

      
    }
}