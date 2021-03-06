import app from './app';

const port: Number = Number(process.env.PORT || 3000);

const server = app.listen(port, () => {
  console.log(`server is listening on ${port}`);
});

export default server;
