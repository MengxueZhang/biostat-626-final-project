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
for (i = 0; i < windowTitles.length; i++) {
    // Check if the title starts with "Summary of"
    if (startsWith(windowTitles[i], "Summary of")) {
        // If it does, rename it to "Results"
        selectWindow(windowTitles[i]);
        rename("Results");
        break;
    }
}
saveAs("Results", "/Users/chunhuigu/Desktop/train/images/summary.csv");
run("Close All");
