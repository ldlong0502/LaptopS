<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
            <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
            <link rel="stylesheet" href="Frontend/css/chatbox.css">
            <style>
                .fab_field {
                    width: 100%;
                    height: 5%;
                    align-items: center;
                    justify-items: center;
                    display: flex;
                    text-align: center;
                    background-color: white;
                    border-top: 1px solid #eee;
                    border-bottom-right-radius: 15px;
                    border-bottom-left-radius: 15px;
                }



                .fab_field a {
                    display: inline-block;
                    text-align: center;
                }

                .chat_field.chat_message {
                    height: 100%;
                    width: 90%;
                    resize: none;
                    font-size: 18px;
                    font-weight: 400;
                    text-align: start;
                    border-color: transparent;
                    border: none;
                    outline: none;
                    margin: 20;
                }


                .fab {
                    display: flex;
                    width: 10%;
                    justify-content: center;
                    background: rgba(0, 0, 0, 0);
                }

                .powered {
                    font-size: 8;
                    align-self: center;
                    font-weight: 200;
                }

            
            </style>
        </head>

        <body>
        <div class="chatbox-message-bottom">
            <form action="#" class="chatbox-message-form">
                <textarea rows="1" placeholder="Type message..." class="chatbox-message-input"></textarea>
                <button type="submit" class="chatbox-message-submit"><i class='bx bx-send'></i></button>
            </form>
            
        </div>
        <script src="Frontend/js/chatbox.js"></script>
        </body>

        </html>