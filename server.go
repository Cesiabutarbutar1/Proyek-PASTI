package main

import (
	"bufio"
	"database/sql"
	"fmt"
	"net"
	"os"

	_ "github.com/go-sql-driver/mysql"
)

func main() {
	fmt.Println("Server started...")

	listener, err := net.Listen("tcp", "127.0.0.1:8080")
	if err != nil {
		fmt.Println("Error listening:", err.Error())
		os.Exit(1)
	}
	defer listener.Close()

	db, err := sql.Open("mysql", "root:@tcp(127.0.0.1:3306)/chat_app")
	if err != nil {
		fmt.Println("Error connecting to the database:", err.Error())
		os.Exit(1)
	}
	defer db.Close()

	for {
		conn, err := listener.Accept()
		if err != nil {
			fmt.Println("Error accepting connection:", err.Error())
			os.Exit(1)
		}

		go handleConnection(conn, db)
	}
}

func handleConnection(conn net.Conn, db *sql.DB) {
	defer conn.Close()

	scanner := bufio.NewScanner(conn)
	for scanner.Scan() {
		message := scanner.Text()

		fmt.Println("Received message:", message)

		// Simpan pesan ke database
		if _, err := db.Exec("INSERT INTO messages (message) VALUES (?)", message); err != nil {
			fmt.Println("Error inserting message into database:", err.Error())
			continue
		}

		// Kirim konfirmasi ke client
		conn.Write([]byte("Message received\n"))
	}

	if err := scanner.Err(); err != nil {
		fmt.Println("Error reading from connection:", err.Error())
		return
	}
}
