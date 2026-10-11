/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.Project
 *  org.eclipse.equinox.internal.p2.jarprocessor.unsigner.UnsignCommand
 *  org.eclipse.internal.provisional.equinox.p2.jarprocessor.IProcessStep
 *  org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessor
 *  org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor
 *  org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor$Options
 */
package org.eclipse.equinox.internal.p2.jarprocessor.ant;

import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.util.HashSet;
import java.util.List;
import java.util.Properties;
import org.apache.tools.ant.Project;
import org.eclipse.equinox.internal.p2.jarprocessor.ant.AntSignCommand;
import org.eclipse.equinox.internal.p2.jarprocessor.unsigner.UnsignCommand;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.IProcessStep;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessor;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor;

public class AntBasedProcessorExecutor
extends JarProcessorExecutor {
    private final Project project;
    private final Properties signArguments;
    private final String antTaskName;
    private List inputFiles;
    private HashSet filterSet = null;
    private FileFilter baseFilter = null;

    public AntBasedProcessorExecutor(Properties signArguments, Project project, String antTaskName) {
        this.signArguments = signArguments;
        this.project = project;
        this.antTaskName = antTaskName;
    }

    protected FileFilter createFileFilter(JarProcessorExecutor.Options options) {
        this.baseFilter = super.createFileFilter(options);
        if (this.inputFiles == null || this.inputFiles.size() == 0) {
            return this.baseFilter;
        }
        this.filterSet = new HashSet();
        this.filterSet.addAll(this.inputFiles);
        return new FileFilter(){

            public boolean accept(File pathname) {
                return AntBasedProcessorExecutor.this.getFilterSet().contains(pathname);
            }
        };
    }

    protected HashSet getFilterSet() {
        return this.filterSet;
    }

    protected void processDirectory(File input, FileFilter filter, boolean verbose, JarProcessor processor, Properties packProperties) throws FileNotFoundException {
        if (this.filterSet != null && this.filterSet.contains(input)) {
            File[] files = input.listFiles();
            int i = 0;
            while (i < files.length) {
                if (files[i].isDirectory() || this.baseFilter.accept(files[i])) {
                    this.filterSet.add(files[i]);
                }
                ++i;
            }
        }
        super.processDirectory(input, filter, verbose, processor, packProperties);
    }

    public void addSignStep(JarProcessor processor, Properties properties, JarProcessorExecutor.Options options) {
        if (this.signArguments.get("unsign") != null) {
            processor.addProcessStep((IProcessStep)new UnsignCommand(properties, options.signCommand, options.verbose));
        }
        if (this.signArguments.get("sign") != null) {
            processor.addProcessStep((IProcessStep)new AntSignCommand(properties, this.signArguments, this.project, this.antTaskName, options.signCommand, options.verbose));
        }
    }

    public void setInputFiles(List inputFiles) {
        this.inputFiles = inputFiles;
    }
}

