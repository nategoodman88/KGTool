<template>
  <div class="layout-wrapper">
    <q-layout view="lHh Lpr lFf">
      <q-header elevated class="bg-white text-black header-with-border">
        <q-tabs align="left">
          <q-route-tab to="/" label="Home" />
          <q-route-tab to="/design" label="Machine Design and Build" />
          <q-route-tab to="/design2" label="Fixture Design and Build" />
          <q-route-tab to="/shortrun" label="Short Run Production and Repair" />
          <q-route-tab to="/resources" label="Resources" />
          <q-route-tab to="/contact" label="Contact" />
        </q-tabs>
      </q-header>
      <q-page-container>
        <div class="logo">
          <img
            alt="KGTool"
            src="~assets/Logo.png"
            style="width: 150px; height: 150px"
          />
        </div>
        <router-view />
      </q-page-container>

      <q-footer elevated class="bg-white text-black footer-with-border">
        <q-toolbar class="q-pa-md">
          <div class="footer">
            <div>© 2024 K & G Tool Co. All Rights Reserved.</div>
            <div>
              K&G Tool Company -
              <div>16679 Comstock Grand Haven, MI 49417</div>
              <div>
                Phone: (616) 846-3690 - Email: sales@kgtool.net
                www.kandgtoolco.com
              </div>
            </div>
          </div>
        </q-toolbar>
      </q-footer>
    </q-layout>
  </div>
</template>

<script>
import { defineComponent, ref } from "vue";

export default defineComponent({
  name: "MainLayout",

  setup() {
    return {};
  },
});
</script>
<style>
.logo {
  display: flex;
  align-items: center;
  justify-content: center;
  margin: auto;
  width: 50%;
  padding: 10px;
}
.layout-wrapper {
  overflow: hidden;
}

.header-with-border {
  box-shadow: 0 2px 0 0 red, 0 4px 0 0 red;
}

.footer-with-border {
  box-shadow: 0 -2px 0 0 red, 0 -4px 0 0 red;
}
.footer {
  text-align: center;
  margin: auto;
  width: 50%;
  padding: 10px;
}
</style>
