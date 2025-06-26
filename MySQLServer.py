import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        mydb = mysql.connector.connect(
            host = 'localhost',
            user = 'root',
            password = 'mysql1234'
        )
        
        mycursor = mydb.cursor()
        mycursor.execute('CREATE DATABASE IF NOT EXISTS alx_book_store')
        mydb.commit()
        
        print("Database 'alx_book_store' created successfully!")
    except mysql.connector.Error as e:
        print(f"Error: {e}")
    
    mycursor.close()
    mydb.close()        