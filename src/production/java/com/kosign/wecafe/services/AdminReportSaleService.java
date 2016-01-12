package com.kosign.wecafe.services;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface AdminReportSaleService {
	public List<Map> getListReportDetailSaleRest(int byYear);
	public List<Map> getListReportDailySaleRest(Date startdate);
	public Object getListReportWeeklySaleRest(Date startdate, Date enddate);
	public Object getListReportMonthlySaleRest(Date startDate, Date endDate);
	public Object getListReportYearlySale(Date startDate, Date endDate);	
	public Map<String, Object> getAllSaleMonthlyReportsTotal(Date startDate, Date endDate);	
	public List<Map> listAllsaleDetail(Long id);
	public Long count();
}