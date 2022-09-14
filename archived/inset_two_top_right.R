inset_two_layout  <- function(plot1, plot2, 
                              left = 0.65, bottom = 0.65,
                              right = unit(1, 'npc') - unit(1, 'cm'),
                              top = unit(1, 'npc') - unit(1, 'cm'), ...) {
  
  # Inset must have a background to be differentiated from base plot. 
  # No theme void or theme minimal.
  
  plot1 + inset_element(
    plot2, 
    left = left, 
    bottom = bottom, 
    right = right, 
    top = top
  )
  
}


