package com.base.webapp.application;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

public class File_3 {

	public static void main(String[] args) throws IOException {
	
		
		
		 String path = "/webshare/file/ok.txt";
		 File file=new File(path);
	
		 
		 file.createNewFile();
	
		 
		 
		 PrintWriter print=new PrintWriter(file);
		 print.write("test\n");
		 print.write("test2\n");
		 print.write("test3\n");
		 print.write("한글입니다. \n");
		 
		 
		 print.flush();
		 
	
			
			
			
			
			
			
	
	}
}
