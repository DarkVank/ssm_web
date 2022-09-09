package com.itheima.service;

import com.itheima.domain.User;
import com.itheima.mapper.AccountMapper;
import com.itheima.mapper.UserMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;

@Service("userService")
public class UserService implements UserMapper {


    @Override
    public User findByPassword(User user) {
        try {
            InputStream resource = Resources.getResourceAsStream("sqlMapConfig.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resource);
            SqlSession sqlSession = sqlSessionFactory.openSession();
            UserMapper mapper = sqlSession.getMapper(UserMapper.class);
            User reUser = mapper.findByPassword(user);

            sqlSession.commit();
            sqlSession.close();

            if(reUser!=null){
                return reUser;
            }

        } catch (IOException e) {
            e.printStackTrace();
        }


        return null;



    }
}
