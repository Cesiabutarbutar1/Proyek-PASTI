package main

import (
	"bufio"
	"fmt"
	"net"
	"os"
)

func main() {
	conn, err := net.Dial("tcp", "127.0.0.1:8080")
	if err != nil {
		fmt.Println("Error connecting:", err.Error())
		os.Exit(1)
	}
	defer conn.Close()

	scanner := bufio.NewScanner(os.Stdin)

	for {
		fmt.Print("Enter message: ")
		scanner.Scan()
		message := scanner.Text()

		_, err := conn.Write([]byte(message + "\n"))
		if err != nil {
			fmt.Println("Error sending message:", err.Error())
			return
		}

		reply := make([]byte, 256)
		_, err = conn.Read(reply)
		if err != nil {
			fmt.Println("Error receiving reply:", err.Error())
			return
		}

		fmt.Println("Server reply:", string(reply))
	}
}
