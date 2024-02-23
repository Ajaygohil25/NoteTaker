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


public class UpdateNoteServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
  
    public UpdateNoteServlet() 
    {
        super();
      
    }

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	       try 
	       {
	    	   int id=Integer.parseInt(request.getParameter("noteid"));
	    	   String Title=request.getParameter("title");
	    	   String note=request.getParameter("notetext");
	    	   Session s = FactoryProvider.getFactory().openSession();
	    	   Transaction tx=s.beginTransaction();
	    	    NoteModel n=(NoteModel) s.get(NoteModel.class, id);
	    	    n.settitle(Title);
	    	    n.setNote(note);
	    	    n.setDate(new Date());
	    	    tx.commit();
	    	   s.close();
	    	   System.out.println("update in note..."); 
	    	   response.sendRedirect("All_notes.jsp");
	    	   
	    	   
	       } 
	       catch (Exception e) 
	       {
			 e.printStackTrace();
			 System.out.println(e);
	       }		
	}

}
