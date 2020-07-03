package com.pib.app.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("qnaController")
public class QnaController {
    @RequestMapping(value="admin/r002")
    public String board() throws Exception {
        return "recruit/r002";
    }
}
