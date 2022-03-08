using System.Data;
using System.Data.SqlClient;

namespace Student_Management
{
    public class ConnectDB
    {
        private static string connectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=QLHV;Integrated Security=True";

        public static DataTable GetTable(string query)
        {
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(dt);
                connection.Close();
            }
            return dt;
        }

        public static int Execute(string query)
        {
            int success = 0;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                success = command.ExecuteNonQuery();
                connection.Close();
            }
            return success;
        }
    }
}