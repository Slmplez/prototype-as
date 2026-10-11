/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.types.FileSet
 *  org.apache.tools.ant.types.PatternSet$NameEntry
 *  org.apache.tools.ant.types.selectors.FilenameSelector
 *  org.apache.tools.ant.types.selectors.OrSelector
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.build.AbstractScriptGenerator
 *  org.eclipse.pde.internal.build.Utils
 *  org.eclipse.pde.internal.build.publisher.BuildPublisherApplication
 *  org.eclipse.pde.internal.build.publisher.FeatureRootAdvice
 *  org.eclipse.pde.internal.build.publisher.GatherFeatureAction
 *  org.eclipse.pde.internal.build.publisher.GatheringComputer
 */
package org.eclipse.pde.internal.build.publisher;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.types.FileSet;
import org.apache.tools.ant.types.PatternSet;
import org.apache.tools.ant.types.selectors.FilenameSelector;
import org.apache.tools.ant.types.selectors.OrSelector;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.publisher.AbstractPublisherTask;
import org.eclipse.pde.internal.build.publisher.BuildPublisherApplication;
import org.eclipse.pde.internal.build.publisher.FeatureRootAdvice;
import org.eclipse.pde.internal.build.publisher.GatherFeatureAction;
import org.eclipse.pde.internal.build.publisher.GatheringComputer;
import org.eclipse.pde.internal.build.tasks.TaskMessages;

public class GatherFeatureTask
extends AbstractPublisherTask {
    private String buildResultFolder = null;
    private String targetFolder = null;
    private String licenseDirectory = null;

    public void execute() throws BuildException {
        GatheringComputer computer = this.createFeatureComputer();
        GatherFeatureAction action = null;
        action = this.targetFolder == null ? new GatherFeatureAction(new File(this.baseDirectory), new File(this.buildResultFolder)) : new GatherFeatureAction(new File(this.baseDirectory), new File(this.targetFolder));
        action.setComputer(computer);
        this.setGroupId(action);
        FeatureRootAdvice advice = this.createRootAdvice();
        action.setRootAdvice(advice);
        PublisherInfo info = this.getPublisherInfo();
        info.addAdvice((IPublisherAdvice)advice);
        BuildPublisherApplication application = this.createPublisherApplication();
        application.addAction((IPublisherAction)action);
        try {
            application.run(info);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setGroupId(GatherFeatureAction action) {
        Properties properties = this.getBuildProperties();
        if (properties.containsKey("p2.group.id")) {
            action.setGroupId(properties.getProperty("p2.group.id"));
        }
    }

    protected GatheringComputer createFeatureComputer() {
        Properties properties = this.getBuildProperties();
        String include = (String)properties.get("bin.includes");
        String exclude = (String)properties.get("bin.excludes");
        if (include == null) {
            return null;
        }
        if (this.targetFolder != null) {
            FileSet fileSet = new FileSet();
            fileSet.setProject(this.getProject());
            fileSet.setDir(new File(this.targetFolder));
            PatternSet.NameEntry includeEntry = fileSet.createInclude();
            includeEntry.setName("**");
            String[] files = fileSet.getDirectoryScanner().getIncludedFiles();
            if (files != null && files.length > 0) {
                GatheringComputer computer = new GatheringComputer();
                computer.addFiles(this.targetFolder, files);
                return computer;
            }
            return null;
        }
        GatheringComputer computer = new GatheringComputer();
        if (this.licenseDirectory != null) {
            try {
                String licenseInclude = "**";
                String licenseExclude = "META-INF/";
                if (new File(this.licenseDirectory, "build.properties").exists()) {
                    Properties licenseProperties = AbstractScriptGenerator.readProperties((String)this.licenseDirectory, (String)"build.properties", (int)2);
                    licenseInclude = (String)licenseProperties.get("bin.includes");
                    licenseExclude = (String)licenseProperties.get("bin.excludes");
                }
                licenseExclude = String.valueOf(licenseExclude != null ? String.valueOf(licenseExclude) + "," : "") + ",.project,build.properties,feature.xml,feature.properties,feature_*.properties";
                FileSet licenseFiles = this.createFileSet(this.licenseDirectory, licenseInclude, licenseExclude);
                computer.addFiles(this.licenseDirectory, licenseFiles.getDirectoryScanner().getIncludedFiles());
            }
            catch (CoreException e) {
                e.printStackTrace();
            }
        }
        FileSet fileSet = this.createFileSet(this.buildResultFolder, include, exclude);
        computer.addFiles(this.buildResultFolder, fileSet.getDirectoryScanner().getIncludedFiles());
        return computer;
    }

    private FileSet createFileSet(String folder, String includes, String excludes) {
        FileSet fileSet = new FileSet();
        fileSet.setProject(this.getProject());
        fileSet.setDir(new File(folder));
        String[] splitIncludes = Utils.getArrayFromString((String)includes);
        int i = 0;
        while (i < splitIncludes.length) {
            String entry = splitIncludes[i];
            if (!entry.equals(".")) {
                PatternSet.NameEntry fileInclude = fileSet.createInclude();
                fileInclude.setName(entry);
            }
            ++i;
        }
        String[] splitExcludes = Utils.getArrayFromString((String)excludes);
        int i2 = 0;
        while (i2 < splitExcludes.length) {
            PatternSet.NameEntry fileExclude = fileSet.createExclude();
            fileExclude.setName(splitExcludes[i2]);
            ++i2;
        }
        return fileSet;
    }

    private String reorderConfig(String config) {
        String[] parsed = Utils.getArrayFromString((String)config, (String)".");
        return String.valueOf(parsed[1]) + '.' + parsed[0] + '.' + parsed[2];
    }

    protected FeatureRootAdvice createRootAdvice() {
        FeatureRootAdvice advice = new FeatureRootAdvice();
        Map configMap = Utils.processRootProperties((Properties)this.getBuildProperties(), (boolean)true);
        Iterator iterator = configMap.keySet().iterator();
        while (iterator.hasNext()) {
            String config = (String)iterator.next();
            Map rootMap = (Map)configMap.get(config);
            config = config.equals("!!COMMON!!") ? "" : this.reorderConfig(config);
            GatheringComputer computer = new GatheringComputer();
            HashMap<FileSet, String> configFileSets = new HashMap<FileSet, String>();
            ArrayList<String> permissionsKeys = new ArrayList<String>();
            Iterator rootEntries = rootMap.keySet().iterator();
            while (rootEntries.hasNext()) {
                String key = (String)rootEntries.next();
                if (key.startsWith("!!ROOT.PERMISSIONS!!")) {
                    permissionsKeys.add(key);
                    continue;
                }
                if (key.equals("!!ROOT.LINK!!")) {
                    advice.addLinks(config, (String)rootMap.get(key));
                    continue;
                }
                String fileList = (String)rootMap.get(key);
                String[] files = Utils.getArrayFromString((String)fileList, (String)",");
                int i = 0;
                while (i < files.length) {
                    String file = files[i];
                    String fromDir = this.baseDirectory;
                    File base = null;
                    if (file.startsWith("absolute:")) {
                        file = file.substring(9);
                        fromDir = null;
                    } else if (file.startsWith("license:")) {
                        if (this.licenseDirectory == null) {
                            throw new BuildException(NLS.bind((String)TaskMessages.error_licenseRootWithoutLicenseRef, (Object)this.baseDirectory));
                        }
                        file = file.substring(8);
                        fromDir = this.licenseDirectory;
                    }
                    if (file.startsWith("file:")) {
                        File temp = fromDir != null ? new File(fromDir, file.substring(5)) : new File(file.substring(5));
                        base = temp.getParentFile();
                        file = temp.getName();
                    } else {
                        base = fromDir != null ? new File(fromDir, file) : new File(file);
                        file = "**";
                    }
                    if (base.exists()) {
                        FileSet fileset = new FileSet();
                        fileset.setProject(this.getProject());
                        fileset.setDir(base);
                        PatternSet.NameEntry include = fileset.createInclude();
                        include.setName(file);
                        String[] found = fileset.getDirectoryScanner().getIncludedFiles();
                        int k = 0;
                        while (k < found.length) {
                            if (key.length() > 0) {
                                computer.addFile(String.valueOf(key) + "/" + found[k], new File(base, found[k]));
                            } else {
                                computer.addFile(base.getAbsolutePath(), found[k]);
                            }
                            ++k;
                        }
                        configFileSets.put(fileset, key);
                    }
                    ++i;
                }
            }
            if (computer.size() > 0) {
                advice.addRootfiles(config, computer);
            }
            Iterator p = permissionsKeys.iterator();
            while (p.hasNext()) {
                String permissionKey = (String)p.next();
                String permissionString = (String)rootMap.get(permissionKey);
                String[] names = Utils.getArrayFromString((String)permissionString);
                OrSelector orSelector = new OrSelector();
                orSelector.setProject(this.getProject());
                int i = 0;
                while (i < names.length) {
                    FilenameSelector nameSelector = new FilenameSelector();
                    nameSelector.setProject(this.getProject());
                    nameSelector.setName(names[i]);
                    orSelector.addFilename(nameSelector);
                    ++i;
                }
                Iterator s = configFileSets.keySet().iterator();
                while (s.hasNext()) {
                    FileSet fileset = (FileSet)s.next();
                    String finalFolder = (String)configFileSets.get(fileset);
                    String[] found = this.selectFiles(orSelector, finalFolder, fileset.getDirectoryScanner().getIncludedFiles());
                    if (found.length <= 0) continue;
                    advice.addPermissions(config, permissionKey.substring("!!ROOT.PERMISSIONS!!".length()), found);
                }
            }
        }
        return advice;
    }

    private String[] selectFiles(OrSelector selector, String folder, String[] files) {
        String prefix = folder.length() > 0 ? String.valueOf(folder) + '/' : "";
        ArrayList<String> result = new ArrayList<String>();
        int i = 0;
        while (i < files.length) {
            String finalLocation = String.valueOf(prefix) + files[i];
            if (selector.isSelected(null, finalLocation = finalLocation.replace('/', File.separatorChar).replace('\\', File.separatorChar), null)) {
                result.add(finalLocation.replace('\\', '/'));
            }
            ++i;
        }
        return result.toArray(new String[result.size()]);
    }

    public void setBuildResultFolder(String buildResultFolder) {
        if (buildResultFolder != null && buildResultFolder.length() > 0 && !buildResultFolder.startsWith("${")) {
            this.buildResultFolder = buildResultFolder;
        }
    }

    public void setTargetFolder(String targetFolder) {
        if (targetFolder != null && targetFolder.length() > 0 && !targetFolder.startsWith("${")) {
            this.targetFolder = targetFolder;
        }
    }

    public void setLicenseDirectory(String licenseDirectory) {
        if (licenseDirectory != null && licenseDirectory.length() > 0 && !licenseDirectory.startsWith("${")) {
            this.licenseDirectory = licenseDirectory;
        }
    }
}

