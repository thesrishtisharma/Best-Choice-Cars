package sharma.srishti.springbootjsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/")
    public String index(){
        return "index";
    }

    @GetMapping("/byBrand")
    public String byBrand(){
        return "byBrand";
    }

    @GetMapping("/byPrice")
    public String byPrice(){
        return "byPrice";
    }

    @GetMapping("/carByBrand")
    public String carByBrand(){
        return "carByBrand";
    }

    @GetMapping("/successByBrand")
    public String successByBrand(){
        return "successByBrand";
    }

    @GetMapping("/carByPrice")
    public String carByPrice(){
        return "carByPrice";
    }

    @GetMapping("/successByPrice")
    public String successByPrice(){
        return "successByPrice";
    }
}
