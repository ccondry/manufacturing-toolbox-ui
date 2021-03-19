<template>
  <panel :title="`Welcome ${jwtUser.firstName}!`" aria-id="welcome">
    <p>
      Welcome to the dCloud
      <strong>Cisco ISG Manufacturing Demo</strong>
    </p>
  </panel>
</template>

<script>
import { mapGetters } from 'vuex'
export default {
  computed: {
    ...mapGetters([
      'jwtUser'
    ])
  }
}
</script>
