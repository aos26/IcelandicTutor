package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Level;
import project.persistence.entities.Question;
import project.persistence.entities.Users;
import project.persistence.entities.Category;
import project.service.QuestionService;
import project.service.UserService;
import project.service.LevelService;
import project.service.CategoryService;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class GameController {
    private UserService userService;
    private LevelService levelService;
    private CategoryService categoryService;
    private QuestionService questionService;

    @Autowired
    public GameController(UserService userService, LevelService levelService, CategoryService categoryService, QuestionService questionService)
    {
        this.userService = userService;
        this.levelService = levelService;
        this.categoryService = categoryService;
        this.questionService = questionService;
    }

    // Go to game
    @RequestMapping(value = "/game/{cat_id}/{lvl_id}", method = RequestMethod.GET)
    public String game(@PathVariable("cat_id") Long cat_id, @PathVariable("lvl_id") Long lvl_id, HttpSession session, Model model){
        Users loggedInUser = (Users) session.getAttribute("login");
        if (loggedInUser != null) {
            model.addAttribute("msg", loggedInUser.getName());
            List<Question> question = questionService.getQuestionByCatIdAndLvlId(cat_id, lvl_id);
            int lengd = question.size();
            int index = (int)(Math.random()*lengd);
            model.addAttribute("question", question.get(index).getQuestionWord());
            model.addAttribute("answer", question.get(index).getAnswer());
            model.addAttribute("wrongAnswer1", question.get(index).getWrongAnswer1());
            model.addAttribute("wrongAnswer2", question.get(index).getWrongAnswer2());

            return "game";
        }

        session.setAttribute("error", "User must be logged in!");
        return "redirect:/login";
    }

    @RequestMapping(value = "/game/{cat_id}/{lvl_id}", method = RequestMethod.POST)
    public String getAnswerPost(@PathVariable("cat_id") Long cat_id, @PathVariable("lvl_id") Long lvl_id, HttpSession session, Model model, HttpServletRequest request){
        Users loggedInUser = (Users) session.getAttribute("login");
        if (loggedInUser != null) {
            model.addAttribute("msg", loggedInUser.getName());

            session.setAttribute();
            if (request.getParameter("answer") != null) {
                System.out.println("rett svar!");


            }
            else {System.out.println("Rangt svar");}
            game(cat_id, lvl_id, session, model);


            return "game";
        }

        session.setAttribute("error", "User must be logged in!");
        return "redirect:/login";
    }
}
