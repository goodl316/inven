var user_id = document.querySelector('.id')
var user_pw = document.querySelector('.pw')


function login() {
	params = {
		user_id: user_id.value,
		chk_pw: user_pw.value
	}

	fetch("/loginProc", {
		method: 'post',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify(params)
	}).then(function(res) {
		return res.json()
	}).then(function(data) {
		switch (data.result) {
			case 1:
				location.href = "/home"
				break
			case 2:
				alert('아이디나 비밀번호가 일치하지 않습니다.')
				break
			case 3:
				alert('아이디나 비밀번호가 일치하지 않습니다.')
		}
	})


}