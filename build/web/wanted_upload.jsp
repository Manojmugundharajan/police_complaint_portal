

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Upload</title>
            <style>
                    h1,h2,h3,h4,h5,h6,p
        {
        display:block;
        }
        table,tr,td,th
        {
        font-size:15px;
        padding:10px;
        border:solid 1px  navy;
        margin-top:30px;
       }

        </style>
    </head>
    <body>
       <h1> Upload </h1>
            <h2>               
           <form  method="post" action="upload3.jsp" enctype="multipart/form-data">
                Choose the photo to upload :                
                    <input type="file" name="filename" id="filename" style="width:400px; text-direction:rtl;background-color:white; padding:10px; height:20px;border:ridge navy 5px;">
                   <input type="submit" value="upload" style="width:200px; height:50px;border:ridge navy 5px;">
                </form>
            </h2>

    </body>

</html>
