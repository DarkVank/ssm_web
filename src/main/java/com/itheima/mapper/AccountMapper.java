package com.itheima.mapper;

import com.itheima.domain.Account;
import com.itheima.service.AccountService;

import java.util.List;

public interface AccountMapper {
//    保存
    public void save(Account account);

    public List<Account> findAll();
}
