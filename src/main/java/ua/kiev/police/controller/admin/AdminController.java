package ua.kiev.police.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.kiev.police.service.PersonService;
import ua.kiev.police.util.LoggerWrapper;

@Controller
public class AdminController {

    protected static final LoggerWrapper LOG = LoggerWrapper.get(AdminController.class);

    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }
}
