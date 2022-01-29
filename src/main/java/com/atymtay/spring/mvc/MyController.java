package com.atymtay.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/employees")
public class MyController {

    @RequestMapping("/")
    public String showHome(){
        return "index";
}

//    @RequestMapping("/askDetails")
//    public String askEmployeeDetails(){
//        return "askDetails";
//    }

    //  *************************************************

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model){

        model.addAttribute("employee", new Employee());
        return "askDetails";
    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(){
//        return "showDetails";
//    }

//  *************************************************

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model){
//
//        String name = request.getParameter("name");
//        String surname = request.getParameter("surname");
//        name = "Mr."+name;
//
//        model.addAttribute("newName", name);
//        model.addAttribute("surName", surname);
//
//        return "showDetails";
//    }

    //  *************************************************


    @RequestMapping("/showDetails")
    public String showEmpDetails(
            @Valid @ModelAttribute(name = "employee") Employee empName,
            BindingResult bindingResult){

        if(bindingResult.hasErrors()){
            return "askDetails";
        }
        else
            return "showDetails";
    }
}
