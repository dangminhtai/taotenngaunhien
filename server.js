const sql = require('mssql/msnodesqlv8');
const express = require('express');
const app = express();
const port = 3000;

// Cấu hình cơ bản
app.use(express.static('public'));
app.use(express.json());

const config = {
    connectionString: 'Driver={ODBC Driver 17 for SQL Server};Server=TAMIDA142857;Database=APINAME;UID=tamida;PWD=123456;'
};

// API endpoints
app.get('/test-connection', async (req, res) => {
  try {
    await sql.connect(config);
    const result = await sql.query('SELECT TOP 10 * FROM dbo.FirstName');
    res.json({
      message: '✅ Kết nối thành công!',
      data: result.recordset
    });
  } catch (err) {
    console.error('❌ Lỗi kết nối:', err.message, err);
    res.status(500).json({ error: 'Không thể kết nối tới SQL Server' });
  } finally {
    await sql.close();
  }
});

app.get('/random-female-name', async (req, res) => {
    const storedProcedures = ['RandomFullNameFemale', 'RandomFullNameFemale_By3Tables'];
    const randomIndex = Math.floor(Math.random() * storedProcedures.length);
    const selectedSP = storedProcedures[randomIndex];
  
    try {
      const pool = await sql.connect(config);
      const request = new sql.Request(pool);
      const result = await request.execute(selectedSP);
      const fullName = result.recordset[0]['Họ và tên đầy đủ'];
      res.json({ name: fullName });
    } catch (err) {
      console.error('Lỗi khi gọi SP:', err);
      res.status(500).json({ error: 'Không thể tạo tên nữ' });
    } finally {
      await sql.close();
    }
});

app.get('/random-male-name', async (req, res) => {
    const storedProcedures = ['RandomFullNameMale', 'RandomFullNameMale_By3Tables'];
    const randomIndex = Math.floor(Math.random() * storedProcedures.length);
    const selectedSP = storedProcedures[randomIndex];
  
    try {
      const pool = await sql.connect(config);
      const request = new sql.Request(pool);
      const result = await request.execute(selectedSP);
      const fullName = result.recordset[0]['Họ và tên đầy đủ'];
      res.json({ name: fullName });
    } catch (err) {
      console.error('Lỗi khi gọi SP:', err);
      res.status(500).json({ error: 'Không thể tạo tên nam' });
    } finally {
      await sql.close();
    }
});

app.get('/random-male-name-4parts', async (req, res) => {
    try {
      const pool = await sql.connect(config);
      const request = new sql.Request(pool);
      const result = await request.execute('RandomFullNameMale_4Parts');
      const fullName = result.recordset[0]['Họ và tên đầy đủ'];
      res.json({ name: fullName });
    } catch (err) {
      console.error('Lỗi khi gọi SP 4 parts:', err);
      res.status(500).json({ error: 'Không thể tạo tên nam 4 phần' });
    } finally {
      await sql.close();
    }
});

app.get('/random-female-name-4parts', async (req, res) => {
    try {
      const pool = await sql.connect(config);
      const request = new sql.Request(pool);
      const result = await request.execute('RandomFullNameFemale_4Parts');
      const fullName = result.recordset[0]['Họ và tên đầy đủ'];
      res.json({ name: fullName });
    } catch (err) {
      console.error('Lỗi khi gọi SP female 4 parts:', err);
      res.status(500).json({ error: 'Không thể tạo tên nữ 4 phần' });
    } finally {
      await sql.close();
    }
});

app.get('/api/name-probability', async (req, res) => {
  const fullName = req.query.fullName;

  try {
    const pool = await sql.connect(config);
    const result = await pool.request()
      .input('FullName', sql.NVarChar(100), fullName)
      .execute('GetNameProbability');
    res.json(result.recordset);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error('Unhandled error:', err);
  res.status(500).json({
    error: 'Internal Server Error',
    details: err.message
  });
});

// Catch-all route
app.use((req, res) => {
  res.status(404).json({
    error: 'Not Found',
    message: 'Route không tồn tại'
  });
});

app.listen(port, () => {
  console.log(`🔥 Server đang chạy tại http://localhost:${port}`);
});

function toTitleCase(str) {
  return str.replace(/([\\p{L}]+)/gu, (word) =>
    word.charAt(0).toLocaleUpperCase('vi-VN') + word.slice(1).toLocaleLowerCase('vi-VN')
  );
}
  