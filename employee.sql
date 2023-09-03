# Melakukan import mysql connector
import mysql.connector

# Melakukan percobaan koneksi
conn = mysql.connector.connect(user='root', password='', host='localhost', database='karyawan')

# Membuat object cursor sebagai penanda
cursor = conn.cursor()

# Deklarasikan SQL Query untuk memasukan record ke DB (employee)
insert_sql = """
        INSERT INTO employee (first_name, last_name, age, sex, income)
        VALUES (%s, %s, %s, %s, %s)
        """
values = ('Sutiyono', 'Doang', 30, 'Female', 50000.00)

try:
    # Eksekusi SQL Command
    cursor.execute(insert_sql, values)
    
    # Melakukan perubahan (commit) pada DB
    conn.commit()

except:
    # Rollback apabila ada isu
    conn.rollback()
    
# Menutup koneksi
conn.close()
