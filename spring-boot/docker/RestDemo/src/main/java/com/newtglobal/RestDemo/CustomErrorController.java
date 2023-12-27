package com.newtglobal.RestDemo;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError() {
        // Handle the error here and return a custom error page or message
        return "error"; // You can specify the name of your error view/template
    }
}