package com.yigo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import redis.clients.jedis.Jedis;

@RunWith(SpringRunner.class)
@SpringBootTest
public class YigoApplicationTests {

	@Test
	public void contextLoads() {
		Jedis jedis =new Jedis("192.168.146.131",6379);
		System.out.println(jedis.ping());
	}

}
