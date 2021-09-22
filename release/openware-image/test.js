const axios = require('axios');
const WebSocket = require('ws');

async function session() {
  return  axios.post(
    "http://localhost:8000/api/v2/barong/identity/sessions",
    {
      "email":"test@mail.com",
      "password":"ALKSJdlaslll1",
    },
    {
      headers: {
        "Content-Type": "application/json",
        "User-Agent": "custom", // well this thing was important 
      },
    },
  )
}

async function runExample() {
  const response = await session();

  cookies = response.headers["set-cookie"];
  console.log(response.headers)

  try {
    const ws = new WebSocket("ws://localhost:8000/api/v2/open_finance", {headers: {
      Cookie: cookies,
      "User-Agent": "custom",
    }});
    ws.on('message', data => console.log(data.toString()));
    ws.on('error', data => console.error(data))
  } catch(error) {
    console.error(error)
  }
}

runExample()
