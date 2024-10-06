@import url('https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap');
* {
    font-family: "Roboto Mono", monospace;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #333;
    padding: 10px 20px;
}
.navbar .logo {
    font-size: 24px;
    color: white;
}
.navbar .nav-links {
    list-style-type: none;
    display: flex;
}
.navbar .nav-links li {
    margin-left: 32px;
}
.navbar .nav-links a {
    color: white;
    text-decoration: none;
    font-size: 18px;
    display: flex;
    align-items: center;
}
.navbar .nav-links i {
    margin-right: 5px;
    font-size: 20px;
}
.navbar .nav-links a:hover {
    color: #ddd;
}
.footer {
    margin-top: auto;
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px 0;
    position: relative;
}