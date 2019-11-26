output$c_h_Plot <- renderPlot({


  
  if(input$h_c_scale==TRUE){
    
  df<-data.matrix(scale(data())) 
  }
  
  
  else if(input$h_c_scale==FALSE){
    
    df<-data.matrix(data())
  }
  
  # Define some graphics to display the distribution of columns
  .hist = anno_histogram(df, gp = gpar(col = rep(2:3, each = 5)))
  .density = anno_density(df, type = "line", gp = gpar(col = rep(2:3, each = 5)))
  ha_mix_top = HeatmapAnnotation(hist = .hist, density = .density,height = unit(4, "cm"))
  # Define some graphics to display the distribution of rows

  .boxplot = anno_boxplot(df, which = "row",gp = gpar(col = rep(2:3, each = 5)))
  ha_mix_right = HeatmapAnnotation(bxplt = .boxplot,
                                   which = "row", width = unit(4, "cm"), height = unit(8, "cm"))
  # Combine annotation with heatmap
  Heatmap(df, name = "mtcars", 
          column_names_gp = gpar(fontsize = 8),
          top_annotation = ha_mix_top, 
          height = unit(8, "cm"),
          width = unit(30, "cm"))+ha_mix_right 
  
  
  
})


