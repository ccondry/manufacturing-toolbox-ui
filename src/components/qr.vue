<template>
  <panel title="QR" aria-id="qr" style="display:block">
    <div>
      <p>Scan this QR in case you're using a Mobile Device</p>
        <div style="display: flex; justify-content: space-around;">
          <img :src="url">
        </div>
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
