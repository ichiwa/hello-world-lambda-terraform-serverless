module.exports.helloWorld = async (event, context) => {
  const env = process.env.ENV
  const response = {
    statusCode: 200,
    headers: {
      'Access-Control-Allow-Origin': '*',
    },
    body: JSON.stringify({
      msg: `${env}: Hello World`,
    }),
  }
  return response
}
