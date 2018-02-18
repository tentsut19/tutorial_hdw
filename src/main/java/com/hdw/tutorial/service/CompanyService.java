package com.hdw.tutorial.service;

import java.util.List;

import com.hdw.tutorial.entity.Company;

public interface CompanyService {
	public Company getCompanyById(Long id);
	public List<Company> findAll();
	public void update(Company company) throws Exception;
	public Long save(Company company) throws Exception;
	public void delete(Company company) throws Exception;
	public Company getParentCompanyById();
	
}
