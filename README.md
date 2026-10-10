# groupie-tracker

## 📖 Description

**Groupie Trackers** is a web-based project that focuses on consuming a provided API and manipulating the data it returns in order to build an informative and interactive website. The application retrieves structured data from the API, processes it, and displays it in a clear and user-friendly format.

## 🚀 Features

* Fetches data from a given external API
* Processes and organizes API data
* Displays information dynamically on a website
* Clean and structured user interface

## 🛠️ Technologies Used

* Programming Language: Golang & Standard librairies
* Web Technologies: HTML, CSS
* API: Provided Groupie Trackers API

## Authors

* **[thakkou](https://github.com/Taha-Hakkou)** - captain
* **[erezzoug](https://github.com/elmehdi-rezoug)**

## 🌐 Usage: how to run

* Start the server

  ```sh
  go run .
  ```
* Open your browser and navigate to:

  ```
  http://localhost:8080
  ```
* Browse the site to view the data retrieved and displayed from the API

## 🐳 Docker

Prebuilt images are published on Docker Hub:

* AMD64 (x86-64): `elmehdirezoug/groupie-tracker:1.0.0`
* ARM64 (Apple Silicon, Raspberry Pi, etc.): `elmehdirezoug/groupie-tracker-arm:1.0.0`

Run with Docker Compose:

```sh
docker compose up -d
```

## 📂 Project Structure

```
groupie-tracker
├── api
│   └── api.go
├── assets
│   └── style.css
├── go.mod
├── handlers
│   ├── artistHandler.go
│   ├── artistsHandler.go
│   ├── cssHandler.go
│   └── renderError.go
├── main.go
├── README.md
├── structures
│   └── structures.go
├── templates
│   ├── artist-details.html
│   ├── artists.html
│   └── error.html
└── utils
    └── utils.go

6 directories, 14 files
```