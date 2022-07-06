<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="index.css">
</head>
<body background="img.jpg">
    <div class="container-fluid text-center" id="header">
        <div id="logo">
          <img src="https://ves.ac.in/wp-content/themes/ultra/meghamenu/demo/img/ves-logo.png" class="rounded" alt="vesit logo" style="height:90px;"> 
        </div>
        <div id="h1">
          <h2>Vesit Project Showcase</h2>
        </div>
          <p><b>A single place to get inspired and begin your coding journey</b></p>
      </div>
    
    <div class="container">
        <form action="Details" method="post" enctype="multipart/form-data">
            <div class="k1">
            <h1 class="main">Upload Your Project</h1>
            <p >Please Fill in the information </p>
        </div>
    <hr>
    <div class="k2">
            <h2>Project Information  </h2>
    
            <p>Project Title: <input type="text" name="title" id="name" required></p>
           
            <p>Technology / Domain: <input type="text" name="technology" id="tech" required></p>
        
            <p>Description:</p>
            <textarea name="description" id="Description" cols="150" rows="10" required>
            </textarea>
    
            <p>Github Link: <input type="url" name="link" id="link" required></p>
    
            <p>Project Image:</p>
            <div class="image_upload_wrap">
                <input type="file" name="image" size="50" />
                <!--  <div class="file_upload_content">
                        <img class="file_upload_image" src="#" alt=""/>
                        <div class="image_title_wrap">
                        </div>
                </div> -->
            </div>
           
            
        </div>
        <hr>
            <h2>Team Details</h2>
    
            <h3>Member 1:</h3>
            <p>Name: <input type="text" name="name1" id="name1" required></p>

            <h3>Member 2:</h3>
            <p>Name: <input type="text" name="name2" id="name2" required></p>

            <h3>Member 3:</h3>
            <p>Name: <input type="text" name="name3" id="name3"></p>

            <h3>Member 4:</h3>
            <p>Name: <input type="text" name="name4" id="name4"></p>
        <hr>
    
        <p>Department:
            <select name="dept" id="dept" required>
                <option value="---Select a type---">---Select your department---</option>
                <option value="Electronics">Electronics</option>
                <option value="Computer">Computer</option>
                <option value="Instrumentation">Instrumentation</option>
                <option value="Electronics and Telecommunication">Electronics and Telecommunication</option>
                <option value="Information Technology">Information Technology</option>
                <option value="AI and Data Science">AI and Data Science</option>
            </select> 
        </p>
           
        <p>Academic Year:
            <select name="sem" id="year" required>
                <option value="---Select a type---">---Select your Year---</option>
                <option value="FE">FE</option>
                <option value="SE">SE</option>
                <option value="TE">TE</option>
                <option value="BE">BE</option>
            </select> 
        </p>
        <input type="submit"  value="Submit">
        
    
        </form>
    </div>
</body>
</html>