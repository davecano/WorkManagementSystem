
//function validationstyle() //定位错误标志
//{
//    var errorvalidate = document.getElementsByName("login-wrap");
//    response.write(errorvalidate.left);
//}
//window.onload = function () {
//    alert("onload");
//};
function deleteuservalidate() {
   var msg = "您真的确定要删除吗？\n\n请确认！"; 
    if (confirm(msg)==true){ 
        return true; 
    }else{ 
        return false; 
    } 
}

function loginid() //登陆用户账户验证
{

    var stuId = document.getElementById("TxtuserID").value;
    var mystuid = document.getElementById("userid");
    if (stuId != "") 
    {
        var reg = /^[0-9]{8}$/i;
        if (!reg.test(stuId)) {
            mystuid.innerHTML = "账号只能输入八位数字 例如：04130215";
            return false;
        }
        else {
            mystuid.innerHTML = "<font color='green' size='1em' >√</font>";
            return true;
        }
    }
    else {
        mystuid.innerHTML = "账号不能为空！";
        return false;
    }
        
  

}


//function checkadminid() //检查管理员账户
//{
//    var TxtadminId = document.getElementById("TxtadminID").value;
//    var adminID = document.getElementById("adminID");
//    if (TxtadminId != "") {
//        var reg = /^[0-9]{8}$/i;
//        if (!reg.test(TxtadminId)) {
//            adminID.innerHTML = "账号只能输入八位数字 例如：04130215";
//            return false;
//        }
//        else {
//            adminID.innerHTML = "<font color='green'>√</font>";
//            return true;
//        }
//    }
//    else {
//        adminID.innerHTML = "账号不能为空！";
//        return false;
//    }



//}


function checkid() //检查用户账户
{
    var stuId = document.getElementById("TxtuserID").value;
  var mystuid = document.getElementById("userid");
  if (stuId != "") 
  {
        var reg = /^[0-9]{8}$/i;
      if (!reg.test(stuId)) {
          mystuid.innerHTML = "账号只能输入八位数字 例如：04130215";
          return false;
      }
      else {
          mystuid.innerHTML = "<font color='green'>√</font>";
          return true;
      }
  }
         else {
                mystuid.innerHTML = "账号不能为空！";
                return false;
            }
        
  

}

function checkname() {
    var stuName = document.getElementById("TxtuserName").value;
    var myname = document.getElementById("username");
    if (stuName == "") {
        myname.innerHTML = " 姓名不能为空";
        return false;
    } else {

        for (var i = 0; i < stuName.length; i++) {
            var text = stuName.charAt(i);
            if (!(text <= 9 && text >= 0) &&
                !(text >= 'a' && text <= 'z') &&
                !(text >= 'A' && text <= 'Z') &&
                text != "_"
            ) {
                myname.innerHTML = "用户名只能是数字、字母、下划线组成！";
                break;
            }
        }

        if (i >= stuName.length) {
            myname.innerHTML = "<font color='green'>√</font>";
            return true;
        }

    }
}

function checkuserpassword()  //检查密码 
{
    var mypassword = document.getElementById("TxtuserPwd").value;
    var myDivpassword = document.getElementById("userpsw");
    if (mypassword == "") {
        myDivpassword.innerHTML = "密码不能为空!";
        return false;
    }
    else if (mypassword.length < 6) {
        myDivpassword.innerHTML = "密码至少应为六位!";
        return false;
    }
    else {
        myDivpassword.innerHTML = "<font color='green'>√</font>";
        return true;
    }
}
function checkpwdagin()  //检查确认密码
{
    var myispassword = document.getElementById("TxtCfmPwd").value;
    var myDivispassword = document.getElementById("userconfirmpsw");
    if (myispassword == "") {
        myDivispassword.innerHTML = "确认密码不能为空!";
        return false;
    }
    else if (document.getElementById("TxtuserPwd").value != document.getElementById("TxtCfmPwd").value) {
        myDivispassword.innerHTML = "确认密码与密码不一致!";
        return false;
    }
    else {
        myDivispassword.innerHTML = "<font color='green'>√</font>";
        return true;
    }
}
function checktelephone()  //检查电话号码
{
    var mytelephone = document.getElementById("TxtuserPhone").value;
    var myDivtelephone = document.getElementById("userphone");
    if (mytelephone != "") {
        var reg = /^[0-9]{11}$/i;
        if (!reg.test(mytelephone)) {
            myDivtelephone.innerHTML = "只能输入11位数字！例：13595144582或08514785214";
            return false;
        }
        else {
            myDivtelephone.innerHTML = "<font color='green'>√</font>";
            return true;
        }
    }
    else {
        myDivtelephone.innerHTML = "<font color='green'>√</font>";
        return true;
    }
}

function checkClass() {
    
    
    var myclass = document.getElementById("TxtuserClass").value;
    var myDivclass = document.getElementById("userclass");
    if (myclass != "") {
        var reg = /^[0-9]{2}$/i;
        if (!reg.test(myclass)) {
            myDivclass.innerHTML = "请输入两位数的数字 例如01，02，19";
            return false;
        }
        else {
            myDivclass.innerHTML = "<font color='green'>√</font>";
            return true;
        }
    }
    else {
        myDivclass.innerHTML = "请输入班级";
        return false;
    }
}


function checkemail()  //检查E-mail
{
    var myemail = document.getElementById("TxtuserEmail").value;
    var myDivemail = document.getElementById("useremail");
    if (myemail != "") {
        if (myemail.indexOf("@") == -1 || myemail.indexOf(".") == -1 || (myemail.indexOf("@") > myemail.indexOf("."))) {
            myDivemail.innerHTML = "E-mail格式不正确！例：davecano@qq.com";
            return false;
        }
        else {
            myDivemail.innerHTML = "<font color='green'>√</font>";
            return true;
        }
    }
    else {
        myDivemail.innerHTML = "<font color='green'>√</font>";
        return true;
    }
}

//function checkbox() {
//    var checkbox1 = document.getElementById("CheckBox1");
//    var mycheckbox = document.getElementById("usercheckbox");
//    if (!checkbox1.checked) {
//        mycheckbox.innerHTML = "请勾选版权条款";
//        return false;
//    }
//    else return true;
//}

function checkcollege() {
    var college = document.getElementById("TxtuserCollege").value;
    var mycollege = document.getElementById("college");
    if (college == "") {
        mycollege.innerHTML = "学院不能为空";
        return false;
    }
    else 
        mycollege.innerHTML = "<font color='green'>√</font>";
         return true;
    }

function checkall()  //检查所有
{
    if (checkid() && checkname() && checkcollege() && checkClass() && checkemail() && checktelephone() && checkuserpassword() && checkpwdagin()) 

        return true;
    else {
        return false;
    }

}
function checkaadmin()  //检查所有
{
    if (checkname() &&  checkuserpassword() && checkpwdagin())

        return true;
    else {
        return false;
    }

}