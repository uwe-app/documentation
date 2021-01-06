(function sidebar() {
  let key = "sidebar-open";
  let el = document.getElementById("sidebar-toggle");
  if (el && sessionStorage) {
    el.checked = sessionStorage.getItem(key);
    el.addEventListener("change", (e) => {
      sessionStorage.setItem(key, e.currentTarget.checked ? "open" : "");
    });
    let aside = document.getElementById("sidebar");
    if (aside) { setTimeout(() => aside.classList.add("animate"), 500) }
  }
})();
