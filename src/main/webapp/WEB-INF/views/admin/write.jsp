<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="editor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
    var oEditors = [];
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "ir1",
        sSkinURI: "editor/SmartEditor2Skin.html",
        fCreator: "createSEditor2"

    });
</script>
<textarea name="ir1" id="ir1" rows="10" cols="100">
에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.
</textarea>
<%--// ‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.--%>
<%--function submitContents(elClickedObj) {--%>
<%--// 에디터의 내용이 textarea에 적용된다.--%>
<%--oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);--%>

<%--// 에디터의 내용에 대한 값 검증은 이곳에서--%>
<%--// document.getElementById("ir1").value를 이용해서 처리한다.--%>

<%--try {--%>
<%--elClickedObj.form.submit();--%>
<%--} catch(e) {}--%>
