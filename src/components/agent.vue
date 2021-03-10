<template>
  <div class="tile is-parent">
    <article
    class="tile is-child box"
    style="border: 1px solid rgb(204, 204, 204);"
    >
      <p class="title" style="white-space:nowrap">
        {{ agent.name }}
      </p>

      <p class="subtitle">
        {{ agent.description }}
      </p>

      <img :src="agent.picture" style="width: 128px; height: 128px;">

      <p style="white-space: nowrap;">
        <strong>
          Username:
          {{ agent.username }}
        </strong>
        <copy :value="agent.username" name="Webex Username" />
      </p>

      <p>
        <strong>
          Password:
          {{ agent.password }}
        </strong>
        <copy :value="agent.password" name="Password" />
      </p>

      <p
      v-if="['Agent', 'Supervisor'].includes(agent.role)"
      style="white-space: nowrap;"
      >
        <strong>
          Agent Desktop:
          <a :href="agentPortalUrl" target="_blank">
            {{ agentPortalUrl }}
          </a>
        </strong>
        <copy :value="agentPortalUrl" name="Agent Desktop URL" />
      </p>
    </article>
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'

export default {
  props: {
    agent: {
      required: true,
      type: Object
    }
  },

  computed: {
    ...mapGetters([
      'agentPortalUrl'
    ])
  },

  methods: {
    ...mapActions([
      'copyToClipboard'
    ]),
    clickCopy (string, type) {
      this.copyToClipboard({string, type})
    }
  }
}
</script>
