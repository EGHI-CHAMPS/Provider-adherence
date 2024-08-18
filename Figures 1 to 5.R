dat %>%
  ggplot(aes(y = reorder(var, -order), x = prop, xmin = l.ci, xmax = u.ci, fill = bar)) +
  geom_col(position = position_dodge(0.8), width = 0.8) +
  geom_errorbar(size = 0.4, width = 0.2, position = position_dodge(0.8)) +
  geom_text(aes(label = P.value, x = 110), hjust = 1, size = 3.5, color = 'grey30', show.legend = FALSE) +
  scale_fill_manual(values = c('#7f3c8c', '#12a579', '#3968ac', '#f2b701')) +
  scale_x_continuous(labels = function(x) paste0(x, "%"), expand = c(0, 0)) +
  coord_cartesian(clip = "off", xlim = c(0, 100))
