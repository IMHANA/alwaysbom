package com.flo.alwaysbom.product;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class BackProductController {

    @GetMapping("/admin/product")
    public String getIndex() {
        return "product/b_management";
    }
}
