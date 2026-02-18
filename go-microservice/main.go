package main

import (
    "fmt"
    "net/http"
    "github.com/gorilla/mux"
)

func main() {
    r := mux.NewRouter()
    r.HandleFunc("/compute", ComputeHandler).Methods("GET")
    http.Handle("/", r)
    fmt.Println("Starting Go microservice on :8081")
    http.ListenAndServe(":8081", nil)
}

func ComputeHandler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Computation result")
}
