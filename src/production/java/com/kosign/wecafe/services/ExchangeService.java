package com.kosign.wecafe.services;

import java.math.BigDecimal;

import com.kosign.wecafe.entities.ExchangeRate;


public interface ExchangeService {
	public ExchangeRate getExchangerate();
	public Boolean setExchangerate(Integer rate);
	public Boolean setCostMoney(Integer money, BigDecimal urmoney);
}
