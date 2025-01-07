document.addEventListener("DOMContentLoaded", () => {
    const videoFeed = document.getElementById("video-feed");
    const startRecognitionBtn = document.getElementById("start-recognition");
    const stopRecognitionBtn = document.getElementById("stop-recognition");

    let recognitionActive = false;

    // 버튼 동작: 얼굴 인식 시작
    startRecognitionBtn.addEventListener("click", () => {
        if (!recognitionActive) {
            recognitionActive = true;
            videoFeed.src = "http://192.168.123.19:5000/video_feed"; // Pi에서 제공하는 Flask 스트림
            console.log("Face recognition started");
        }
    });

    // 버튼 동작: 얼굴 인식 중지
    stopRecognitionBtn.addEventListener("click", () => {
        if (recognitionActive) {
            recognitionActive = false;
            videoFeed.src = ""; // 스트림 연결 해제
            console.log("Face recognition stopped");
        }
    });

    // 상태 확인
    console.log("Face recognition script loaded and ready.");
});