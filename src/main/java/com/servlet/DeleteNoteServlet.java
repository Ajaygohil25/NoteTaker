package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.connection.FactoryProvider;
import com.model.NoteModel;

public class DeleteNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			int id=Integer.parseInt(request.getParameter("noteid"));
			Session s= FactoryProvider.getFactory().openSession();
			Transaction tx= s.beginTransaction();
			NoteModel nid= (NoteModel) s.get(NoteModel.class, id);
			s.delete(nid);
			System.out.println("object deleted  from database...");
	        tx.commit();
			s.close();
			response.sendRedirect("All_notes.jsp");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			System.out.println(e);
		}
		
		
	}

	
}
