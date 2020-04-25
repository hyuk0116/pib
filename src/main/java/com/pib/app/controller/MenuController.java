package com.pib.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("pageName", "index");

        return "main";
    }

    @RequestMapping(value = "{category}/{page}", method = RequestMethod.GET)
    public String page(@PathVariable("category") String category, @PathVariable("page") String page,  Model model) {
        model.addAttribute("pageName", String.format("menu/%s/%s", category, page));
        model.addAttribute("category", category);
        model.addAttribute("page", page);

        return "main";
    }
}