package com.pib.app.controller;

import com.pib.app.service.admin.QnaService;
import com.pib.app.vo.Qna;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Controller("menuController")
public class MenuController {

    @Autowired
    private QnaService qnaService;

    public void setQnaService(QnaService qnaService) {
        this.qnaService = qnaService;
    }

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

    @RequestMapping(value = "{category}/{page}/{pageNo}", method = RequestMethod.GET)
    public String qna(@PathVariable("category") String category, @PathVariable("page") String page, @PathVariable("pageNo") Integer pageNo,  Model model) throws Exception {
        List<Qna> list = qnaService.getBoardList(pageNo);
        model.addAttribute("qnaList", list);

        return page(category, page, model);
    }

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
