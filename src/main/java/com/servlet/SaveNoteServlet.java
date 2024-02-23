package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.connection.FactoryProvider;
import com.model.NoteModel;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SaveNoteServlet() {
        super();
    }
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			String title= request.getParameter("title");
			String note= request.getParameter("notetext");
			NoteModel nobj= new NoteModel(title, note, new Date());
			Session s=FactoryProvider.getFactory().openSession();
			Transaction  tx= s.beginTransaction();
			s.save(nobj);
			tx.commit();
			s.close();
			System.out.println("Note added successfully !..");
			response.sendRedirect("All_notes.jsp");
		}
		catch (Exception e) 
		{
			System.out.println(e);
			e.printStackTrace();
		}
		
		
	}

}
