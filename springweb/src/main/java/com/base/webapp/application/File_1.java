package com.base.webapp.application;

import java.io.File;

public class File_1 {
	static String path;
	
	static File file;
	
	public  static void setFile(String pathfilename) {
		
		file=new File(pathfilename);
	
		
	}
	
	
	public static File getFile() {
		return file;
	}
	
	
	
	public File_1() {
		// TODO Auto-generated constructor stub
	}
	public static void main(String[] args) throws Exception{
		
			
				String path="/webshare/file";
				File_1.setFile(path);
				
				
				
				String str[]=File_1.getFile().list();
				
		for (int i = 0; i < str.length; i++) {
			String string = str[i];
		
			File_1.setFile(path+"/"+str[i]);
			File filelists=File_1.getFile();
		
			if(filelists.isFile()) {
				System.out.println("file:"+File_1.getFile().getPath());
				if(filelists.getName().equals("test.txt")) {
					//System.out.println(filelists.getName()+" 파일을 찾았습니다.");
				}
			
			
			}else {
				
				System.out.println("dir:"+File_1.getFile().getPath());
			
				if(filelists.getName().equals("새 폴더")) {
					//System.out.println(filelists.getName()+" 폴더를 찾았습니다.");
				}
			
			
			}
			

			
		}
							
	}
	
}
