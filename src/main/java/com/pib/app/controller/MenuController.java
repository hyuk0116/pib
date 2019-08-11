package com.pib.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {
    @RequestMapping(value = "{category}/{page}", method = RequestMethod.GET)
    public String page(@PathVariable("category") String category, @PathVariable("page") String page,  Model model) {
        model.addAttribute("title", "People In Biz");

        return String.format("/menu/%s/%s", category, page); // /menu/company/c001
    }
}
