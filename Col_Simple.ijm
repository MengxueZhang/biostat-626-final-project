imageID = getImageID();
run("Enhance Contrast...", "saturated=0.35 normalize process_all");
setAutoThreshold("Default dark no-reset");
//run("Threshold...");
setAutoThreshold("Default dark no-reset");
setOption("BlackBackground", true);
run("Convert to Mask", "background=Dark calculate black");
setSlice(39);
run("Duplicate...", "title=39");
selectImage(imageID);
setSlice(40); 
run("Duplicate...", "title=40");
selectImage("39");
run("biop-SpringGreen");
selectImage("40");
run("biop-BrightPink");
run("Merge Channels...", "c1=40 c2=39 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");

path = "/Users/chunhuigu/Desktop/train/Col/Col3.txt"; 
results = "Pearson's Coefficient: " + getResult("Pearson's Coefficient", 0) + "\n";
results += "Spearman's Rank Coefficient: " + getResult("Spearman's Rank Coefficient", 0) + "\n";
results += "Overlap Coefficient: " + getResult("Overlap Coefficient", 0) + "\n";
results += "ICQ: " + getResult("ICQ", 0) + "\n";

folder = File.getParent(path);
if (!File.exists(folder)) {
    File.makeDirectory(folder);
}

File.saveString(results, path);
print("Results were saved to " + path);
selectImage("Composite");
saveAs("Results", "/Users/chunhuigu/Desktop/train/Col/Col3.csv");