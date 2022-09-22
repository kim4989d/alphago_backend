package com.base.webapp.dao;

import java.sql.Connection;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.sql.QueryRunner;

public class LoginDao extends BaseDao {
	public String nextpage = "";

	public ResultSetTray SelectLogin(Connection conn, Tray reqTray) {

		QueryRunner queryRunner = null;
		ResultSetTray rsTray = null;
		StringBuffer query = null;

		query = new StringBuffer();
		query.append(" select                                \n");
		query.append("  userid                				 \n");
		query.append(" ,passwd                 			\n");
		query.append(" ,question              		   		 \n");
		query.append(" ,questionans                		 \n");
		query.append(" ,sex             			     \n");
		query.append(" ,userauth                  \n");
		query.append(" ,sessionout                         \n");
		query.append(" ,sessiontime                  \n");
		query.append(" ,phone                 \n");
		query.append(" ,handphone                 \n");
		query.append(" ,fax                 \n");
		query.append(" ,email                  \n");
		query.append(" ,post                  \n");
		query.append(" ,address                  \n");
		query.append(" ,addressdetail                 \n");
		query.append(" ,jumin                 \n");
		query.append(" from userlogin                        \n");
		query.append(" where userid=:userid and passwd=:passwd");
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