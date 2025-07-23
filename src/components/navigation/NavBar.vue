<template>
  <div class="layout-wrapper">
    <q-layout view="lHh Lpr lFf">
      <q-header elevated class="bg-white text-black header-with-border">
        <q-tabs v-model="tab" align="left" class="q-mx-xs">
          <q-tab name="home" label="Home" />
          <q-tab name="design" label="Machine Design and Build" />
          <q-tab name="design2" label="Fixture Design and Build" />
          <q-tab name="shortrun" label="Short Run Production and Repair" />
          <q-tab name="resources" label="Resources" />
          <q-tab name="contact" label="Contact" />
        </q-tabs>
      </q-header>

      <q-page-container>
        <div class="logo q-my-md q-px-xs">
          <img alt="KGTool" src="~assets/Logo.png" class="logo-img" />
        </div>

        <q-tab-panels v-model="tab" animated>
          <q-tab-panel name="home"><Home /></q-tab-panel>
          <q-tab-panel name="design"><MachineDesignBuild /></q-tab-panel>
          <q-tab-panel name="design2"><FixtureDesignBuild /></q-tab-panel>
          <q-tab-panel name="shortrun"><ShortRunProdRepair /></q-tab-panel>
          <q-tab-panel name="resources"><Resource /></q-tab-panel>
          <q-tab-panel name="contact"><Contact /></q-tab-panel>
        </q-tab-panels>
      </q-page-container>

      <Foot></Foot>
    </q-layout>
  </div>
</template>

<script>
import { defineComponent, ref } from 'vue'

import Contact from '../Contact.vue'
import FixtureDesignBuild from '../FixtureDesignBuild.vue'
import Foot from '../Footer.vue'
import Home from '../Home.vue'
import MachineDesignBuild from '../MachineDesignBuild.vue'
import Resource from '../Resource.vue'
import ShortRunProdRepair from '../ShortRunProdRepair.vue'

export default defineComponent({
  name: 'NavBar',
  components: {
    Home,
    MachineDesignBuild,
    FixtureDesignBuild,
    ShortRunProdRepair,
    Resource,
    Contact,
    Foot,
  },
  setup() {
    const tab = ref('home') // default tab

    return {
      tab,
    }
  },
})
</script>
