package com.mycompany.springframework.dao;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.mycompany.springframework.Ch16JUnitTest;
import com.mycompany.springframework.dao.mybatis.Ch13AccountDao;
import com.mycompany.springframework.dto.Ch15Account;

public class Ch16AccountDaoTest extends Ch16JUnitTest {
	
	@Autowired
	private Ch13AccountDao accountDao;
	
	@Test
	public void testSelectAll() {
		List<Ch15Account> list = accountDao.selectAll();
		Assert.assertEquals(2, list.size());
		for(Ch15Account account : list) {
			Assert.assertNotNull(account);
		}
	}
	
	@Test
	public void testSelectByAno() {
		Ch15Account account = accountDao.selectByAno(1);
		//selectByAno가 정상적으로 실행이 되었다면 account객체가 null이 아닌 정상적인 값을 가진채 리턴되어야한다.
		Assert.assertNotNull(account);
		
		Assert.assertEquals(account.getAno(), 1);
		Assert.assertEquals(account.getOwner(), "홍길동");
		Assert.assertEquals(account.getBalance(), 740000);
	}
	
	@Test
	public void testUpdateBalance() {
		Ch15Account account = accountDao.selectByAno(1);
		int balance = account.getBalance();
		account.setBalance(balance - 500000);
		accountDao.updateBalance(account);
		
		account = accountDao.selectByAno(1);
		Assert.assertEquals(balance - 500000, account.getBalance());
	}
}
