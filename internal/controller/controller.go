package controller

import (
	"github.com/jatin510/go-chat-app/internal/models"
	"github.com/jatin510/go-chat-app/internal/services"
)

type Controllers struct {
	Chat ChatControllerInterface
	Room RoomControllerInterface
}

func Init(services *services.Services, l models.Logger) *Controllers {
	return &Controllers{
		Chat: NewChatController(services, l),
		Room: NewRoomController(services, l),
	}
}
