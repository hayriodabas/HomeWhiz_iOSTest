package com.arceliktv.lotr.utils;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

public class ApiHelper {
    static RequestSpecification requestSpecification;
    static Response response;


    public static RequestSpecification httpRequest( ) {
        requestSpecification = RestAssured.given ().accept ( ContentType.JSON )
                .and ().contentType ( ContentType.JSON );


               // .headers("Authorization",
                 //       "Bearer"+jwt
                 //       )
                //.auth ().basic ( username, password );

        return requestSpecification;
    }


    public static Response requestType(String url, String requestType, Object body) {



        switch (requestType.toUpperCase ()) {

            case "GET":
                response = requestSpecification.get ( url );
                break;
            case "POST":
                response = requestSpecification.body ( body ).post ( url );
                break;
            case "PATCH":
                response = requestSpecification.body ( body ).patch ( url );
                break;
            case "PUT":
                response = requestSpecification.body ( body ).put ( url );
                break;
            case "DELETE":
                response = requestSpecification.delete ( url );
                break;

        }

        return response;
    }


}
