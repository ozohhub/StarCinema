
/* 공지사항 작성 - 영화관 직접입력 버튼 클릭시에만 text박스 활성화됨 */
$(document).ready(function(){
    $("input:radio[name=theater]").click(function(){
 
        if($("input[name=theater]:checked").val() == "1"){
            $("input:text[name=self_theater]").attr("disabled",false);
           
        }else if($("input[name=theater]:checked").val() == "0"){
              $("input:text[name=self_theater]").attr("disabled",true);
           
        }
    });
});
