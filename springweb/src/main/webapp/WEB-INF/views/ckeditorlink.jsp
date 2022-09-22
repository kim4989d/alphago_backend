<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<!-- <meta charset="utf-8"> -->
<title>CKEditor</title>
	<script
	src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<!-- <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script> -->

</head>
<body>
	<h1>CKEditor</h1>
	<form action="" method="POST">
		<textarea name="text" id="editor"></textarea>

		<!-- 
		
<script> 
		ClassicEditor.create(document.querySelector('#editor'));
	</script>  -->



		<script>
//         ClassicEditor
//             .create( document.querySelector( '#editor' ), {
//                 language: 'ko' //언어설정
//             })
//             .catch( error => {
//                 console.error( error );
//             } );
        
        
        
        ClassicEditor
        .create( document.querySelector( '#editor' ), {
           // removePlugins: [  'Link' ],
            toolbar: [ 'bold', 'italic', 'bulletedList', 'numberedList', 'blockQuote' ]
        } )
        .catch( error => {
            console.log( error );
        } );
        
    </script>
		<p>
			<input type="submit" value="전송">
		</p>
	</form>

</body>
</html>