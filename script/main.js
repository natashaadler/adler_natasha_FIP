
(() => {
  new Vue({
    el: '#app',
    data: {
      items1: [],
      items2: [],
      items3: [],
      focusItem: null
    },
    mounted() {
      this.getData()
    },
    methods: {
      getData() {
        fetch("./includes/data.php")
        .then(data => data.json())
        .then(response => {
          this.items1 = [response[0], response[1], response[2]];
          this.items2 = [response[3], response[4], response[5]];
          this.items3 = [response[6], response[7], response[8]];
          this.focusItem = null;
        })
      },
      open(item) {
        this.focusItem = item;
      },
      close() {
        this.focusItem = null;
      }
    }
  })
})();