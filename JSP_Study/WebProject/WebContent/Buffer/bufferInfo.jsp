<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ page buffer="8kb" autoFlush="false" %>
<%-- 8kb 가 default 값 , autoFlush가 false면 다 꽉차면 에러가 난다 default 값은 True
out 객체는 일단 버퍼에 저장후에 출력된다.
--%>
<html>
<head><title>버퍼 정보</title></head>
<body>

버퍼 크기: <%= out.getBufferSize() %> <br>
남은 크기: <%= out.getRemaining() %> <br>
auto flush: <%= out.isAutoFlush() %> <br>

</body>
</html>

