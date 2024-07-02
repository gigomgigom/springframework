package com.mycompany.springframework;

import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

//Test 메소드를 실행시켜주는 Runner 지정
@RunWith(SpringRunner.class)

//Spring 설정 파일을 적용
@SpringJUnitWebConfig(locations={
		"classpath:spring/root/*.xml",
		"classpath:spring/dispatcher/*.xml"
})

//DB 연동시 테스트 후에 트랜젝션을 롤백해서 DB의 상태를 원위치 시킨다.
@Transactional

//직접적으로 롤백 지정(기본값이 true)
@Rollback(true)
public class Ch16JUnitTest {

}
