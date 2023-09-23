import mysql from 'mysql2/promise';

export const connectDB = async () => {
  const connection = await mysql.createConnection({
    host: '194.163.45.55',
    user: 'Multiopticas',
    password: 'admin',
    database: 'proyectomultiopticas',
  });
  return connection;
};