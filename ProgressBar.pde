class ProgressBar {
  float x, y;  // Position of the progress bar
  float width, height;  // Dimensions of the progress bar
  float progress;  // Current progress value (0 to 100)
  color bgColor, fgColor;  // Background and foreground colors

  // Constructor
  ProgressBar(float x, float y, float width, float height, color bgColor, color fgColor) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.bgColor = bgColor;
    this.fgColor = fgColor;
    this.progress = 0;
  }

  // Update progress value
  void setProgress(float value) {
    progress = constrain(value, 0, 100);
  }

  // Display the progress bar
  void display() {
    // Draw background
    fill(bgColor);
    rect(x, y, width, height);

    // Draw foreground based on the progress
    fill(fgColor);
    float progressWidth = map(progress, 0, 100, 0, width);
    rect(x, y, progressWidth, height);
  }
}
