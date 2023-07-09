<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <style>
                .chat_header {
                    font-size: 13px;
                    font-family: 'Roboto';
                    font-weight: 500;
                    color: black;
                    height: 15%;
                    width: 100%;
                    margin: 5px;
                    flex-direction: column;
                    display: block;
                }

                .container {
                    display: flex;
                    align-items: center;
                    justify-content: center;
                }

                .circle-container {
                    width: 70px;
                    height: 70px;
                    margin: 20px 20px;
                    border-radius: 50%;
                    overflow: hidden;
                    position: relative;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    background-color: #4CAF50;

                }

                .circle-container img {
                    width: 50px;
                    height: 50px;
                    display: block;
                }

                .text-column {
                    flex-grow: 1;
                    padding: 10px;
                    margin-top: 20px;
                }

                .close {
                    position: absolute;
                    top: 18px;
                    right: 18px;
                }

                .close img {
                    width: 30px;
                    height: 30px;
                    display: block;
                }

                .chat-bot {
                    font-size: 24px;
                    font-weight: bold;

                    color: black;
                    margin-top: -40px;
                }

                .online-jsp {
                    font-size: 15px;
                    color: gray;
                }
            </style>
        </head>

        <body>
           
            <div class="chat_header">
                <div class="container">
                    <div class="circle-container">
                        <img src="Frontend/img/chatbot.png" alt="Hình ảnh JSP">
                    </div>
                    <div class="text-column">
                        <h3 class="chat-bot">ChatBot</h3>
                        <p class="online-jsp">Online</p>
                    </div>
                    <div class="close" id="btn-close">
                        <img src="Frontend/img/close.png" alt="Button Close">
                    </div>
                </div>
            </div>
            <script>
               var floatButton = parent.document.getElementById("floatButton");
               var chatbot = parent.document.getElementById("chatbot");
               var close = document.getElementById("btn-close");
                close.addEventListener("click", function () {
                    chatbot.classList.add("closed");
                    floatButton.classList.remove("active");
                });
            </script>
        </body>

        </html>