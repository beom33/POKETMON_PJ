<%--게시글 작성--%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<c:url var="listLink" value="/board/list/${board.BId}"/>
<c:url var="actionUrl" value="/board/save" />

<layout:main title="${board.BName}">
    <section class="layout-width">
        <jsp:include page="_header.jsp"/>

        <form name="frmSave" method="POST" action="${actionUrl}" target="ifrmProcess" autocomplete="off">
            <input type="hidden" name="mode" value="update">
            <input type="hidden" name="seq" value="${data.seq}">
            <jsp:include page="_form.jsp"/>
            <div class="button-group">
                <button class="reset" type="reset">다시입력</button>
                <button class="submit" type="submit">글수정</button>
            </div>
        </form>
    </section>
</layout:main>