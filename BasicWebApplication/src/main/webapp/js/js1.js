let flag=true;
let flag2=false;
let flagdelete=false;
let flagadd=false;
document.getElementById("tr11").addEventListener('click',function(){this.style="cursor:pointer;"; console.log("click")})

document.querySelector('#new2').addEventListener('keyup',function(){
	if(document.querySelector('#new2').value=="" &&(flagadd||flag2)){
		document.getElementById('new2').style="visibility:visible;border:1px solid red;";	
	}else{
		document.querySelector('#new2').style="visibility:visible;border:1px solid black;"
	}
});

document.querySelector('#new3').addEventListener('click',function(){
	if(document.querySelector('#new3').value=="" &&(flagadd||flag2)){
		document.querySelector('#new3').style="border:1px solid red;height:22px; width: 150px;";
	}else{
		document.querySelector('#new3').style="border:1px solid black;height:16.5px; width: 150px;";
	}
		
});
document.querySelector('#new4').addEventListener('click',function(){
	if(document.querySelector('#new4').value=="" &&(flagadd||flag2)){
		document.querySelector('#new4').style="border:1px solid red;height:22px; width: 150px;";
	}else{
		document.querySelector('#new4').style="border:1px solid black;height:22px; width: 150px;";
	}
});

document.querySelector('#new5').addEventListener('keyup',function(){
	if(document.querySelector('#new5').value=="" &&(flagadd||flag2)){
		document.getElementById('new5').style="visibility:visible;border:1px solid red;";	
	}else{
		document.querySelector('#new5').style="visibility:visible;border:1px solid black;"
	}
});
document.querySelector('#new6').addEventListener('keyup',function(){
	if(document.querySelector('#new6').value=="" &&(flagadd||flag2)){
		document.getElementById('new6').style="visibility:visible;border:1px solid red;";	
	}else{
		document.querySelector('#new6').style="visibility:visible;border:1px solid black;"
	}
});

document.getElementById('add').addEventListener('click',function(){
	flagadd=true;
	$(this).css('visibility','hidden');
	$("#back").css('display','block');
	$("#submit").css('display','block');
	$("#edit").css('visibility','hidden');
	document.getElementById('form').action='addissues';
	document.getElementById('delete').style="visibility:hidden;";
	if(document.getElementById('res11')!=null){
		var max=-1;
		for(var i=1; i<Number(document.getElementById('row').value)+1; i++){
		if(max<Number(document.getElementById('res'+i.toString()+'1').textContent)){
			max=Number(document.getElementById('res'+i.toString()+'1').textContent);	
		}
		}
		document.getElementById('new1').value=max+1;
		}else{
			document.getElementById('new1').value=1;
		}
	document.getElementById('new7').value=document.getElementById('datetime').value;
	document.getElementById('new8').value=document.getElementById('usermake').value;
	document.getElementById('new9').value=document.getElementById('usermake').value;
	document.getElementById('new10').value='1970-01-01 00:00:00';
	
	
	document.getElementById('new1').readOnly=true;
	document.getElementById('new2').readOnly=false;
	document.getElementById('new3').disabled=false;
	document.getElementById('new4').disabled=false;
	document.getElementById('new5').readOnly=false;
	document.getElementById('new6').readOnly=false;
	
	

	document.getElementById('new1').style="visibility:visible;cursor: not-allowed;border:2px solid green;";
	document.getElementById('new2').style="visibility:visible;";
	document.getElementById('new3').style="visibility:visible;height:22px; width: 150px;";
	document.getElementById('new4').style="visibility:visible;height:22px; width: 150px;";
	document.getElementById('new5').style="visibility:visible;";
	document.getElementById('new6').style="visibility:visible;";
	document.getElementById('new7').style="visibility:visible;cursor: not-allowed;";
	document.getElementById('new8').style="visibility:visible;cursor: not-allowed;";
	document.getElementById('new9').style="visibility:visible;cursor: not-allowed;";
	document.getElementById('new10').style="visibility:visible;cursor: not-allowed;";
	
	$("#results").css('visibility','hidden');

	
})

function back1(){
	flag=true;
	flag2=false;
	flagdelete=false;
	flagadd=false;
	$("#add").css('visibility','visible');
	$("#back").css('display','none');
	$('#results').css('visibility','visible');
	$("#submit").css('display','none');
	$("#delete").css('visibility','visible');
	$("#edit").css('visibility','visible');
	$("#info2").css('visibility','hidden');
	document.getElementById('delete').style="visibility:visible;";
	document.getElementById('new1').value="";
	document.getElementById('new2').value="";
	document.getElementById('new3').value="";
	document.getElementById('new4').value="";
	document.getElementById('new5').value="";
	document.getElementById('new6').value="";
	document.getElementById('new7').value="";
	document.getElementById('new8').value="";
	document.getElementById('new9').value="";
	document.getElementById('new10').value="";
	
	document.getElementById('new1').placeholder="";
	document.getElementById('new1').readOnly=true;
	document.getElementById('new2').readOnly=true;
	document.getElementById('new5').readOnly=true;
	document.getElementById('new6').readOnly=true;
	
	document.getElementById('new1').style="visibility:visible;border:1px solid black;";
	document.getElementById('new2').style="visibility:visible;border:1px solid black;";
	document.getElementById('new3').style="visibility:visible;height:22px;width:150px;border:1px solid black;";
	document.getElementById('new4').style="visibility:visible;height:22px;width:150px;border:1px solid black;";
	document.getElementById('new5').style="visibility:visible;border:1px solid black;";
	document.getElementById('new6').style="visibility:visible;border:1px solid black;";
	document.getElementById('new7').style="visibility:visible;border:1px solid black;";
	document.getElementById('new8').style="visibility:visible;border:1px solid black;";
	document.getElementById('new9').style="visibility:visible;border:1px solid black;";
	document.getElementById('new10').style="visibility:visible;border:1px solid black;";
	
	document.getElementById('new3').disabled=true;
	document.getElementById('new4').disabled=true;
	
	for(var i=1; i<Number(document.getElementById('row').value)+1; i++){
		document.getElementById('tr'+i.toString()).style="cursor:text;";
	}	

}

function check(){
	if(flag){
		let a=true;
				if(document.querySelector('#new2').value==''){document.querySelector('#new2').style="border:1px solid red;";a=false;}
				if(document.querySelector('#new3').value==''){document.querySelector('#new3').style="border:1px solid red;height:22px; width: 150px;";a=false;}
				if(document.querySelector('#new4').value==''){document.querySelector('#new4').style="border:1px solid red;height:22px; width: 150px;";a=false;}
				if(document.querySelector('#new5').value==''){document.querySelector('#new5').style="border:1px solid red;";a=false;}
				if(document.querySelector('#new6').value==''){document.querySelector('#new6').style="border:1px solid red;";a=false;}
		if(a && document.getElementById('form').action==='http://localhost:8080/BasicWebApplication/addissues'){
			alert("complete registration!")
			document.querySelector('#submit2').click();
		}else if(a && document.getElementById('form').action==='http://localhost:8080/BasicWebApplication/edit'){
				alert('Process complete!');
				document.querySelector('#submit2').click();
		}else{
				alert("one or more fields are empty!")
			}				
	}else if(document.querySelector('#new1').value==''){alert("please click the row you want to delete!")
		}else{
			if(document.querySelector('#new1').value!='' && flagdelete && document.getElementById('form').action==='http://localhost:8080/BasicWebApplication/delete')
			alert("delete completed!");
			document.querySelector('#submit2').click();
			
			document.querySelector('#add').click();
		}
}	

document.getElementById('delete').addEventListener('click',function(){
	flag=false;
	flagdelete=true;
	$("#submit").css('display','block');
	$("#add").css('visibility','hidden');
	$("#delete").css('visibility','hidden');
	$("#back").css('display','block');
	$("#edit").css('visibility','hidden');
	document.getElementById('form').action='delete';
	alert("click the row you want to delete!");
	for(var i=1; i<Number(document.getElementById('row').value)+1; i++){
		document.getElementById('tr'+i.toString()).style="cursor:pointer;";
	}	
	document.getElementById('new1').readOnly=false;
})

document.getElementById('edit').addEventListener('click',function(){
	flag2=true;
	$("#add").css('visibility','hidden');
	$("#delete").css('visibility','hidden');
	$("#edit").css('visibility','hidden');
	$("#submit").css('display','block');
	$("#back").css('display','block');
	alert("Click the row you want to edit!");
	for(var i=1; i<Number(document.getElementById('row').value)+1; i++){
		document.getElementById('tr'+i.toString()).style="cursor:pointer;";
		
	}
		
		
			
})

function copy(parameter1){
	if (flag2){
		document.getElementById('new1').value=document.getElementById(("res"+parameter1+1).toString()).innerText;
		document.getElementById('form').action='edit';
		$("#results").css('visibility','hidden');
		document.getElementById('new8').value=document.getElementById('usermake').value;
		document.getElementById('new7').value=document.getElementById('datetime').value;
		document.getElementById('new1').readOnly=true;
		document.getElementById('new2').readOnly=false;
		document.getElementById('new3').disabled=false;
		document.getElementById('new4').disabled=false;
		document.getElementById('new5').readOnly=false;
		document.getElementById('new6').readOnly=false;
		$("#info2").css('visibility','visible');	

		
		document.getElementById('new2').value=document.getElementById(("res"+parameter1+2).toString()).textContent;
		document.getElementById('new3').value=document.getElementById(("res"+parameter1+3).toString()).textContent;
		document.getElementById('new4').value=document.getElementById(("res"+parameter1+4).toString()).textContent;
		document.getElementById('new5').value=document.getElementById(("res"+parameter1+5).toString()).textContent;
		document.getElementById('new6').value=document.getElementById(("res"+parameter1+6).toString()).textContent;
		document.getElementById('new7').value=document.getElementById(("res"+parameter1+7).toString()).textContent;
		document.getElementById('new8').value=document.getElementById(("res"+parameter1+8).toString()).textContent;
		document.getElementById('new9').value=document.getElementById('usermake').value;
		document.getElementById('new10').value=document.getElementById('datetime').value;

		document.getElementById('new1').style="visibility:visible;cursor: not-allowed;";
		document.getElementById('new2').style="border:2px solid green;";
		document.getElementById('new3').style="border:2px solid green;height:22px; width: 150px;";
		document.getElementById('new4').style="border:2px solid green;height:22px; width: 150px;";
		document.getElementById('new5').style="border:2px solid green;";
		document.getElementById('new6').style="border:2px solid green;";
		document.getElementById('new7').style="visibility:visible;cursor: not-allowed;";
		document.getElementById('new8').style="visibility:visible;cursor: not-allowed;";
		document.getElementById('new9').style="visibility:visible;cursor: not-allowed;";
		document.getElementById('new10').style="visibility:visible;cursor: not-allowed;";
	
	}else if(flagdelete){
		
		document.getElementById('new1').value=document.getElementById(("res"+parameter1+1).toString()).innerText;
		document.getElementById('form').action='delete';
		$("#results").css('visibility','hidden');
		document.getElementById('new8').value=document.getElementById('usermake').value;
		document.getElementById('new7').value=document.getElementById('datetime').value;
		document.getElementById('new1').readOnly=true;
		document.getElementById('new2').readOnly=true;
		document.getElementById('new3').disabled=true;
		document.getElementById('new4').disabled=true;
		document.getElementById('new5').readOnly=true;
		document.getElementById('new6').readOnly=true;
		$("#info2").css('visibility','visible');	
		
		
		document.getElementById('new2').value=document.getElementById(("res"+parameter1+2).toString()).textContent;
		document.getElementById('new3').value=document.getElementById(("res"+parameter1+3).toString()).textContent;
		document.getElementById('new4').value=document.getElementById(("res"+parameter1+4).toString()).textContent;
		document.getElementById('new5').value=document.getElementById(("res"+parameter1+5).toString()).textContent;
		document.getElementById('new6').value=document.getElementById(("res"+parameter1+6).toString()).textContent;
		document.getElementById('new7').value=document.getElementById(("res"+parameter1+7).toString()).textContent;
		document.getElementById('new8').value=document.getElementById(("res"+parameter1+8).toString()).textContent;
		document.getElementById('new9').value=document.getElementById('usermake').value;
		document.getElementById('new10').value=document.getElementById('datetime').value;

		document.getElementById('new1').style="border:2px solid red;";
		document.getElementById('new2').style="border:2px solid red;";
		document.getElementById('new3').style="border:2px solid red;height:22px; width: 150px;";
		document.getElementById('new4').style="border:2px solid red;height:22px; width: 150px;";
		document.getElementById('new5').style="border:2px solid red;";
		document.getElementById('new6').style="border:2px solid red;";
		document.getElementById('new7').style="border:2px solid red;";
		document.getElementById('new8').style="border:2px solid red;";
		document.getElementById('new9').style="border:2px solid red;";
		document.getElementById('new10').style="border:2px solid red;";
	
		}
	
}

function order(parameter1){
	document.getElementById('selectorder').value=parameter1;
	document.getElementById('form').action='orderServlet';
	document.getElementById('form').method='get';
	document.querySelector('#submit2').click();
	
}
