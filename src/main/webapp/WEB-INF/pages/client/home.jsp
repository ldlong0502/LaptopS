<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <style>
                .float-button {
                    position: fixed;
                    bottom: 20px;
                    right: 20px;
                    background-color: #4CAF50;
                    color: #fff;
                    padding: 10px 20px;
                    border-radius: 50%;
                    text-align: center;
                    font-size: 16px;
                    cursor: pointer;
                    position: fixed;
                    transition: box-shadow 0.3s, opacity 0.3s, transform 0.3s;
                }

                .float-button img {
                    width: 30px;
                    height: 30px;
                }

                .float-button:hover {
                    box-shadow: 0 0 10px 5px rgba(160, 177, 195, 0.7);
                }

                .chatbot {
                    position: fixed;
                    bottom: 20px;
                    right: 20px;
                    width: 400px;
                    height: 90%;
                    background-color: #fff;
                    border: 1px solid #ccc;
                    border-radius: 15px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                    opacity: 0;
                    transform: translateY(100%);
                    transition: opacity 0.3s, transform 0.3s;
                    z-index: 9999;
                }

                .float-button.active {
                    opacity: 0;
                    transform: translateY(100%);
                }

                .chatbot.active {
                    opacity: 1;
                    transform: translateY(0);
                }

                .chatbot.closed {
                    opacity: 0;
                    transform: translateY(100%);
                }
            </style>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Laptop Shop </title>
        </head>

        <body>
            <div class="chatbot" id="chatbot">
                <jsp:include page="include/chatbotHeader.jsp"></jsp:include>
                <jsp:include page="include/chatbotContent.jsp"></jsp:include>
                <jsp:include page="include/chatbotFooter.jsp"></jsp:include>
            </div>
            <jsp:include page="include/homeHeader.jsp"></jsp:include>

            <jsp:include page="include/homeContent.jsp"></jsp:include>

            <jsp:include page="include/homeFooter.jsp"></jsp:include>

            <a href="#" class="float-button" id="floatButton">
                <img src="Frontend/img/chatbot.png" alt="Button Image">
            </a>

            <script>
                var floatButton = document.getElementById("floatButton");
                var chatbot = document.getElementById("chatbot");

                floatButton.addEventListener("click", function () {
                    floatButton.classList.add("active");
                    chatbot.classList.remove("closed");
                    chatbot.classList.add("active");
                });
            </script>
        </body>

        </html>