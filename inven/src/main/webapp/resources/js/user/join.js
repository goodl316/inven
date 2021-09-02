var user_id = document.querySelector('.id')
var user_pw = document.querySelector('.pw')
var chk_pw = document.querySelector('.chkpw')
var user_nm = document.querySelector('.nm')
var nick_nm = document.querySelector('.nick')

function join() {
	var id = user_id.value
	var pw = user_pw.value
	var chk = chk_pw.value
	var nm = user_nm.value
	var nick = nick_nm.value

	var params = {
		user_id: id,
		user_pw: pw,
		chk_pw: chk,
		user_nm: nm,
		nick_nm: nick

	}
	console.log(params)
	fetch(`/joinProc`, {
		method: 'post',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify(params)
	}).then(function(res) {
		return res.json()
	}).then(function(data) {
		if (data.result == 1) {
			alert('회원가입에 성공하였습니다.')
			location.href="/home"
		} else {
			alert('회원가입에 실패하였습니다.')
		}
	})

}