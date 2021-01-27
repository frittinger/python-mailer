import psycopg2

user = "postgres"
password = "v1rtual"
host = "127.0.0.1"
port = "5432"
database = "terra"

def get_data():
    """ query data from queue table """
    conn = None
    try:
        conn = psycopg2.connect(user=user,
                                password=password,
                                host=host,
                                port=port,
                                database=database)
        cur = conn.cursor()
        cur.execute("SELECT id, mail_to, reply_to, subject, data, data_type, created_at FROM obj.queue_table WHERE processed_at is null ORDER BY created_at asc")
        rows = cur.fetchall()
        print("Number of entries: ", cur.rowcount)
        for row in rows:
            print(row)
            cur2 = conn.cursor()
            cur2.execute("""UPDATE obj.queue_table SET processed_at = NOW() WHERE id = %s """, (row[0],))
            conn.commit()
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()


if __name__ == '__main__':
    get_data()