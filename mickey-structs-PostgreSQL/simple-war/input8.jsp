<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
   
<html>
<head>
<title>Hello World</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">

	function insert() {
		var uname = $("#uname").val().trim();
		var udeg = $("#udeg").val().trim();

		
		$.ajax({
			type : "POST",
			url : "class1.action",
			data : {"uname" : uname , "udeg" : udeg },

			success : function(data) {
				var ht = data.msg;
				$("#resp").html(ht);

			},
			error : function(data) {
				alert("Some error occured.");
			}
		});
	}




function deleted() {
		var uname = $("#uname").val().trim();
		var udeg = $("#udeg").val().trim();

		
		$.ajax({
			type : "POST",
			url : "class2.action",
			data : {"uname" : uname , "udeg" : udeg },

			success : function(data) {
				var ht = data.msg;
				$("#resp").html(ht);

			},
			error : function(data) {
				alert("Some error occured.");
			}
		});
	}





	function updated() {
		var uname = $("#uname").val().trim();
		var udeg = $("#udeg").val().trim();

		
		$.ajax({
			type : "POST",
			url : "class3.action",
			data : {"uname" : uname , "udeg" : udeg },

			success : function(data) {
				var ht = data.msg;
				$("#resp").html(ht);

			},
			error : function(data) {
				alert("Some error occured.");
			}
		});
	}




function fetch() {
		var uname = $("#uname").val().trim();
		var udeg = $("#udeg").val().trim();

		
		$.ajax({
			type : "POST",
			url : "class4.action",
			data : {"uname" : uname , "udeg" : udeg },

			success : function(data) {
				var name=data.uname;
				var ht = data.msg;
				$("#resp").html(ht);
				$("#uname").val(name);

			},
			error : function(data) {
				alert("Some error occured.");
			}
		});
	}



</script>

</head>
<body>


	<h1>welcome to input8.jsp</h1>
<center><h1>User Input Form</h1></center>


<center>

<input type="text" name="udeg" id="udeg"  placeholder="Designation">

<input type="text" name="uname" id="uname" placeholder="uname">


<br/>
<br/>

<button onclick="insert();" type="button"> insert </button>

<br/>
<br/>

<button onclick="deleted();" type="button"> delete</button>

<br/>
<br/>


<button onclick="updated();" type="button"> update </button>
<br/>
<br/>

<button onclick="fetch();" type="button"> get data </button>

<div  id="resp"> </div>

<div  id="zxc"> </div>

</center>

<a href="https://www.google.com">google</a>

<a href="input.jsp">input2</a>
  <!-- <s:form action="class1" >
    <s:textfield name="name" label="Enter Your Name: " />
    <s:submit value="Send" />
  </s:form> -->


</body>
</html>