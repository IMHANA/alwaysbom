<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<html>
<head>
    <title>클래스 일정 관리</title>
    <%@ include file="../main/b_import.jspf" %>
    <%--    <link rel="stylesheet"--%>
    <%--          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
</head>
<body>
<%@ include file="../main/b_header.jspf" %>
<div id="container" class="mx-auto d-flex">
    <%--    <h2>${category}</h2>
        <h2>${classIdx}</h2>
        <h2>${branchIdx}</h2>--%>
    <div class="col-8 bg-secondary justify-content-between">
        <div class="bg-primary d-flex p-5">
            <label class="form-label">
                <!--     <input data-provide="datepicker" required="required"> -->
                <input type="text" class="dateselect form-floating" required="required"/>
                <span>Date</span>
            </label>
        </div>
       <%-- <div class="bg-primary d-flex p-5">
            <select class="form-select me-3">
                <option selected>클래스 '월' 선택</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
            </select>
            <select class="form-select">
                <option selected>클래스 '일' 선택</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
            </select>
        </div>--%>
        <div class="bg-success p-5">
            <table class="table table-hover">
                <thead class="table-dark">
                <tr>
                    <th scope="col" class="col-8">#</th>
                    <th scope="col" class="col-1">First</th>
                    <th scope="col" class="col-1">Last</th>
                    <th scope="col" class="col-2">Handle</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td colspan="2">Larry the Bird</td>
                    <td>@twitter</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="col-4 bg-warning d-flex justify-content-center align-items-center">
        <label class="form-label">
            <!--     <input data-provide="datepicker" required="required"> -->
            <input type="text" class="dateselect form-floating" required="required"/>
            <span>Date</span>
        </label>
    </div>
</div>
<%@ include file="../main/b_footer.jspf" %>
<script type="text/javascript">
    $(function () {
        let $datepicker = $('.dateselect').datepicker({
            format: 'mm/dd/yyyy',
            showOtherMonths: false,
            startDate: 'noBefore',
            endDate: '+60d',
            setDate: 'today',
            todayHighlight: true
        });


    });


</script>

</body>
</html>

<style>

    /*Bootstrap Calendar*/

    .datepicker {
        border-radius: 0;
        padding: 0;
    }

    .datepicker-days table thead, .datepicker-days table tbody, .datepicker-days table tfoot {
        padding: 10px;
        display: list-item;
    }

    .datepicker-days table thead, .datepicker-months table thead, .datepicker-years table thead, .datepicker-decades table thead, .datepicker-centuries table thead {
        background: #3546b3;
        color: #ffffff;
        border-radius: 0;
    }

    .datepicker-days table thead tr:nth-child(2n+0) td, .datepicker-days table thead tr:nth-child(2n+0) th {
        border-radius: 3px;
    }

    .datepicker-days table thead tr:nth-child(3n+0) {
        text-transform: uppercase;
        font-weight: 300 !important;
        font-size: 12px;
        color: rgba(255, 255, 255, 0.7);
    }

    .table-condensed > tbody > tr > td, .table-condensed > tbody > tr > th, .table-condensed > tfoot > tr > td, .table-condensed > tfoot > tr > th, .table-condensed > thead > tr > td, .table-condensed > thead > tr > th {
        padding: 11px 13px;
    }

    .datepicker-months table thead td, .datepicker-months table thead th, .datepicker-years table thead td, .datepicker-years table thead th, .datepicker-decades table thead td, .datepicker-decades table thead th, .datepicker-centuries table thead td, .datepicker-centuries table thead th {
        border-radius: 0;
    }

    .datepicker td, .datepicker th {
        border-radius: 50%;
        padding: 0 12px;
    }

    .datepicker-days table thead, .datepicker-months table thead, .datepicker-years table thead, .datepicker-decades table thead, .datepicker-centuries table thead {
        background: #ffc107;
        color: #ffffff;
        border-radius: 0;
    }

    .datepicker table tr td.active, .datepicker table tr td.active:hover, .datepicker table tr td.active.disabled, .datepicker table tr td.active.disabled:hover {
        background-image: none;
    }

    .datepicker .prev, .datepicker .next {
        color: rgba(255, 255, 255, 0.5);
        transition: 0.3s;
        width: 37px;
        height: 37px;
    }

    .datepicker .prev:hover, .datepicker .next:hover {
        background: transparent;
        color: rgba(255, 255, 255, 0.99);
        font-size: 21px;
    }

    .datepicker .datepicker-switch {
        font-size: 24px;
        font-weight: 400;
        transition: 0.3s;
    }

    .datepicker .datepicker-switch:hover {
        color: rgba(255, 255, 255, 0.7);
        background: transparent;
    }

    .datepicker table tr td span {
        border-radius: 2px;
        margin: 3%;
        width: 27%;
    }

    .datepicker table tr td span.active, .datepicker table tr td span.active:hover, .datepicker table tr td span.active.disabled, .datepicker table tr td span.active.disabled:hover {
        background-color: #ffc107;
        background-image: none;
    }

    .dropdown-menu {
        border: 1px solid rgba(0, 0, 0, .1);
        box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
    }

    .datepicker-dropdown.datepicker-orient-top:before {
        border-top: 7px solid rgba(0, 0, 0, .1);
    }

    .datepicker {
        border-radius: 4px;
        direction: ltr
    }

    .datepicker-inline {
        width: 220px
    }

    .datepicker-rtl {
        direction: rtl
    }

    .datepicker-rtl.dropdown-menu {
        left: auto
    }

    .datepicker-rtl table tr td span {
        float: right
    }

    .datepicker-dropdown {
        top: 0;
        left: 0;
        padding: 4px
    }

    .datepicker-dropdown:before {
        content: '';
        display: inline-block;
        border-left: 7px solid transparent;
        border-right: 7px solid transparent;
        border-bottom: 7px solid rgba(0, 0, 0, .15);
        border-top: 0;
        border-bottom-color: rgba(0, 0, 0, .2);
        position: absolute
    }

    .datepicker-dropdown:after {
        content: '';
        display: inline-block;
        border-left: 6px solid transparent;
        border-right: 6px solid transparent;
        border-bottom: 6px solid #fff;
        border-top: 0;
        position: absolute
    }

    .datepicker-dropdown.datepicker-orient-left:before {
        left: 6px
    }

    .datepicker-dropdown.datepicker-orient-left:after {
        left: 7px
    }

    .datepicker-dropdown.datepicker-orient-right:before {
        right: 6px
    }

    .datepicker-dropdown.datepicker-orient-right:after {
        right: 7px
    }

    .datepicker-dropdown.datepicker-orient-bottom:before {
        top: -7px
    }

    .datepicker-dropdown.datepicker-orient-bottom:after {
        top: -6px
    }

    .datepicker-dropdown.datepicker-orient-top:before {
        bottom: -7px;
        border-bottom: 0;
        border-top: 7px solid rgba(0, 0, 0, .15)
    }

    .datepicker-dropdown.datepicker-orient-top:after {
        bottom: -6px;
        border-bottom: 0;
        border-top: 6px solid #fff
    }

    .datepicker table {
        margin: 0;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none
    }

    .datepicker table tr td, .datepicker table tr th {
        text-align: center;
        width: 30px;
        height: 30px;
        border-radius: 4px;
        border: none
    }

    .table-striped .datepicker table tr td, .table-striped .datepicker table tr th {
        background-color: transparent
    }

    .datepicker table tr td.new, .datepicker table tr td.old {
        color: #777
    }

    .datepicker table tr td.day:hover, .datepicker table tr td.focused {
        background: #eee;
        cursor: pointer
    }

    .datepicker table tr td.disabled, .datepicker table tr td.disabled:hover {
        background: 0 0;
        color: #777;
        cursor: default
    }

    .datepicker table tr td.highlighted {
        color: #000;
        background-color: #d9edf7;
        border-color: #85c5e5;
        border-radius: 0
    }

    .datepicker table tr td.highlighted.focus, .datepicker table tr td.highlighted:focus {
        color: #000;
        background-color: #afd9ee;
        border-color: #298fc2
    }

    .datepicker table tr td.highlighted:hover {
        color: #000;
        background-color: #afd9ee;
        border-color: #52addb
    }

    .datepicker table tr td.highlighted.active, .datepicker table tr td.highlighted:active {
        color: #000;
        background-color: #afd9ee;
        border-color: #52addb
    }

    .datepicker table tr td.highlighted.active.focus, .datepicker table tr td.highlighted.active:focus, .datepicker table tr td.highlighted.active:hover, .datepicker table tr td.highlighted:active.focus, .datepicker table tr td.highlighted:active:focus, .datepicker table tr td.highlighted:active:hover {
        color: #000;
        background-color: #91cbe8;
        border-color: #298fc2
    }

    .datepicker table tr td.highlighted.disabled.focus, .datepicker table tr td.highlighted.disabled:focus, .datepicker table tr td.highlighted.disabled:hover, .datepicker table tr td.highlighted[disabled].focus, .datepicker table tr td.highlighted[disabled]:focus, .datepicker table tr td.highlighted[disabled]:hover, fieldset[disabled] .datepicker table tr td.highlighted.focus, fieldset[disabled] .datepicker table tr td.highlighted:focus, fieldset[disabled] .datepicker table tr td.highlighted:hover {
        background-color: #d9edf7;
        border-color: #85c5e5
    }

    .datepicker table tr td.highlighted.focused {
        background: #afd9ee
    }

    .datepicker table tr td.highlighted.disabled, .datepicker table tr td.highlighted.disabled:active {
        background: #d9edf7;
        color: #777
    }

    .datepicker table tr td.today {
        color: #000;
        background-color: #ffdb99;
        border-color: #ffb733
    }

    .datepicker table tr td.today.focus, .datepicker table tr td.today:focus {
        color: #000;
        background-color: #ffc966;
        border-color: #b37400
    }

    .datepicker table tr td.today:hover {
        color: #000;
        background-color: #ffc966;
        border-color: #f59e00
    }

    .datepicker table tr td.today.active, .datepicker table tr td.today:active {
        color: #000;
        background-color: #ffc966;
        border-color: #f59e00
    }

    .datepicker table tr td.today.active.focus, .datepicker table tr td.today.active:focus, .datepicker table tr td.today.active:hover, .datepicker table tr td.today:active.focus, .datepicker table tr td.today:active:focus, .datepicker table tr td.today:active:hover {
        color: #000;
        background-color: #ffbc42;
        border-color: #b37400
    }

    .datepicker table tr td.today.disabled.focus, .datepicker table tr td.today.disabled:focus, .datepicker table tr td.today.disabled:hover, .datepicker table tr td.today[disabled].focus, .datepicker table tr td.today[disabled]:focus, .datepicker table tr td.today[disabled]:hover, fieldset[disabled] .datepicker table tr td.today.focus, fieldset[disabled] .datepicker table tr td.today:focus, fieldset[disabled] .datepicker table tr td.today:hover {
        background-color: #ffdb99;
        border-color: #ffb733
    }

    .datepicker table tr td.today.focused {
        background: #ffc966
    }

    .datepicker table tr td.today.disabled, .datepicker table tr td.today.disabled:active {
        background: #ffdb99;
        color: #777
    }

    .datepicker table tr td.range {
        color: #000;
        background-color: #eee;
        border-color: #bbb;
        border-radius: 0
    }

    .datepicker table tr td.range.focus, .datepicker table tr td.range:focus {
        color: #000;
        background-color: #d5d5d5;
        border-color: #7c7c7c
    }

    .datepicker table tr td.range:hover {
        color: #000;
        background-color: #d5d5d5;
        border-color: #9d9d9d
    }

    .datepicker table tr td.range.active, .datepicker table tr td.range:active {
        color: #000;
        background-color: #d5d5d5;
        border-color: #9d9d9d
    }

    .datepicker table tr td.range.active.focus, .datepicker table tr td.range.active:focus, .datepicker table tr td.range.active:hover, .datepicker table tr td.range:active.focus, .datepicker table tr td.range:active:focus, .datepicker table tr td.range:active:hover {
        color: #000;
        background-color: #c3c3c3;
        border-color: #7c7c7c
    }

    .datepicker table tr td.range.disabled.focus, .datepicker table tr td.range.disabled:focus, .datepicker table tr td.range.disabled:hover, .datepicker table tr td.range[disabled].focus, .datepicker table tr td.range[disabled]:focus, .datepicker table tr td.range[disabled]:hover, fieldset[disabled] .datepicker table tr td.range.focus, fieldset[disabled] .datepicker table tr td.range:focus, fieldset[disabled] .datepicker table tr td.range:hover {
        background-color: #eee;
        border-color: #bbb
    }

    .datepicker table tr td.range.focused {
        background: #d5d5d5
    }

    .datepicker table tr td.range.disabled, .datepicker table tr td.range.disabled:active {
        background: #eee;
        color: #777
    }

    .datepicker table tr td.range.highlighted {
        color: #000;
        background-color: #e4eef3;
        border-color: #9dc1d3
    }

    .datepicker table tr td.range.highlighted.focus, .datepicker table tr td.range.highlighted:focus {
        color: #000;
        background-color: #c1d7e3;
        border-color: #4b88a6
    }

    .datepicker table tr td.range.highlighted:hover {
        color: #000;
        background-color: #c1d7e3;
        border-color: #73a6c0
    }

    .datepicker table tr td.range.highlighted.active, .datepicker table tr td.range.highlighted:active {
        color: #000;
        background-color: #c1d7e3;
        border-color: #73a6c0
    }

    .datepicker table tr td.range.highlighted.active.focus, .datepicker table tr td.range.highlighted.active:focus, .datepicker table tr td.range.highlighted.active:hover, .datepicker table tr td.range.highlighted:active.focus, .datepicker table tr td.range.highlighted:active:focus, .datepicker table tr td.range.highlighted:active:hover {
        color: #000;
        background-color: #a8c8d8;
        border-color: #4b88a6
    }

    .datepicker table tr td.range.highlighted.disabled.focus, .datepicker table tr td.range.highlighted.disabled:focus, .datepicker table tr td.range.highlighted.disabled:hover, .datepicker table tr td.range.highlighted[disabled].focus, .datepicker table tr td.range.highlighted[disabled]:focus, .datepicker table tr td.range.highlighted[disabled]:hover, fieldset[disabled] .datepicker table tr td.range.highlighted.focus, fieldset[disabled] .datepicker table tr td.range.highlighted:focus, fieldset[disabled] .datepicker table tr td.range.highlighted:hover {
        background-color: #e4eef3;
        border-color: #9dc1d3
    }

    .datepicker table tr td.range.highlighted.focused {
        background: #c1d7e3
    }

    .datepicker table tr td.range.highlighted.disabled, .datepicker table tr td.range.highlighted.disabled:active {
        background: #e4eef3;
        color: #777
    }

    .datepicker table tr td.range.today {
        color: #000;
        background-color: #f7ca77;
        border-color: #f1a417
    }

    .datepicker table tr td.range.today.focus, .datepicker table tr td.range.today:focus {
        color: #000;
        background-color: #f4b747;
        border-color: #815608
    }

    .datepicker table tr td.range.today:hover {
        color: #000;
        background-color: #f4b747;
        border-color: #bf800c
    }

    .datepicker table tr td.range.today.active, .datepicker table tr td.range.today:active {
        color: #000;
        background-color: #f4b747;
        border-color: #bf800c
    }

    .datepicker table tr td.range.today.active.focus, .datepicker table tr td.range.today.active:focus, .datepicker table tr td.range.today.active:hover, .datepicker table tr td.range.today:active.focus, .datepicker table tr td.range.today:active:focus, .datepicker table tr td.range.today:active:hover {
        color: #000;
        background-color: #f2aa25;
        border-color: #815608
    }

    .datepicker table tr td.range.today.disabled.focus, .datepicker table tr td.range.today.disabled:focus, .datepicker table tr td.range.today.disabled:hover, .datepicker table tr td.range.today[disabled].focus, .datepicker table tr td.range.today[disabled]:focus, .datepicker table tr td.range.today[disabled]:hover, fieldset[disabled] .datepicker table tr td.range.today.focus, fieldset[disabled] .datepicker table tr td.range.today:focus, fieldset[disabled] .datepicker table tr td.range.today:hover {
        background-color: #f7ca77;
        border-color: #f1a417
    }

    .datepicker table tr td.range.today.disabled, .datepicker table tr td.range.today.disabled:active {
        background: #f7ca77;
        color: #777
    }

    .datepicker table tr td.selected, .datepicker table tr td.selected.highlighted {
        color: #fff;
        background-color: #777;
        border-color: #555;
        text-shadow: 0 -1px 0 rgba(0, 0, 0, .25)
    }

    .datepicker table tr td.selected.focus, .datepicker table tr td.selected.highlighted.focus, .datepicker table tr td.selected.highlighted:focus, .datepicker table tr td.selected:focus {
        color: #fff;
        background-color: #5e5e5e;
        border-color: #161616
    }

    .datepicker table tr td.selected.highlighted:hover, .datepicker table tr td.selected:hover {
        color: #fff;
        background-color: #5e5e5e;
        border-color: #373737
    }

    .datepicker table tr td.selected.active, .datepicker table tr td.selected.highlighted.active, .datepicker table tr td.selected.highlighted:active, .datepicker table tr td.selected:active {
        color: #fff;
        background-color: #5e5e5e;
        border-color: #373737
    }

    .datepicker table tr td.selected.active.focus, .datepicker table tr td.selected.active:focus, .datepicker table tr td.selected.active:hover, .datepicker table tr td.selected.highlighted.active.focus, .datepicker table tr td.selected.highlighted.active:focus, .datepicker table tr td.selected.highlighted.active:hover, .datepicker table tr td.selected.highlighted:active.focus, .datepicker table tr td.selected.highlighted:active:focus, .datepicker table tr td.selected.highlighted:active:hover, .datepicker table tr td.selected:active.focus, .datepicker table tr td.selected:active:focus, .datepicker table tr td.selected:active:hover {
        color: #fff;
        background-color: #4c4c4c;
        border-color: #161616
    }

    .datepicker table tr td.selected.disabled.focus, .datepicker table tr td.selected.disabled:focus, .datepicker table tr td.selected.disabled:hover, .datepicker table tr td.selected.highlighted.disabled.focus, .datepicker table tr td.selected.highlighted.disabled:focus, .datepicker table tr td.selected.highlighted.disabled:hover, .datepicker table tr td.selected.highlighted[disabled].focus, .datepicker table tr td.selected.highlighted[disabled]:focus, .datepicker table tr td.selected.highlighted[disabled]:hover, .datepicker table tr td.selected[disabled].focus, .datepicker table tr td.selected[disabled]:focus, .datepicker table tr td.selected[disabled]:hover, fieldset[disabled] .datepicker table tr td.selected.focus, fieldset[disabled] .datepicker table tr td.selected.highlighted.focus, fieldset[disabled] .datepicker table tr td.selected.highlighted:focus, fieldset[disabled] .datepicker table tr td.selected.highlighted:hover, fieldset[disabled] .datepicker table tr td.selected:focus, fieldset[disabled] .datepicker table tr td.selected:hover {
        background-color: #777;
        border-color: #555
    }

    .datepicker table tr td.active, .datepicker table tr td.active.highlighted {
        color: #fff;
        background-color: #337ab7;
        border-color: #2e6da4;
        text-shadow: 0 -1px 0 rgba(0, 0, 0, .25)
    }

    .datepicker table tr td.active.focus, .datepicker table tr td.active.highlighted.focus, .datepicker table tr td.active.highlighted:focus, .datepicker table tr td.active:focus {
        color: #fff;
        background-color: #286090;
        border-color: #122b40
    }

    .datepicker table tr td.active.highlighted:hover, .datepicker table tr td.active:hover {
        color: #fff;
        background-color: #286090;
        border-color: #204d74
    }

    /*가만히있어바..*/
    .datepicker table tr td.active.active, .datepicker table tr td.active.highlighted.active, .datepicker table tr td.active.highlighted:active, .datepicker table tr td.active:active {
        color: #1a1e21;
        background-color: #f6c302;
        border-color: #f69d02;
    }

    .datepicker table tr td.active.active.focus, .datepicker table tr td.active.active:focus, .datepicker table tr td.active.active:hover, .datepicker table tr td.active.highlighted.active.focus, .datepicker table tr td.active.highlighted.active:focus, .datepicker table tr td.active.highlighted.active:hover, .datepicker table tr td.active.highlighted:active.focus, .datepicker table tr td.active.highlighted:active:focus, .datepicker table tr td.active.highlighted:active:hover, .datepicker table tr td.active:active.focus, .datepicker table tr td.active:active:focus, .datepicker table tr td.active:active:hover {
        color: #1a1e21;
        /*background-color: #204d74;*/
        background-color: #ffcd1f;
        border-color: #f69d02;
    }

    .datepicker table tr td.active.disabled.focus, .datepicker table tr td.active.disabled:focus, .datepicker table tr td.active.disabled:hover, .datepicker table tr td.active.highlighted.disabled.focus, .datepicker table tr td.active.highlighted.disabled:focus, .datepicker table tr td.active.highlighted.disabled:hover, .datepicker table tr td.active.highlighted[disabled].focus, .datepicker table tr td.active.highlighted[disabled]:focus, .datepicker table tr td.active.highlighted[disabled]:hover, .datepicker table tr td.active[disabled].focus, .datepicker table tr td.active[disabled]:focus, .datepicker table tr td.active[disabled]:hover, fieldset[disabled] .datepicker table tr td.active.focus, fieldset[disabled] .datepicker table tr td.active.highlighted.focus, fieldset[disabled] .datepicker table tr td.active.highlighted:focus, fieldset[disabled] .datepicker table tr td.active.highlighted:hover, fieldset[disabled] .datepicker table tr td.active:focus, fieldset[disabled] .datepicker table tr td.active:hover {
        background-color: #337ab7;
        border-color: #2e6da4
    }

    .datepicker table tr td span {
        display: block;
        width: 23%;
        height: 54px;
        line-height: 54px;
        float: left;
        margin: 1%;
        cursor: pointer;
        border-radius: 4px
    }

    .datepicker table tr td span.focused, .datepicker table tr td span:hover {
        background: #eee
    }

    .datepicker table tr td span.disabled, .datepicker table tr td span.disabled:hover {
        background: 0 0;
        color: #777;
        cursor: default
    }

    .datepicker table tr td span.active, .datepicker table tr td span.active.disabled, .datepicker table tr td span.active.disabled:hover, .datepicker table tr td span.active:hover {
        color: #fff;
        background-color: #337ab7;
        border-color: #2e6da4;
        text-shadow: 0 -1px 0 rgba(0, 0, 0, .25)
    }

    .datepicker table tr td span.active.disabled.focus, .datepicker table tr td span.active.disabled:focus, .datepicker table tr td span.active.disabled:hover.focus, .datepicker table tr td span.active.disabled:hover:focus, .datepicker table tr td span.active.focus, .datepicker table tr td span.active:focus, .datepicker table tr td span.active:hover.focus, .datepicker table tr td span.active:hover:focus {
        color: #fff;
        background-color: #286090;
        border-color: #122b40
    }

    .datepicker table tr td span.active.disabled:hover, .datepicker table tr td span.active.disabled:hover:hover, .datepicker table tr td span.active:hover, .datepicker table tr td span.active:hover:hover {
        color: #fff;
        background-color: #286090;
        border-color: #204d74
    }

    .datepicker table tr td span.active.active, .datepicker table tr td span.active.disabled.active, .datepicker table tr td span.active.disabled:active, .datepicker table tr td span.active.disabled:hover.active, .datepicker table tr td span.active.disabled:hover:active, .datepicker table tr td span.active:active, .datepicker table tr td span.active:hover.active, .datepicker table tr td span.active:hover:active {
        color: #fff;
        background-color: #286090;
        border-color: #204d74
    }

    .datepicker table tr td span.active.active.focus, .datepicker table tr td span.active.active:focus, .datepicker table tr td span.active.active:hover, .datepicker table tr td span.active.disabled.active.focus, .datepicker table tr td span.active.disabled.active:focus, .datepicker table tr td span.active.disabled.active:hover, .datepicker table tr td span.active.disabled:active.focus, .datepicker table tr td span.active.disabled:active:focus, .datepicker table tr td span.active.disabled:active:hover, .datepicker table tr td span.active.disabled:hover.active.focus, .datepicker table tr td span.active.disabled:hover.active:focus, .datepicker table tr td span.active.disabled:hover.active:hover, .datepicker table tr td span.active.disabled:hover:active.focus, .datepicker table tr td span.active.disabled:hover:active:focus, .datepicker table tr td span.active.disabled:hover:active:hover, .datepicker table tr td span.active:active.focus, .datepicker table tr td span.active:active:focus, .datepicker table tr td span.active:active:hover, .datepicker table tr td span.active:hover.active.focus, .datepicker table tr td span.active:hover.active:focus, .datepicker table tr td span.active:hover.active:hover, .datepicker table tr td span.active:hover:active.focus, .datepicker table tr td span.active:hover:active:focus, .datepicker table tr td span.active:hover:active:hover {
        color: #fff;
        background-color: #204d74;
        border-color: #122b40
    }

    .datepicker table tr td span.active.disabled.disabled.focus, .datepicker table tr td span.active.disabled.disabled:focus, .datepicker table tr td span.active.disabled.disabled:hover, .datepicker table tr td span.active.disabled.focus, .datepicker table tr td span.active.disabled:focus, .datepicker table tr td span.active.disabled:hover, .datepicker table tr td span.active.disabled:hover.disabled.focus, .datepicker table tr td span.active.disabled:hover.disabled:focus, .datepicker table tr td span.active.disabled:hover.disabled:hover, .datepicker table tr td span.active.disabled:hover[disabled].focus, .datepicker table tr td span.active.disabled:hover[disabled]:focus, .datepicker table tr td span.active.disabled:hover[disabled]:hover, .datepicker table tr td span.active.disabled[disabled].focus, .datepicker table tr td span.active.disabled[disabled]:focus, .datepicker table tr td span.active.disabled[disabled]:hover, .datepicker table tr td span.active:hover.disabled.focus, .datepicker table tr td span.active:hover.disabled:focus, .datepicker table tr td span.active:hover.disabled:hover, .datepicker table tr td span.active:hover[disabled].focus, .datepicker table tr td span.active:hover[disabled]:focus, .datepicker table tr td span.active:hover[disabled]:hover, .datepicker table tr td span.active[disabled].focus, .datepicker table tr td span.active[disabled]:focus, .datepicker table tr td span.active[disabled]:hover, fieldset[disabled] .datepicker table tr td span.active.disabled.focus, fieldset[disabled] .datepicker table tr td span.active.disabled:focus, fieldset[disabled] .datepicker table tr td span.active.disabled:hover, fieldset[disabled] .datepicker table tr td span.active.disabled:hover.focus, fieldset[disabled] .datepicker table tr td span.active.disabled:hover:focus, fieldset[disabled] .datepicker table tr td span.active.disabled:hover:hover, fieldset[disabled] .datepicker table tr td span.active.focus, fieldset[disabled] .datepicker table tr td span.active:focus, fieldset[disabled] .datepicker table tr td span.active:hover, fieldset[disabled] .datepicker table tr td span.active:hover.focus, fieldset[disabled] .datepicker table tr td span.active:hover:focus, fieldset[disabled] .datepicker table tr td span.active:hover:hover {
        background-color: #337ab7;
        border-color: #2e6da4
    }

    .datepicker table tr td span.new, .datepicker table tr td span.old {
        color: #777
    }

    .datepicker .datepicker-switch {
        width: 145px
    }

    .datepicker .datepicker-switch, .datepicker .next, .datepicker .prev, .datepicker tfoot tr th {
        cursor: pointer
    }

    .datepicker .datepicker-switch:hover, .datepicker .next:hover, .datepicker .prev:hover, .datepicker tfoot tr th:hover {
        background: #eee
    }

    .datepicker .next.disabled, .datepicker .prev.disabled {
        visibility: hidden
    }

    .datepicker .cw {
        font-size: 10px;
        width: 12px;
        padding: 0 2px 0 5px;
        vertical-align: middle
    }

    .input-group.date .input-group-addon {
        cursor: pointer
    }

    .input-daterange {
        width: 100%
    }

    .input-daterange input {
        text-align: center
    }

    .input-daterange input:first-child {
        border-radius: 3px 0 0 3px
    }

    .input-daterange input:last-child {
        border-radius: 0 3px 3px 0
    }

    .input-daterange .input-group-addon {
        width: auto;
        min-width: 16px;
        padding: 4px 5px;
        line-height: 1.42857143;
        border-width: 1px 0;
        margin-left: -5px;
        margin-right: -5px
    }


    td.day:hover {
        cursor: pointer;
    }
/*
        td.new, td.old {
        color: #fd7e14 !important;
    }
*/
    td.active {
        border-radius: 50% !important;
    }

    td.today {
        border-radius: 50% !important;
    }

</style>