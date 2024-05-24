<template>
  <div class="text-center">
    <h1 class="h1">K&G TOOL RESOURCES</h1>
  </div>
  <q-page class="q-pa-md flex flex-center">
    <q-card
      class="column q-ma-sm"
      v-for="(section, index) in sections"
      :key="index"
    >
      <q-card-section>
        <h class="dHead commonHeader">{{ section.title }}</h>
      </q-card-section>
      <q-list bordered>
        <q-item v-for="(item, idx) in section.items" :key="idx">
          <q-item-section>{{ item }}</q-item-section>
        </q-item>
      </q-list>
    </q-card>
  </q-page>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "ResourcesPage",
  data() {
    return {
      sections: [
        {
          title: "Manufacturing Resources",
          items: [
            "30+ Years of Design Experience with 1 Senior Designer & 1 Associate Designer on staff.",
            "Latest version of SolidWorks & Draftsite",
            "100+ Machine builds",
            "Quality Manager",
            "Electrical Engineer",
            "200+ years of Manufacturing/Industrial experience.",
            "3 Machine Assembly Associates",
            "8 Highly Skilled Machinists",
          ],
        },
        {
          title: "CNC Lathes and Mills",
          items: [
            "Daewoo Puma 10HC Turning Center",
            "Doosan DNM 5700 Vertical Machining Center",
            "(2) Doosan Puma GT2600 Turning Center",
            "Doosan Puma GT2600Y Turning Center",
            "Herco BMC 4020 Vertical Mill",
            "LeBlonde Makino Baron 25 Turning Center",
          ],
        },
        {
          title: "Conventional Mills",
          items: [
            "(2) Acer Vertical Mill with Acu-Rite MillPWR Controller",
            "Bridgeport Vertical Mill with Acu-Rite MillPWR Controller",
          ],
        },
        {
          title: "Conventional Lathes",
          items: [
            "Clausing Colchester 15”",
            "Clausing Colchester 15” VS",
            "LeBlonde Engine Lathe",
          ],
        },
        {
          title: "EDM Machining",
          items: ["Mitsubishi FA10SM Wire EDM"],
        },
        {
          title: "Grinders",
          items: [
            "Okamoto Surface Grinder 6” x 18”",
            "Harig Supra 612 Handfeed Surface Grinder",
            "Kent KSG-510AHD 20” x 40” Surface Grinder",
            "Parker Majestic I.D. Grinder #1",
            "Parker Majestic #1 Combination I.D./O.D. Grinder",
          ],
        },
        {
          title: "Inspection Equipment",
          items: [
            "Jones & Lampson Optical Comparator (24”)",
            "DEA CMM Machine (14” x 18” x 36”)",
          ],
        },
        {
          title: "Sawing",
          items: [
            "Amada HA-250W Horizontal Scissor Saw",
            "MEP Shark 310 ax Electronic Automatic Horizontal",
            "Wellsaw W-20 Vertical Band Saw",
          ],
        },
        {
          title: "Welding Equipment",
          items: [
            "Oxyacetylene Torch Set",
            "Miller CP-302 Power Source",
            "MIG Welder",
            "Miller Syncrowave 300 TIG Welder",
          ],
        },
      ],
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

.dHead {
  text-decoration: underline;
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 16px;
}

.commonHeader {
  text-align: center;
}

.q-page {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.column {
  max-width: 300px;
}
</style>
