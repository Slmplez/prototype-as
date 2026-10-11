/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.types.FileSet
 *  org.apache.tools.ant.types.PatternSet$NameEntry
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.pde.internal.build.Utils
 *  org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator
 *  org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator$CompiledEntry
 *  org.eclipse.pde.internal.build.publisher.BuildPublisherApplication
 *  org.eclipse.pde.internal.build.publisher.GatherBundleAction
 *  org.eclipse.pde.internal.build.publisher.GatheringComputer
 */
package org.eclipse.pde.internal.build.publisher;

import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.types.FileSet;
import org.apache.tools.ant.types.PatternSet;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator;
import org.eclipse.pde.internal.build.publisher.AbstractPublisherTask;
import org.eclipse.pde.internal.build.publisher.BuildPublisherApplication;
import org.eclipse.pde.internal.build.publisher.GatherBundleAction;
import org.eclipse.pde.internal.build.publisher.GatheringComputer;

public class GatherBundleTask
extends AbstractPublisherTask {
    private static final String API_DESCRIPTION = ".api_description";
    private String buildResultFolder = null;
    private String targetFolder = null;
    private String gatheredSource = null;
    private String unpack = null;
    private final Map sourceMap = new HashMap();

    public void execute() throws BuildException {
        GatheringComputer computer = this.createComputer();
        GatherBundleAction action = null;
        if (this.targetFolder != null) {
            File targetFile = new File(this.targetFolder);
            action = new GatherBundleAction(targetFile, targetFile);
        } else {
            action = new GatherBundleAction(new File(this.baseDirectory), new File(this.buildResultFolder));
        }
        action.setComputer(computer);
        action.setUnpack(this.unpack);
        PublisherInfo info = this.getPublisherInfo();
        BuildPublisherApplication application = this.createPublisherApplication();
        application.addAction((IPublisherAction)action);
        try {
            application.run(info);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected GatheringComputer createComputer() {
        File sourceFile;
        Properties properties = this.getBuildProperties();
        GatheringComputer computer = new GatheringComputer();
        if (this.targetFolder != null) {
            FileSet fileSet = new FileSet();
            fileSet.setProject(this.getProject());
            fileSet.setDir(new File(this.targetFolder));
            PatternSet.NameEntry includes = fileSet.createInclude();
            includes.setName("**");
            PatternSet.NameEntry excludes = fileSet.createExclude();
            excludes.setName("META-INF/MANIFEST.MF");
            if (new File(this.targetFolder, "META-INF/MANIFEST.MF").exists()) {
                computer.addFile(this.targetFolder, "META-INF/MANIFEST.MF");
            }
            computer.addFiles(this.targetFolder, fileSet.getDirectoryScanner().getIncludedFiles());
            return computer;
        }
        ModelBuildScriptGenerator.CompiledEntry[] entries = null;
        try {
            entries = ModelBuildScriptGenerator.extractEntriesToCompile((Properties)properties, null);
        }
        catch (CoreException coreException) {}
        int numIncludes = 0;
        String include = (String)properties.get("bin.includes");
        String[] splitIncludes = Utils.getArrayFromString((String)include);
        String exclude = (String)properties.get("bin.excludes");
        FileSet fileSet = new FileSet();
        fileSet.setProject(this.getProject());
        fileSet.setDir(new File(this.baseDirectory));
        int i = 0;
        while (i < splitIncludes.length) {
            String entry = splitIncludes[i];
            if (!entry.equals(".")) {
                PatternSet.NameEntry fileInclude = fileSet.createInclude();
                fileInclude.setName(entry);
                ++numIncludes;
            }
            ++i;
        }
        if (numIncludes > 0) {
            String extraExcludes = "META-INF/MANIFEST.MF";
            int i2 = 0;
            while (entries != null && i2 < entries.length) {
                String name = entries[i2].getName(false);
                if (!name.equals(".")) {
                    String formatedName = String.valueOf(name) + (entries[i2].getType() == 1 ? "/" : "");
                    extraExcludes = String.valueOf(extraExcludes) + "," + formatedName;
                }
                ++i2;
            }
            String[] splitExcludes = Utils.getArrayFromString((String)(exclude != null ? String.valueOf(exclude) + "," + extraExcludes : extraExcludes));
            int i3 = 0;
            while (i3 < splitExcludes.length) {
                PatternSet.NameEntry fileExclude = fileSet.createExclude();
                fileExclude.setName(splitExcludes[i3]);
                ++i3;
            }
            List<String> includedFiles = Arrays.asList(fileSet.getDirectoryScanner().getIncludedFiles());
            LinkedHashSet<String> set = new LinkedHashSet<String>(includedFiles);
            if (new File(this.buildResultFolder, "META-INF/MANIFEST.MF").exists()) {
                computer.addFile(this.buildResultFolder, "META-INF/MANIFEST.MF");
            }
            if (set.contains("plugin.xml") && new File(this.buildResultFolder, "plugin.xml").exists()) {
                set.remove("plugin.xml");
                computer.addFile(this.buildResultFolder, "plugin.xml");
            }
            if (set.contains("fragment.xml") && new File(this.buildResultFolder, "fragment.xml").exists()) {
                set.remove("fragment.xml");
                computer.addFile(this.buildResultFolder, "fragment.xml");
            }
            if (new File(this.buildResultFolder, API_DESCRIPTION).exists()) {
                computer.addFile(this.buildResultFolder, API_DESCRIPTION);
            }
            computer.addFiles(this.baseDirectory, set.toArray(new String[set.size()]));
        }
        boolean dotIncluded = false;
        if (entries != null) {
            boolean haveEntries = false;
            fileSet = new FileSet();
            fileSet.setProject(this.getProject());
            fileSet.setDir(new File(this.buildResultFolder));
            int i4 = 0;
            while (i4 < entries.length) {
                String name = entries[i4].getName(false);
                if (name.equals(".")) {
                    dotIncluded = true;
                } else if (this.sourceMap.containsKey(name) && entries[i4].getType() == 1) {
                    Set folders = (Set)this.sourceMap.get(name);
                    this.processOutputFolders(folders, name, computer);
                } else {
                    PatternSet.NameEntry fileInclude = fileSet.createInclude();
                    fileInclude.setName(String.valueOf(name) + (entries[i4].getType() == 1 ? "/" : ""));
                    haveEntries = true;
                }
                ++i4;
            }
            if (haveEntries) {
                computer.addFiles(this.buildResultFolder, fileSet.getDirectoryScanner().getIncludedFiles());
            }
        }
        if (dotIncluded) {
            if (this.sourceMap.containsKey(".")) {
                Set folders = (Set)this.sourceMap.get(".");
                this.processOutputFolders(folders, ".", computer);
            } else {
                fileSet = new FileSet();
                fileSet.setProject(this.getProject());
                fileSet.setDir(new File(this.buildResultFolder, "@dot"));
                PatternSet.NameEntry fileInclude = fileSet.createInclude();
                fileInclude.setName("**");
                if (exclude != null) {
                    String[] splitExcludes = Utils.getArrayFromString((String)exclude);
                    int i5 = 0;
                    while (i5 < splitExcludes.length) {
                        PatternSet.NameEntry fileExclude = fileSet.createExclude();
                        fileExclude.setName(splitExcludes[i5]);
                        ++i5;
                    }
                }
                computer.addFiles(String.valueOf(this.buildResultFolder) + '/' + "@dot", fileSet.getDirectoryScanner().getIncludedFiles());
            }
        }
        if (this.gatheredSource != null && (sourceFile = new File(this.gatheredSource)).exists()) {
            fileSet = new FileSet();
            fileSet.setProject(this.getProject());
            fileSet.setDir(sourceFile);
            PatternSet.NameEntry fileInclude = fileSet.createInclude();
            fileInclude.setName("**");
            computer.addFiles(this.gatheredSource, fileSet.getDirectoryScanner().getIncludedFiles());
        }
        return computer;
    }

    private void processOutputFolders(Set folders, String key, GatheringComputer computer) {
        boolean dot = key.equals(".");
        Iterator iterator = folders.iterator();
        while (iterator.hasNext()) {
            OutputFileSet outputFiles = (OutputFileSet)((Object)iterator.next());
            File baseDir = outputFiles.getDir();
            String[] includes = outputFiles.mergeIncludes(this.getProject());
            if (includes.length != 1) continue;
            IPath prefix = new Path(includes[0]).removeLastSegments(1);
            int count = prefix.segmentCount();
            String[] files = outputFiles.getDirectoryScanner().getIncludedFiles();
            int i = 0;
            while (i < files.length) {
                IPath suffix = new Path(files[i]).removeFirstSegments(count);
                String computerPath = dot ? suffix.toString() : String.valueOf(key) + '/' + suffix.toString();
                computer.addFile(computerPath, new File(baseDir, files[i]));
                ++i;
            }
        }
    }

    public void setBuildResultFolder(String buildResultFolder) {
        this.buildResultFolder = buildResultFolder;
    }

    public void setUnpack(String unpack) {
        if (unpack != null && unpack.length() > 0 && !unpack.startsWith("${")) {
            this.unpack = unpack;
        }
    }

    public void setGatheredSource(String gatheredSource) {
        if (gatheredSource != null && gatheredSource.length() > 0 && !gatheredSource.startsWith("${")) {
            this.gatheredSource = gatheredSource;
        }
    }

    public void setTargetFolder(String targetFolder) {
        if (targetFolder != null && targetFolder.length() > 0 && !targetFolder.startsWith("${")) {
            this.targetFolder = targetFolder;
        }
    }

    public void addConfiguredOutputFolder(OutputFileSet output) {
        String key = output.getLibrary();
        if (this.sourceMap.containsKey(key)) {
            Set set = (Set)this.sourceMap.get(key);
            set.add(output);
        } else {
            HashSet<OutputFileSet> set = new HashSet<OutputFileSet>();
            set.add(output);
            this.sourceMap.put(key, set);
        }
    }

    public static class OutputFileSet
    extends FileSet {
        private String library;

        public String getLibrary() {
            return this.library;
        }

        public void setLibrary(String value) {
            this.library = value;
        }

        public synchronized void setIncludes(String includes) {
            super.setIncludes(includes);
        }
    }
}

