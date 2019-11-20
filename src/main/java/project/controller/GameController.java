package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Users;
import project.service.UserService;

import javax.servlet.http.HttpSession;
@Controller
public class GameController {
    private UserService userService;

    @Autowired
    public GameController(UserService userService) {
        this.userService = userService;
    }







}
