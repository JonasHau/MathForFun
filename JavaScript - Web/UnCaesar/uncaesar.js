function uncaesar(){
	var input = document.getElementById('input').value;
	var output = '';
	
	for(var i = 0; i < input.length; i++){
		if(input.charCodeAt(i) >= 97 && input.charCodeAt(i) <= 122){
			var decipheredChar = (((input.charCodeAt(i))-97)+23)%26;
			output += String.fromCharCode(decipheredChar+97);
			
		}else if(input.charCodeAt(i) >= 65 && input.charCodeAt(i) <= 90){
			var decipheredChar = (((input.charCodeAt(i))-65)+23)%26;
			output += String.fromCharCode(decipheredChar+65);
			
		}else{
			output += input[i];
		}
	}
	
	document.getElementById('result').value = output;
}