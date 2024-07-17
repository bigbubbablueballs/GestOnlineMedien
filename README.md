# GestOnlineMedien

Galaxy Generator (Jacob Finch, Xara Beitinger)

- Description about the algorithm used:
  The setup() function initializes the canvas and sets initial conditions.
  The draw() function is called continuously by Processing. It updates the angles, calculates the new positions for the circles influenced by the mouse, and draws the circles     
  using the drawCircles() function.
  drawCircles() is a recursive function that draws circles for each level. It continues drawing smaller circles within the existing circles until the specified level is reached.     Only the last itiration of the circles is then displayed.
  The changeDirection() function changes the direction and speed of rotation and the color of the circles at defined intervals.
  The keyPressed() function allows the user to save the current frame by pressing the spacebar. The image is then saved to the specified folder.
  
- Description about the technology used:
  The programm that was used is pocessing, which is a form of Java optimised for creative and visual projects.
  
- Description about the end result:
  The end result is a unique new constellation of stars that form a colourful galaxy 
