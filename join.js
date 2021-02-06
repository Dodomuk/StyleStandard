let idCheckFlg = false;

let idCheck = () =>{
	let userId = id.value;
	let idCheck = document.querySelector('#idCheck');
	let headerObj = new Headers();
	
	headerObj.append('content-type',"application/x-www-form-urlencoded");
	if(userId){
		
		fetch("/member/idcheck",{
	    		body : "userId="+userId
	    	}).then(response=> {
	    		if(response.ok){
	    			return response.text();
	    		}
	    		
	    	})
	    	.then((msg) => {
	    		if(msg == 'success'){
	    			idCheckFlg = true;
	    			idCheck.innerHTML = '사용 가능한 아이디 입니다.';
	    		}else{
	    			idCheckFlg = false;
	    			idCheck.innerHTML = '사용 불가능한 아이디 입니다.';
	    		}
	    	}).catch(error=>{
	    		alert("에러~");
	    	})
	    }else{
	    	alert("아이디를 입력하지 않으셨습니다.");
	    }
   }
		 document.querySelector('#join').addEventListener('submit',(e) => {

	   if(!idCheckFlg){
		   alert("아이디 중복검사를 통과하지 못했습니다.");
		   id.value = "";
		   e.preventDefault();
	   }
	   
	   let password = pw.value;
	   let regExp = /^(?!.*[ㄱ-힣])(?=.*\W)(?=.*\d)(?=.*[a-zA-Z])(?=.{8,})/;
	  
	   if(!(regExp.test(password))){

		   e.preventDefault();
		   pw_confirm.innerHTML = '비밀번호는 숫자,영문자,특수문자 조합의 8글자 이상이어야 합니다.';
		   pw.value = '';
	   }
   });
