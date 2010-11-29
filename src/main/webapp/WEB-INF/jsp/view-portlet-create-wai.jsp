<%--

    Copyright (C) 2010 Esup Portail http://www.esup-portail.org
    Copyright (C) 2010 UNR RUNN http://www.unr-runn.fr
    @Author (C) 2010 Vincent Bonamy <Vincent.Bonamy@univ-rouen.fr>
    @Contributor (C) 2010 Jean-Pierre Tran <Jean-Pierre.Tran@univ-rouen.fr>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
            http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='portlet' uri="http://java.sun.com/portlet"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<portlet:defineObjects />

<c:set var="n">
  <portlet:namespace />
</c:set>


<link rel="stylesheet" href="/esup-portlet-stockage/css/esup-stock-wai.css" type="text/css" media="screen, projection">


<portlet:actionURL var="formCreateWai">
  <portlet:param name="action" value="formCreateWai"/>
  <portlet:param name="dir" value="${currentDir}"/>
</portlet:actionURL>


<div class="esupstock">

  <div class="portlet-section">

    <div class="portlet-section-body">

      <form:form action="${formCreateWai}" method="post">

        <label>
          <spring:message code="wai.foldername"/>
        </label>
        <input type="text" name="folderName"/>

        <input type="submit" value="<spring:message code="wai.createfolder"/>" name="createFolder"/>


      </form:form>


    </div>

  </div>

</div>

<a href="<portlet:renderURL> <portlet:param name="action" value="browse"/></portlet:renderURL>">
  <spring:message code="version.standard"/>
</a>


