package com.flo.alwaysbom.order.service;

import com.flo.alwaysbom.member.vo.MemberVO;
import com.flo.alwaysbom.order.vo.*;

import java.util.List;

public interface OrdersService {

    OrdersVo insertOrder(OrdersVo vo, List<OitemVo> olist);

    DeliveryInfoVo findAddress(MemberVO vo);

    int getPoint(MemberVO mvo);

    //주문 완료시 저장
    OrdersVo saveDelivery(OrdersVo ordersVo);

    //주문내역 조회
    List<OrdersVo> findByMember(MemberVO vo);


    List<OrdersVo> findBySearchOption(OrdersSearchOptionDto status);

    OrdersStatusCount findStatusCount();

    boolean updateStatus(OrdersVo orders);

    void updatePoint(MemberVO member);
}
