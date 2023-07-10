const textarea = document.querySelector(".chatbox-message-input");
const chatboxForm = document.querySelector(".chatbox-message-form");
let text = "";
textarea.addEventListener("input", function() {
  let line = textarea.value.split("\n").length;

  if (textarea.rows < 6 || line < 6) {
    textarea.rows = line;
  }

  if (textarea.rows > 1) {
    chatboxForm.style.alignItems = "flex-end";
  } else {
    chatboxForm.style.alignItems = "center";
  }
});
textarea.addEventListener("keydown", function(event) {
  if (event.keyCode === 13 && !event.shiftKey) {
    event.preventDefault(); // Ngăn không cho nhập ký tự xuống dòng
     if (isValid(textarea.value)) {
       writeMessage();
       setTimeout(autoReply, 1000);
     } // Gọi hàm xử lý khi người dùng nhấn Enter
  }
});
// CHATBOX MESSAGE
const chatboxMessageWrapper = parent.document.querySelector(
  ".chatbox-message-content"
);
const chatboxNoMessage = document.querySelector(".chatbox-message-no-message");

chatboxForm.addEventListener("submit", function(e) {
  e.preventDefault();

  if (isValid(textarea.value)) {
    writeMessage();
    setTimeout(autoReply, 1000);
  }
});

function addZero(num) {
  return num < 10 ? "0" + num : num;
}

function writeMessage() {
  const today = new Date();
  text = textarea.value.trim().replace(/\n/g, "<br>\n");
  let message = `
		<div class="chatbox-message-item sent">
			<span class="chatbox-message-item-text">
				${textarea.value.trim().replace(/\n/g, "<br>\n")}
			</span>
			<span class="chatbox-message-item-time">${addZero(
        today.getHours()
      )}:${addZero(today.getMinutes())}</span>
		</div>
	`;
  chatboxMessageWrapper.insertAdjacentHTML("beforeend", message);
  chatboxForm.style.alignItems = "center";
  textarea.rows = 1;
  textarea.focus();
  textarea.value = "";
  chatboxNoMessage.style.display = "none";
  scrollBottom();
}

function autoReply() {
    const divElement = document.createElement("div");
    const imgElement = document.createElement("img");

    imgElement.src = "https://firebasestorage.googleapis.com/v0/b/read-right-8a5d3.appspot.com/o/output-onlinegiftools.gif?alt=media&token=f62557e3-bd45-4e06-b09d-43028b4e463c";
    imgElement.alt = "Loading";

  divElement.appendChild(imgElement);
  divElement.classList.add("loading");
  imgElement.classList.add("gif-image");
  chatboxMessageWrapper.appendChild(divElement);

  const today = new Date();
  let replyMessage = "";
  fetch("bot/chat?prompt=" + encodeURIComponent(text))
    .then(function(response) {
      return response.text();
    })
    .then(function(data) {
     if (data.includes("error") || (data.includes("Error"))) {
            replyMessage = "Xin lỗi, tôi đang bận! Thử lại sau.";
        }
        else {
            replyMessage = data;
        }
      
      chatboxMessageWrapper.removeChild(divElement);
      let message = `
        <div class="chatbox-message-item received">
          <span class="chatbox-message-item-text">
            ${replyMessage}
          </span>
          <span class="chatbox-message-item-time">${addZero(
            today.getHours()
          )}:${addZero(today.getMinutes())}</span>
        </div>
      `;

      chatboxMessageWrapper.insertAdjacentHTML("beforeend", message);
      scrollBottom();
    })
    .catch(function(error) {
      console.error(error);
    });
}

function scrollBottom() {
  chatboxMessageWrapper.scrollTo(0, chatboxMessageWrapper.scrollHeight);
}

function isValid(value) {
  let text = value.replace(/\n/g, "");
  text = text.replace(/\s/g, "");

  return text.length > 0;
}
