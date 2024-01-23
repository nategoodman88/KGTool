<template>
  <q-page class="q-pa-md flex flex-center">
    <div class="text-center">
      <h1 class="h1">DESIGNERS & BUILDERS OF AUTOMATION EQUIPMENT</h1>
      <p>
        In today’s fast-paced changing manufacturing environment, Automation,
        Robotic, Welding, and Assemble machines are a key element to remaining
        efficient and competitive. With timing and funding paramount, developing
        new part designs and manufacturing processes present chal- lenges. The
        staff of K&G Tool has been providing innovative solutions to these
        challenges for 30+ years in the Automotive, Food Processing, and
        Furniture industries. This assures your competitiveness while minimizing
        the associated expenses. With considerable experience in the Robotic,
        Welding, and Assemble machines, and supported by In-House Design and
        Electri- cal, Wire EMD, CNC Lathe and Mill capability, K&G Tool can
        deliver a solution to meet your Manufacturing Challenge.
      </p>
      <p>
        Please contact us and allow us to demonstrate to you the K&G Tool
        advantage.
      </p>
    </div>
    <div>
      <img
        src="~assets/k-g_building.jpg"
        alt="KGBuilding"
        style="width: 640px; height: 480px"
      />
      <p class="hours">
        Business Hours Monday Thru Friday 7:00 a.m. to 4:00 p.m.
      </p>
      <p class="hours">You are vistor number: {{ vistorCount }}</p>
    </div>
  </q-page>
</template>

<script>
import { defineComponent } from "vue";

//let vistorCount = 1; not implementing yet 

export default defineComponent({
  name: "IndexPage",
  setup() {
    return {
      //vistorCount,
    };
  },
});
</script>

<style>
.h1 {
  font-size: 32px;
  font-weight: bold;
  margin-bottom: 16px;
}
p {
  font-size: 18px;
  line-height: 1.6;
}
.hours {
  text-align: center;
}
</style>
