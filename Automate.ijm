input = getDirectory("input folder");
output = getDirectory("results");
list = getFileList(input);
setBatchMode(true);

  for (i = 0; i < list.length; i++){
  	open(input+list[i]);
  	run("Enhance Contrast...", "saturated=0.35 normalize process_all");
//run("Threshold...");
setAutoThreshold("Default dark no-reset");
run("Convert to Mask", "background=Dark calculate black");
run("Close");
run("Make Binary", "background=Dark calculate black");
run("Watershed", "stack");
run("Set Measurements...", "area mean min shape redirect=None decimal=3");
selectImage("1.tiff");
run("Analyze Particles...", "size=4.50-Infinity circularity=0.40-1.00 show=Outlines display exclude summarize stack");
close();
// List all open windows
windowTitles = getList("window.titles");

// Loop through the list of window titles
for (j = 0; j < windowTitles.length; j++) {
    // Check if the title starts with "Summary of"
    if (startsWith(windowTitles[j], "Summary of")) {
        // If it does, rename it to "Results"
        selectWindow(windowTitles[j]);
        rename("Results");
        break;
    }
}
saveAs("Results", output+i+"-data.xls");
run("Close All");
  }
