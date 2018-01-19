package com.javaex.dao;

import java.util.List;

import com.javaex.vo.EmaillistVo;

public class DaoTest {

	public static void main(String[] args) {
		EmaillistVo vo=new EmaillistVo(1,"유","재석","you@gmail.com");
		
		EmaillistDao dao=new EmaillistDao();
	/*	dao.insert(vo);*/
		
		List<EmaillistVo> aList=dao.getList();
		
		for(EmaillistVo avo : aList) {
			System.out.println(avo.toString());

		}
	}

}
