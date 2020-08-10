package com.pib.app.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;

@Controller("adminController")
public class AdminController {
    @RequestMapping(value="admin/{page}", method = RequestMethod.GET)
    public String write (@PathVariable ("page") String a, Model model) {
        return "admin/write"; //물어보기
    }
}