package xin.keep.actioin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author nirvanafire
 * @since 2025-06-20
 **/
@Controller
public class PageController {

    @GetMapping("/")
    public String index() {
        return "index";
    }

}
