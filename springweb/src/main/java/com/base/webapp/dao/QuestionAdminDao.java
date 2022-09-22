package com.base.webapp.dao;

import java.sql.Connection;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.sql.QueryRunner;

public class QuestionAdminDao extends BaseDao {
	public String nextpage = "";

	
	public ResultSetTray QuestionAdminList(Connection conn, Tray reqTray) {

		QueryRunner queryRunner = null;
		ResultSetTray rsTray = null;
		StringBuffer query = null;

		query = new StringBuffer();

		query.append("select 					 \n");
//			query.append("company_id, 									 \n");		
//			query.append("date_format(REG_DT,'%Y/%m/%d %H:%i') as timeg, \n");
//			query.append("company_name 									 \n");		
//			query.append("from TBL_COMPANY 								 \n");
//			query.append("order by company_id 							 \n");		
		query.append("userno          ");
		query.append(",userid         ");
		query.append(",userwritedate  ");
		query.append(",usersubject    ");
		query.append(",usercontent    ");
		query.append(",usercount      ");
		query.append(",userlinke      ");

		query.append(" from  board");
		query.append(" where userno:userno");
		
		
		queryRunner = new QueryRunner(this.getClass().getName(), query.toString(), reqTray);
		try {
			rsTray = (ResultSetTray) queryRunner.query(conn);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rsTray;
	}
	
	
	public ResultSetTray NoticeView(Connection conn, Tray reqTray) {

		QueryRunner queryRunner = null;
		ResultSetTray rsTray = null;
		StringBuffer query = null;

		query = new StringBuffer();

		query.append("select 					 \n");
//			query.append("company_id, 									 \n");		
//			query.append("date_format(REG_DT,'%Y/%m/%d %H:%i') as timeg, \n");
//			query.append("company_name 									 \n");		
//			query.append("from TBL_COMPANY 								 \n");
//			query.append("order by company_id 							 \n");		
		query.append("userno          ");
		query.append(",userid         ");
		query.append(",userwritedate  ");
		query.append(",usersubject    ");
		query.append(",usercontent    ");
		query.append(",usercount      ");
		query.append(",userlinke      ");

		query.append(" from  board");
		query.append(" where userno=:userno");
		
		
		queryRunner = new QueryRunner(this.getClass().getName(), query.toString(), reqTray);
		try {
			rsTray = (ResultSetTray) queryRunner.query(conn);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rsTray;
	}
	
	
}