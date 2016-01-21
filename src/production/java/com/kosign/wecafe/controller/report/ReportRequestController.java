package com.kosign.wecafe.controller.report;
import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kosign.wecafe.entities.Pagination;
import com.kosign.wecafe.entities.Product;
import com.kosign.wecafe.entities.ProductFilter;
import com.kosign.wecafe.entities.User;
import com.kosign.wecafe.forms.DateForm;
import com.kosign.wecafe.services.ProductService;
import com.kosign.wecafe.services.RequestService;
import com.kosign.wecafe.services.UserService;
import com.kosign.wecafe.services.report.AdminReportRequestService;
import com.kosign.wecafe.services.report.AdminReportService;

//TODO: Product REST Controller
@RestController
@RequestMapping("admin/reports")
public class ReportRequestController {
	
	@Inject AdminReportService adminReportService;
	@Inject AdminReportRequestService report;
	@Inject RequestService reqService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/get_report_request", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> reportRequestDetail(DateForm date, Pagination pagination) throws ParseException{
		
		
		
		Map<String, Object> map = new HashMap<String, Object>();	
		map.put("REPORT_REQUEST_DETAIL",report.getListReportDetailRequest(pagination,date) );
		pagination.setTotalCount(report.countDetail(date));
		pagination.setTotalPages(pagination.totalPages());
		map.put("pagination", pagination);
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		
	}
	
	@RequestMapping(value="/get_request_detail", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> getRequestDetail(@RequestParam(name="req_id",defaultValue="")String reqId, Pagination pagination) throws ParseException{
		Map<String, Object> map = new HashMap<String, Object>();	
		map.put("REQUEST_DETAIL",reqService.listRequestDetail(reqId, pagination,false));
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		
	}
	
	@RequestMapping(value="/get_request_dailly", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getpurchasereportdaily(DateForm date, Pagination pagination) throws ParseException{
		
		System.out.println("===================Year"+date.getYear()+"Startdate====="+date.getStartdate());
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("reportdaily", report.getListReportDetailRequest(pagination, date)); 
		//pagination.setTotalCount(adminReportService.countDaily(startDate));
		//List<Map> totalRecord=adminReportService.getListReportDailyPurchaseRest(pagination, startDate,false); 
		//pagination.setTotalCount(Long.parseLong(totalRecord.size()+""));
		//pagination.setTotalPages(pagination.totalPages());
		//map.put("pagination", pagination);
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		
	}
	@RequestMapping(value="/purchasereportweekly", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getpurchasereportweekly(@RequestParam(value="start_date") String strStartDate, @RequestParam(value="end_date") String strEndDate, 
			Pagination pagination) throws ParseException{
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = simpleDateFormat.parse(strStartDate);
		Date endDate = simpleDateFormat.parse(strEndDate);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("reportweekly", adminReportService.getListReportWeeklyPurchaseRest(startDate, endDate));
		pagination.setTotalCount(adminReportService.count());
		pagination.setTotalPages(pagination.totalPages());
		map.put("pagination", pagination);
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);		
	}
	@RequestMapping(value="/purchasereportmonthly", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getpurchasereportmonthly(@RequestParam(value="start_date") String strStartDate, @RequestParam(value="end_date") String strEndDate, 
			Pagination pagination) throws ParseException{
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = simpleDateFormat.parse(strStartDate);
		Date endDate = simpleDateFormat.parse(strEndDate);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("reportmonthly", adminReportService.getListReportMonthlyPurchaseRest(startDate, endDate));
		pagination.setTotalCount(adminReportService.count());
		pagination.setTotalPages(pagination.totalPages());
		map.put("pagination", pagination);
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		
	}
	@RequestMapping(value="/purchasereportyearly", method=RequestMethod.GET, produces= MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Map<String, Object>> getpurchasereportyearly(
			   @RequestParam(value="start_date") String strStartDate, 
			   @RequestParam(value="end_date") String strEndDate) throws ParseException{
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = simpleDateFormat.parse(strStartDate);
		Date endDate = simpleDateFormat.parse(strEndDate);
		Map<String, Object> map = new HashMap<String, Object>();
		
		System.out.println(strStartDate);
		System.out.println(strEndDate);
		
		map.put("reportyear", adminReportService.getListReportYearlyPurcase(startDate, endDate));
		 
		map.put("total_reportyear", adminReportService.getAllPurchaseMonthlyReportsTotal(startDate, endDate));
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK); 
		
	}
}