<template>
  <panel title="QR" aria-id="qr">
    <p>
      Test
    </p>
    <div style="display: flex; justify-content: space-around;">
      <img :src="whatsappQrUrl">
    </div>
  </panel>
</template>

<script>
export default {
  data () {
    return {
      whatsappQrUrl: 'https://mm-static.cxdemo.net/whatsapp-qr.png'
    }
  }
}
</script>
