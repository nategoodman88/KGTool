<template>
  <div class="layout-wrapper">
    <q-layout view="lHh Lpr lFf">
      <q-header elevated class="bg-white text-black header-with-border">
        <q-tabs align="left" class="q-mx-xs">
          <q-route-tab to="/" label="Home" />
          <q-route-tab to="/design" label="Machine Design and Build" />
          <q-route-tab to="/design2" label="Fixture Design and Build" />
          <q-route-tab to="/shortrun" label="Short Run Production and Repair" />
          <q-route-tab to="/resources" label="Resources" />
          <q-route-tab to="/contact" label="Contact" />
        </q-tabs>
      </q-header>
      <q-page-container>
        <div class="logo q-my-md q-px-xs">
          <img alt="KGTool" src="~assets/Logo.png" class="logo-img" />
        </div>
        <router-view />
      </q-page-container>

      <q-footer elevated class="bg-white text-black footer-with-border">
        <q-toolbar class="q-pa-md">
          <div class="footer">
            <div>© 2024 K & G Tool Co. All Rights Reserved.</div>
            <div class="footer-info">
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
import { defineComponent } from "vue";

export default defineComponent({
  name: "MainLayout",
});
</script>

<style>
.logo {
  display: flex;
  align-items: center;
  justify-content: center;
  margin: auto;
}
.logo-img {
  width: 100%;
  max-width: 150px;
  height: auto;
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
  width: 100%;
}

.footer-info div {
  display: inline-block;
  margin: 0 5px;
}

@media (max-width: 768px) {
  .footer-info div {
    display: block;
    margin: 5px 0;
  }

  .q-tabs {
    flex-direction: column;
    align-items: flex-start;
  }
}
</style>
