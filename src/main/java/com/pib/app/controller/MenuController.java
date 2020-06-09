package com.pib.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller("menuController")
public class MenuController {
   /* @Autowired
    private LoginService loginService;

    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }*/
   /*@Autowired
   private UserDetailsService userDetailsService;

    public void setUserDetailsService(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;*/

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("pageName", "index");
        model.addAttribute("version", version());

        return "main";
    }

    @RequestMapping(value = "{category}/{page}", method = RequestMethod.GET)
    public String page(@PathVariable("category") String category, @PathVariable("page") String page,  Model model) {
        model.addAttribute("pageName", String.format("menu/%s/%s", category, page));
        model.addAttribute("category", category);
        model.addAttribute("page", page);
        model.addAttribute("version", version());

        return "main";
    }

//    @RequestMapping(value = "login/{id}", method = RequestMethod.GET)
//    @ResponseBody
//    public LoginVO login(@PathVariable("id") String id) {
//        return loginService.login(id);
//    }

    /*@RequestMapping(value = "login/{id}", method = RequestMethod.GET)
    @ResponseBody
    public UserDetailsVO loginCheck(@PathVariable("id") String id){
        return userDetailsService.loginCheck(id);
        }*/

    @RequestMapping(value="loginPage")
    public String login() throws Exception {
        return "loginPage";
    }

    @RequestMapping(value="admin/management")
    public String loginSuccess() throws Exception {
        return "admin/management";
    }


    /**
     * resource version
     * @return
     */
    private String version() {
        return LocalDateTime.now().format(DateTimeFormatter.ISO_DATE_TIME); // TODO BASIC_ISO_DATE
    }
}
