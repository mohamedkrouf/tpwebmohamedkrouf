import mysql from "mysql2"

export const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password: "mohamedkrouf0000*/",
    database:"blog"
  })