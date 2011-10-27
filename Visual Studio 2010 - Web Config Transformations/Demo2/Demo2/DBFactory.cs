



namespace Demo2
{
    public static class DBFactory
    {
            public static string GetConnectionString()
            {
                var connectionString = Properties.Settings.Default.DB_Local;

                switch (Properties.Settings.Default.RunEnvironment.ToUpper())
                {
                    case "PRODUCTION":
                        connectionString = Properties.Settings.Default.DB_Production;
                        break;
                    case "TEST":
                        connectionString = Properties.Settings.Default.DB_Test;
                        break;
                }

                return connectionString;
            }
    }
}
