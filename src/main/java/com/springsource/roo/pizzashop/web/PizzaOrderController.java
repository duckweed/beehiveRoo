package com.springsource.roo.pizzashop.web;

import com.springsource.roo.pizzashop.domain.PizzaOrder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pizzaorders")
@Controller
@RooWebScaffold(path = "pizzaorders", formBackingObject = PizzaOrder.class,
        delete = false,
        update = false)
public class PizzaOrderController {
}
