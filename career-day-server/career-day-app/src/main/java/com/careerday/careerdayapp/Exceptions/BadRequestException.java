package com.careerday.careerdayapp.Exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.careerday.careerdayapp.DTOs.ApiResponse;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class BadRequestException extends RuntimeException {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private transient ApiResponse apiResponse;

    public BadRequestException(ApiResponse apiResponse){
        super();

        this.apiResponse=apiResponse;
    }

    public BadRequestException(String message){
      super(message);
    }

    public BadRequestException(String message, Throwable cause){
        super(message,cause);
    }

    public ApiResponse getApiResponse(){
        return apiResponse;
    }
    
    public void setApiResponse(ApiResponse apiResponse) {
    	this.apiResponse=apiResponse;
    }
    
    
    
}
