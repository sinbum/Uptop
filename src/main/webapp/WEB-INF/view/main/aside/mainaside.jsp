<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>


    <div class="toast show" role="alert" aria-live="assertive" aria-atomic="true" id="toastshow">
      <div class="toast-header">
        <strong class="me-auto">Bootstrap</strong>
        <small>11 mins ago</small>
        <button type="button" class="btn-close ms-2 mb-1" data-bs-dismiss="toast" aria-label="Close" id="toastshowclose">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="toast-body">
        Hello, world! This is a toast message.
      </div>
    </div><br>

    <div class="alert alert-dismissible alert-info">
      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      <strong>Heads up!</strong> This <a href="#" class="alert-link">alert needs your attention</a>, but it's not super important.
    </div>

    <div class="alert alert-dismissible alert-success">
      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      <strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.
    </div>

    <div class="alert alert-dismissible alert-primary">
      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      <strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.
    </div>

  <!-- 링크 어사이드 -->   

    <div class="btn-group" role="group" aria-label="Button group with nested dropdown" style="width: 100%;">
      <button type="button" class="btn btn-primary">Primary</button>
      <div class="btn-group" role="group">
        <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle " data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></button>
        <div class="dropdown-menu " aria-labelledby="btnGroupDrop1" data-popper-placement="bottom-start" style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(0px, 52px);">
          <a class="dropdown-item" href="#">Dropdown link</a>
          <a class="dropdown-item" href="#">Dropdown link</a>
        </div>
      </div>
    </div>
    
    <div class="btn-group" role="group" aria-label="Button group with nested dropdown" style="width: 100%;">
      <button type="button" class="btn btn-success">Success</button>
      <div class="btn-group" role="group">
        <button id="btnGroupDrop2" type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
        <div class="dropdown-menu" aria-labelledby="btnGroupDrop2" style="">
          <a class="dropdown-item" href="#">Dropdown link</a>
          <a class="dropdown-item" href="#">Dropdown link</a>
        </div>
      </div>
    </div>
    
    <div class="btn-group" role="group" aria-label="Button group with nested dropdown" style="width: 100%;">
      <button type="button" class="btn btn-info">Info</button>
      <div class="btn-group" role="group">
        <button id="btnGroupDrop3" type="button" class="btn btn-info dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
        <div class="dropdown-menu" aria-labelledby="btnGroupDrop3">
          <a class="dropdown-item" href="#">Dropdown link</a>
          <a class="dropdown-item" href="#">Dropdown link</a>
        </div>
      </div>
    </div>
    
    <div class="btn-group" role="group" aria-label="Button group with nested dropdown" style="width: 100%;">
      <button type="button" class="btn btn-danger">Danger</button>
      <div class="btn-group" role="group">
        <button id="btnGroupDrop4" type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
        <div class="dropdown-menu" aria-labelledby="btnGroupDrop4">
          <a class="dropdown-item" href="#">Dropdown link</a>
          <a class="dropdown-item" href="#">Dropdown link</a>
        </div>
      </div>
    </div>

    <!-- /링크 어사이드 -->
    
