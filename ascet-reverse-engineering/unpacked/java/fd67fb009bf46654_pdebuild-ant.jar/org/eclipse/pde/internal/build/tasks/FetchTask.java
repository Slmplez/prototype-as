/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.pde.internal.build.AbstractScriptGenerator
 *  org.eclipse.pde.internal.build.BundleHelper
 *  org.eclipse.pde.internal.build.FetchScriptGenerator
 *  org.eclipse.pde.internal.build.Utils
 *  org.eclipse.pde.internal.build.ant.IScriptRunner
 *  org.eclipse.pde.internal.build.site.BuildTimeSiteFactory
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.File;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.FetchScriptGenerator;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.ant.IScriptRunner;
import org.eclipse.pde.internal.build.site.BuildTimeSiteFactory;
import org.eclipse.pde.internal.build.tasks.AntScriptRunner;
import org.eclipse.pde.internal.build.tasks.TaskHelper;

public class FetchTask
extends Task {
    protected FetchScriptGenerator generator = new FetchScriptGenerator();

    public void setChildren(boolean children) {
        this.generator.setFetchChildren(children);
    }

    public void setCvsPassFile(String cvsPassFileLocation) {
        this.generator.setCvsPassFileLocation(cvsPassFileLocation);
    }

    public void setDirectory(String directoryLocation) {
        this.generator.setDirectoryLocation(directoryLocation);
    }

    public void setElements(String element) {
        this.generator.setElement(element);
    }

    public void setFetchTag(String value) {
        this.generator.setFetchTagAsString(value);
    }

    public void setBuildDirectory(String buildDirectory) {
        this.generator.setWorkingDirectory(buildDirectory);
    }

    public void setInstall(String installLocation) {
        this.generator.setWorkingDirectory(installLocation);
    }

    public void execute() throws BuildException {
        try {
            BundleHelper.getDefault().setLog((Object)this);
            String fetchCache = this.getProject().getProperty("fetchCacheLocation");
            if (fetchCache != null && !fetchCache.startsWith("${")) {
                this.generator.setFetchCache(fetchCache);
            }
            this.generator.setScriptRunner((IScriptRunner)new AntScriptRunner(this));
            this.generator.generate();
            BundleHelper.getDefault().setLog(null);
        }
        catch (CoreException e) {
            throw new BuildException(TaskHelper.statusToString(e.getStatus(), null).toString());
        }
    }

    public void setRecursiveGeneration(boolean recursiveGeneration) {
        this.generator.setRecursiveGeneration(recursiveGeneration);
    }

    public void setPluginPath(String pluginPath) {
        this.generator.setPluginPath(Utils.getArrayFromString((String)pluginPath, (String)File.pathSeparator));
    }

    public void setConfigInfo(String configInfo) throws CoreException {
        AbstractScriptGenerator.setConfigInfo((String)configInfo);
    }

    public void setBaseLocation(String baseLocation) {
        BuildTimeSiteFactory.setInstalledBaseSite((String)baseLocation);
    }
}

