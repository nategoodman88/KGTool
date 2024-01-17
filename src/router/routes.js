const routes = [
  {
    path: "/",
    component: () => import("layouts/MainLayout.vue"),
    children: [
      { path: "", component: () => import("pages/IndexPage.vue") },
      {
        path: "design",
        component: () => import("pages/MachineDesignBuild.vue"),
      },
      {
        path: "design2",
        component: () => import("pages/FixtureDesignBuild.vue"),
      },
      {
        path: "shortrun",
        component: () => import("pages/ShortRunProdRepair.vue"),
      },
      {
        path: "resources",
        component: () => import("pages/ResourcePage.vue"),
      },
    ],
  },
  // Always leave this as last one,
  // but you can also remove it
  {
    path: "/:catchAll(.*)*",
    component: () => import("pages/ErrorNotFound.vue"),
  },
];

export default routes;
