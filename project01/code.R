# กำหนดตัวแปร hands
hands <- c("hammer", "paper", "scissors")

# สร้างฟังก์ชัน game()
game <- function() {
  
  # ถามชื่อผู้เล่น
  username <- readline("Enter your name: ")
  cat("Welcome, ", username, "!\n")
  
  # นับคะแนน
  user_score <- 0
  computer_score <- 0
  
  while (TRUE) {
    # เลือกมือ
    cat("\nChoose your hand (hammer, paper, scissors) or type 'stop_game' to exit: ")
    user_hand <- tolower(readline())
    
    # ตรวจสอบการออกจากเกม
    if (user_hand == "stop_game") {
      cat("Thanks for playing! Final scores:\n")
      cat(username, ": ", user_score, "\n")
      cat("Computer: ", computer_score, "\n")
      break
    }
    
    # เลือกมือสุ่มของคอมพิวเตอร์
    computer_hand <- sample(hands, 1)
    cat("Computer chooses: ", computer_hand, "\n")
    
    # ตรวจสอบผลลัพธ์และนับคะแนน
    if (user_hand == "hammer" && computer_hand == "scissors" ||
        user_hand == "scissors" && computer_hand == "paper" ||
        user_hand == "paper" && computer_hand == "hammer") {
      cat("You win!\n")
      user_score <- user_score + 1
    } else if (user_hand == computer_hand) {
      cat("It's a tie!\n")
    } else {
      cat("Computer wins!\n")
      computer_score <- computer_score + 1
    }
    
    # แสดงคะแนนปัจจุบัน
    cat("Current scores:\n")
    cat(username, ": ", user_score, "\n")
    cat("Computer: ", computer_score, "\n")
  }
}

# เรียกใช้ฟังก์ชัน game()
game()
