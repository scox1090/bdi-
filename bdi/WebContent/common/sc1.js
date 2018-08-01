/**
 * 
 */
function chColor(obj){
	var rObj = document.querySelector('#rDiv');  //rDiv의 값을 가져온다.
	rObj.innerHTML = obj.value;	//rObj의 value를 가져온다. 
	rObj.style.color = obj.value;  //rObj의 value를 가져와 색상을 변경한다.
	rObj.style.border = '1px solid' + obj.value;
}

function chCol(){
	var rObj = document.querySelector('#rDiv');
	var redObj = document.querySelector('#rColor');
	var greenObj = document.querySelector("#gColor");
	var blueObj = document.querySelector("#bColor");
	rObj.innerHTML = "red : " + redObj.value;
	rObj.innerHTML += ',green : ' + greenObj.value;
	rObj.innerHTML += ',blue : ' + blueObj.value;
	var colorStr = 'rgb(' + redObj.value;
	colorStr += ',' + greenObj.value;
	colorStr += ',' + blueObj.value + ')';
	rObj.style.color = colorStr;
}
