<template>
  <panel title="User Accounts" aria-id="agents">
    <div style="display: flex; flex-wrap: wrap;">
      <agent :agent="charles" />
      <agent :agent="operator" />
    </div>
  </panel>
</template>

<script>
import {mapGetters} from 'vuex'
import Agent from './agent'

export default {
  components: {
    Agent
  },

  data () {
    return {
      imageFolder: 'https://mm-static.cxdemo.net/cumulus',
      loginDomain: 'cb169.dc-05.com'
    }
  },

  computed: {
    ...mapGetters([
      'jwtUser'
    ]),
    charles () {
      return {
        picture: this.imageFolder + '/cholland.png',
        username: 'cholland' + this.jwtUser.id + '@' + this.loginDomain,
        password: 'dCloud123!',
        name: 'Charles Holland',
        role: 'Agent',
        description: 'Agent'
      }
    },
    operator () {
      return {
        picture: this.imageFolder + '/rick.png',
        username: 'cholland' + this.jwtUser.id + '@' + this.loginDomain,
        password: 'dCloud123!',
        name: 'Rick Barrows',
        role: 'Supervisor',
        description: 'Mobile Operator'
      }
    }
  }
}
</script>
