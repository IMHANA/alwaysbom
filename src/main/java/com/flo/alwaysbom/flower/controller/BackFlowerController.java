package com.flo.alwaysbom.flower.controller;

import com.flo.alwaysbom.flower.service.FlowerService;
import com.flo.alwaysbom.flower.vo.FlowerVo;
import com.flo.alwaysbom.util.CloudFileHandler;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class BackFlowerController {

    private final FlowerService flowerService;
    private final CloudFileHandler fileHandler;

    /* 꽃다발 관리 인덱스로 이동 */
    @GetMapping("/admin/flower")
    public String goIndex() {
        return "flower/b_flowerManager";
    }

    /* 상품 등록페이지로 이동 */
    @GetMapping("/admin/flowerAddForm")
    public String goInsertForm() {
        return "flower/b_addForm";
    }

    /* '등록하기' 버튼 눌렀을 때 처리 */
    @PostMapping("/admin/addFlower")
    public String addFlower(FlowerVo vo, List<MultipartFile> file) throws IOException {
        vo.setImage1(fileHandler.uploadFile(file.get(0), null, "flower"));
        vo.setImage2(fileHandler.uploadFile(file.get(1), null, "flower"));
        vo.setImage3(fileHandler.uploadFile(file.get(2), null, "flower"));
        System.out.println("vo = " + vo);
        vo = flowerService.addFlower(vo);
        return "redirect:/admin/flower/" + vo.getIdx();
    }

    /* 상품 수정페이지로 이동 */
    @GetMapping("/admin/flowerUpdateForm")
    public String goUpdateForm(Integer idx, Model model) {
        FlowerVo flower = flowerService.findByIdx(idx)
                .orElseThrow(() -> new IllegalStateException("해당 상품 인덱스가 존재하지 않습니다"));
        System.out.println("flowerVo 수정할 때 나오니 : " + flower);
        model.addAttribute("flowerVo", flower);
        return "flower/b_addForm";
    }

    /* '수정완료' 버튼 눌렀을 때 처리 */
    @PostMapping("/admin/updateFlower")
    public String updateFlower(FlowerVo vo, List<MultipartFile> file) throws IOException {
        vo.setImage1(fileHandler.uploadFile(file.get(0), vo.getImage1(), "flower"));
        vo.setImage1(fileHandler.uploadFile(file.get(1), vo.getImage2(), "flower"));
        vo.setImage1(fileHandler.uploadFile(file.get(2), vo.getImage3(), "flower"));
        Integer idx = flowerService.updateFlower(vo);
        return "redirect:/admin/flower/" + idx;
    }

    /* 꽃다발 상품 리스트 조회 */
    @GetMapping("/admin/flowerList")
    public String findAll(Model model) {
        System.out.println("findAll() 실행");
        List<FlowerVo> list = flowerService.findAll();
        model.addAttribute("list", list);
        return "flower/b_flowerList";
    }

    /* 상품 인덱스로 상세페이지 조회 */
    @GetMapping("/admin/flower/{idx}")
    public String findByIdx(@PathVariable Integer idx, Model model) {
        FlowerVo flower = flowerService.findByIdx(idx)
                .orElseThrow(() -> new IllegalStateException("해당 상품 인덱스가 존재하지 않습니다"));
        model.addAttribute("flowerVo", flower);
        return "flower/b_flowerDetail";
    }

    /* 상품 삭제 */
    @GetMapping("/admin/deleteFlower")
    public String deleteFlower(Integer idx) {
        flowerService.deleteFlower(idx);
        return "redirect:/admin/flowerList";
    }


}
