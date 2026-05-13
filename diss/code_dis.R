pacman::p_load(tidyverse, targets, here)



#| fig-width: 8
#| fig-height: 9
#| out-width: "100%"
#| fig-dpi: 150
#| fig-cap: "Average Regional Technological Potential (2008 vs 2018)"
map_avg_pred1 <- targets::tar_read(map_avg_pred1, store = here::here("../../Research/POTENTIAL/_targets_DES"))



map <- map_avg_pred1 +
  scale_fill_viridis_c(
    name = "Avg Potential", 
    option = "plasma"
    # trans = scales::transform_()
  ) +
  labs(
    title = "Average Regional Technological Potential (2008 vs 2018)"
  ) + 
  theme(
    plot.title = element_blank(),
    legend.position = "right",
    legend.direction = "vertical",
    legend.box = "vertical",
    legend.title = element_text(hjust = 0.5, angle = 90),
    legend.title.position = "right",
    legend.key.width = unit(0.2, "cm"),
    legend.key.height = unit(0.7, "null"),
    legend.box.just = "center",
    legend.title.align = 0.5
    # legend.margin = margin(t = 0, b = 0, r = 0.6, l = 0.6)
  )


ggsave(plot = map, filename = here::here("diss", "potential.jpg"), dpi = "retina", scale = 0.8)
