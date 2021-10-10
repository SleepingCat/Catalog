document.body.addEventListener("ajax:success", (event) => {
  const [data, status, xhr] = event.detail;
  document.getElementById("detail").innerHTML = new XMLSerializer().serializeToString(data);
})
