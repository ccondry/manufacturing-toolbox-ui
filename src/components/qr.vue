<template>
  <panel title="QR" aria-id="qr">
    <div style="display: flex; justify-content: space-around;">
      <img :src="url">
    </div>
  </panel>
</template>

<script>
export default {
  data () {
    return {
      url: 'https://mm-static.cxdemo.net/manufacturing-qr.png'
    }
  }
}
</script>
