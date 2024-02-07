<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>Document</title>
    <style type="text/css">
        #position{
             position:absolute;
     }
         </style>
</head>
<body>
<form id="uploadForm" enctype="multipart/form-data" action="upload.php" target="uploadFrame" method="post">
    <label for="uploadFile">Image :</label>
    <input id="uploadFile" name="uploadFile" type="file" />
    <br /><br />
    <input id="uploadSubmit" type="submit" value="Upload !" />
<div id="uploadInfos">
    <div id="uploadStatus">Aucun upload en cours</div>
    <iframe id="uploadFrame" name="uploadFrame">sssssssssss</iframe>
<script>
    function uploadEnd(error, path) {
    if (error === 'OK') {
        document.getElementById('uploadStatus').innerHTML = '<a href="' + path + '">Upload done !</a><br /><br /><a href="' + path + '"><img src="' + path + '" /></a>';
    } else {
        document.getElementById('uploadStatus').innerHTML = error;
    }
}
document.getElementById('uploadForm').addEventListener('submit', function() {
    document.getElementById('uploadStatus').innerHTML = 'Loading...';
}, true);
</script>
</div>
</form>
</body>
</html>