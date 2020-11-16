package com.careerday.careerdayapp.Services;

import java.time.LocalDate;
import java.util.List;

import com.careerday.careerdayapp.DTOs.ApiResponse;
import com.careerday.careerdayapp.DTOs.AvailabilityResponse;
import com.careerday.careerdayapp.DTOs.JobCreateRequest;
import com.careerday.careerdayapp.DTOs.JobResponse;
import com.careerday.careerdayapp.DTOs.JobUpdateRequest;
import com.careerday.careerdayapp.DTOs.PagedResponse;

public interface IJobService {
    JobResponse create(JobCreateRequest createRequest);

    JobResponse update(Long id, JobUpdateRequest updateRequest);

    ApiResponse delete(Long id);

    JobResponse getById(Long id);

    PagedResponse<JobResponse> getAllJobs(int size, int page);
    
	List<JobResponse> getAllJobs();
	
	AvailabilityResponse checkAvailabilityByInterviewDate(LocalDate interviewDate);
	
	JobResponse getByInterviewDate(LocalDate interviewDate);
	
}
