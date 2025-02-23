<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HelloJSP</title>
</head>
<body>
<p>우편번호 API 사영</p>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    const openApi = ()=>{
    let address = null;
    new daum.Postcode({
        oncomplete: function(data) {
            console.log(data);
            document.getElementById("address").value = data.address;
        }
    }).open();
    }
</script>
    <form action="/zipcodeData" method="post">
        <input type="text" name="address" id="address">
        <button type="button" onclick="openApi()">배송지 선택</button>
        <button type="submit">선택한 주소 전송</button>
    </form>
</body>
</html>
