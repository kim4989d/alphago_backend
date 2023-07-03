package com.base.webapp.dao;

import java.sql.Connection;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.sql.QueryRunner;

public class QuestionDao extends BaseDao {
	public String nextpage = "";

//	name varchar(100),
//	phone varchar(100),
//	questionsubject varchar(100),
//	questioncaseradio varchar(100),
//	questionreply varchar(100),
//	questionresult varchar(100)

	public ResultSetTray QuestionList(Connection conn, Tray reqTray) {

		QueryRunner queryRunner = null;
		ResultSetTray rsTray = null;
		StringBuffer query = null;

		query = new StringBuffer();

		// date_format(REG_DT,'%Y/%m/%d %H:%i') as timeg
		query.append("select 					 \n");
		query.append("questionname						\n");
		query.append(",questionphone 		            \n");
		query.append(",questionid 				            \n");
		query.append(",questionsubject 		            \n");
		query.append(",questioncaseradio 	            \n");
		query.append(",questionpoint 			            \n");
		query.append(",questionpointresult 	            \n");
		query.append(",questionflag 			            \n");
		query.append(",questionreply 			            \n");
		query.append(",questioncorrect 		            \n");

		query.append(" from  questionpool where questionflag='N'");

		queryRunner = new QueryRunner(this.getClass().getName(), query.toString(), reqTray);
		try {
			rsTray = (ResultSetTray) queryRunner.query(conn);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rsTray;
	}

	public void QuestionAdminInsert(Connection connection, Tray tray) {

		QueryRunner queryRunner = null;
		ResultSetTray rsTray = null;
		StringBuffer query = null;

		StringBuffer bu = new StringBuffer();

		bu.append(
				"insert into questionpool(questionid,questionsubject,questioncaseradio,questionpoint,questionpointresult,questioncorrect,questionflag)values");
		bu.append(
				"(:questionid,:questionsubject,:questioncaseradio,:questionpoint,:questionpointresult,:questioncorrect,'N')");

		queryRunner = new QueryRunner("public void QuestionInsert(Connection connection ,Tray tray )", bu.toString(),
				tray);
		queryRunner.update(connection);
	}

	public void QuestionMainInsert(Connection connection, Tray tray) {

		QueryRunner queryRunner = null;
		ResultSetTray rsTray = null;
		StringBuffer query = null;

		StringBuffer bu = new StringBuffer();

		bu.append("insert into questionpool(questionname,questionphone,questionreply,questionflag)values");
		bu.append("(:questionname,:questionphone,:questionreply,'Y')");

		queryRunner = new QueryRunner("public void QuestionMainInsert(Connection connection ,Tray tray )",
				bu.toString(), tray);
		queryRunner.update(connection);
	}

}
