input = getDirectory("input folder");
output = getDirectory("results");
list = getFileList(input);
setBatchMode(true);

  for (i = 0; i < list.length; i++){
  	open(input+list[i]);
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
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(39);
run("Duplicate...", "title=39");
selectImage(imageID);
setSlice(30); 
run("Duplicate...", "title=30");
selectImage("39");
run("biop-SpringGreen");
selectImage("30");
run("biop-BrightPink");
run("Merge Channels...", "c1=30 c2=39 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(39);
run("Duplicate...", "title=39");
selectImage(imageID);
setSlice(31); 
run("Duplicate...", "title=31");
selectImage("39");
run("biop-SpringGreen");
selectImage("31");
run("biop-BrightPink");
run("Merge Channels...", "c1=31 c2=39 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(39);
run("Duplicate...", "title=39");
selectImage(imageID);
setSlice(20); 
run("Duplicate...", "title=20");
selectImage("39");
run("biop-SpringGreen");
selectImage("20");
run("biop-BrightPink");
run("Merge Channels...", "c1=20 c2=39 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(39);
run("Duplicate...", "title=39");
selectImage(imageID);
setSlice(32); 
run("Duplicate...", "title=32");
selectImage("39");
run("biop-SpringGreen");
selectImage("32");
run("biop-BrightPink");
run("Merge Channels...", "c1=32 c2=39 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(30);
run("Duplicate...", "title=30");
selectImage(imageID);
setSlice(40); 
run("Duplicate...", "title=40");
selectImage("30");
run("biop-SpringGreen");
selectImage("40");
run("biop-BrightPink");
run("Merge Channels...", "c1=40 c2=30 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(30);
run("Duplicate...", "title=30");
selectImage(imageID);
setSlice(31); 
run("Duplicate...", "title=31");
selectImage("30");
run("biop-SpringGreen");
selectImage("31");
run("biop-BrightPink");
run("Merge Channels...", "c1=31 c2=30 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(30);
run("Duplicate...", "title=30");
selectImage(imageID);
setSlice(20); 
run("Duplicate...", "title=20");
selectImage("30");
run("biop-SpringGreen");
selectImage("20");
run("biop-BrightPink");
run("Merge Channels...", "c1=20 c2=30 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(30);
run("Duplicate...", "title=30");
selectImage(imageID);
setSlice(32); 
run("Duplicate...", "title=32");
selectImage("30");
run("biop-SpringGreen");
selectImage("32");
run("biop-BrightPink");
run("Merge Channels...", "c1=32 c2=30 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(40);
run("Duplicate...", "title=40");
selectImage(imageID);
setSlice(31); 
run("Duplicate...", "title=31");
selectImage("40");
run("biop-SpringGreen");
selectImage("31");
run("biop-BrightPink");
run("Merge Channels...", "c1=31 c2=40 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(40);
run("Duplicate...", "title=40");
selectImage(imageID);
setSlice(20); 
run("Duplicate...", "title=20");
selectImage("40");
run("biop-SpringGreen");
selectImage("20");
run("biop-BrightPink");
run("Merge Channels...", "c1=20 c2=40 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(40);
run("Duplicate...", "title=40");
selectImage(imageID);
setSlice(32); 
run("Duplicate...", "title=32");
selectImage("40");
run("biop-SpringGreen");
selectImage("32");
run("biop-BrightPink");
run("Merge Channels...", "c1=32 c2=40 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(31);
run("Duplicate...", "title=31");
selectImage(imageID);
setSlice(20); 
run("Duplicate...", "title=20");
selectImage("31");
run("biop-SpringGreen");
selectImage("20");
run("biop-BrightPink");
run("Merge Channels...", "c1=20 c2=31 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(31);
run("Duplicate...", "title=31");
selectImage(imageID);
setSlice(32); 
run("Duplicate...", "title=32");
selectImage("31");
run("biop-SpringGreen");
selectImage("32");
run("biop-BrightPink");
run("Merge Channels...", "c1=32 c2=31 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

selectImage(imageID);
setSlice(20);
run("Duplicate...", "title=20");
selectImage(imageID);
setSlice(32); 
run("Duplicate...", "title=32");
selectImage("20");
run("biop-SpringGreen");
selectImage("32");
run("biop-BrightPink");
run("Merge Channels...", "c1=32 c2=20 create");
run("BIOP JACoP", "channel_a=1 channel_b=2 threshold_for_channel_a=Otsu threshold_for_channel_b=Otsu manual_threshold_a=0 manual_threshold_b=0 get_pearsons get_spearmanrank get_manders get_overlap get_li_ica get_fluorogram costes_block_size=5 costes_number_of_shuffling=100 set auto-adjust fluorogram_bins=256 fluorogram_min=0 fluorogram_max=255 xmin_costes_graph=-1.000 xmax_costes_graph=1.000 stroke_width=2.000");
imageIDToKeepOpen = imageID;
windowTitles = getList("window.titles");
for (i = 0; i < windowTitles.length; i++) {
    selectWindow(windowTitles[i]);
    if (getImageID() != imageIDToKeepOpen) {
        close();
    }
}

saveAs("Results", output+i+"-col.csv");
run("Close All");
  }