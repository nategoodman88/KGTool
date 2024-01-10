<template>
  <q-page class="q-pa-md flex flex-center">
    <div>
      <img
        alt="KGTool"
        src="~assets/Logo.png"
        style="width: 200px; height: 200px"
      />
    </div>
    <div class="text-center">
      <h1 class="h1">
        Designer and manufacturer of equipment for today's automotive, food and
        pharmaceutical industries
      </h1>
      <p>
        In today's fast-paced world, there are two things companies usually seem
        to have too little of...
        <span style="font-weight: bold">time and money</span>. K & G Tool has
        the unique ability to help you save both!
      </p>
    </div>
    <div>
      <img
        src="~assets/k-g_building.jpg"
        alt="KGBuilding"
        style="width: 640px; height: 480px"
      />
    </div>
  </q-page>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "IndexPage",
});
</script>

<style>
.h1 {
  font-size: 32px;
  margin-bottom: 16px;
}

p {
  font-size: 18px;
  line-height: 1.6;
}
</style>
