package com.pib.app.controller;

import com.pib.app.service.admin.QnaService;
import com.pib.app.util.Criteria;
import com.pib.app.util.PageMaker;
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

    /**
     * 메인 홈페이지의 주소를 "/" 으로 설정
     * @param model
     * @return
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("pageName", "index");
        model.addAttribute("version", version());

        return "main";
    }

    /**
     * 하위 메뉴와 각 페이지를 연결하는 메소드
     * @param category 메뉴의 종류
     * @param page 해당 카테고리의 하위 페이지
     * @param model
     * @return
     */
    @RequestMapping(value = "menu/{category}/{page}", method = RequestMethod.GET)
    public String page(@PathVariable("category") String category, @PathVariable("page") String page,  Model model) {
        model.addAttribute("pageName", String.format("menu/%s/%s", category, page));
        model.addAttribute("category", category);
        model.addAttribute("page", page);
        model.addAttribute("version", version());

        return "main";
    }

    /**
     * 게시글 내용 조회
     * @param category
     * @param pageNo
     * @param bno 게시글 번호
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "menu/{category}/cs002/{pageNo}/{bno}", method = RequestMethod.GET)
    public String findBoardContent(@PathVariable("category") String category,@PathVariable("pageNo") Integer pageNo, @PathVariable("bno") Integer bno, Model model) throws Exception {
        Qna qna = qnaService.getQna(bno);

        Criteria criteria = new Criteria();
        criteria.setPage(pageNo);

        model.addAttribute("criteria",criteria);
        model.addAttribute("qna", qna);

        return page(category, "cs002", model);
    }

    /**
     * 게시글 리스트 조회
     * @param category 페이지 카테고리
     * @param page 하위 페이지 넘버
     * @param pageNo 페이징 시 현재 페이지
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "menu/{category}/{page}/{pageNo}", method = RequestMethod.GET)
    public String findBoardList(@PathVariable("category") String category, @PathVariable("page") String page, @PathVariable("pageNo") Integer pageNo,  Model model) throws Exception {
        Criteria criteria = new Criteria();
        criteria.setPage(pageNo);

        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(criteria);
        pageMaker.setTotalCount(qnaService.getCount());
        List<Qna> list = qnaService.getQnaList(criteria);

        model.addAttribute("pageMaker", pageMaker);
        model.addAttribute("qnaList", list);

        return page(category, page, model);
    }

    /**
     * 관리자 권한을 체크하는 로그인페이지를 리턴
     * @return 관리자페이지로의 접근 요청이 있을 경우 어드민 관리자 페이지를 리턴
     * @throws Exception
     */
    @RequestMapping(value="loginPage")
    public String login() throws Exception {
        return "loginPage";
    }

    /**
     * 관리자 권한이 등록된 계정으로 로그인 시 관리자 페이지를 리턴
     * @return 관리자 페이지
     * @throws Exception
     */
    @RequestMapping(value="admin/management")
    public String loginSuccess() throws Exception {
        return "admin/management";
    }


    /**
     * 리소스의 캐시 쌓임을 방지하기 위해 리소스 버전을 시간대로 업데이트
     * @return
     */
    private String version() {
        return LocalDateTime.now().format(DateTimeFormatter.ISO_DATE_TIME); // TODO BASIC_ISO_DATE
    }
}
