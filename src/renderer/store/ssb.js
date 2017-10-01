import ssbClient from 'ssb-client'
import marked from 'ssb-marked'

/**
 * Store module holding connection to our scuttlebot
 */
export default {
  namespaced: true,

  state: {
    connected: false,
    msgPreview: '',
    sbot: null
  },

  mutations: {
    connected (state, _sbot) {
      state.sbot = _sbot
      state.connected = true
    },

    renderPreview (state, msg) {
      state.msgPreview = marked(msg)
    }
  },

  getters: {
    connected: (state) => {
      return state.connected
    },

    whoami: (state) => {
      // hmm... is this the correct way to wait for sbot available?
      return state.connected ? state.sbot.id : ''
    }
  },

  actions: {
    connect ({ commit }) {
      ssbClient((err, sbot) => {
        if (err) throw err
        console.log('connected sbot:' + sbot.id)
        commit('connected', sbot)
      })
    }
  }
}
