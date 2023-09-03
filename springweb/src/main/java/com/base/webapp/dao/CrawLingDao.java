package com.base.webapp.dao;

import java.sql.Connection;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.sql.QueryRunner;

public class CrawLingDao extends BaseDao {

	public String nextpage = "";

	public ResultSetTray CrawLingList(Connection conn, Tray reqTray) {

		QueryRunner queryRunner = null;
		ResultSetTray rsTray = null;
		StringBuffer query = null;

		query = new StringBuffer();

		query.append("select 					 \n");
		query.append("craw1          ");
		query.append(",craw2         ");
		query.append(",craw3  ");
		query.append(",craw4    ");

		query.append(" from  crawling");

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
