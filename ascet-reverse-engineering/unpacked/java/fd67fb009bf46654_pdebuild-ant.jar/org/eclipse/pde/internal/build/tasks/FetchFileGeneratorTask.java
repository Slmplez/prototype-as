/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.pde.internal.build.AbstractScriptGenerator
 *  org.eclipse.pde.internal.build.BundleHelper
 *  org.eclipse.pde.internal.build.packager.FetchFileGenerator
 */
package org.eclipse.pde.internal.build.tasks;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.packager.FetchFileGenerator;
import org.eclipse.pde.internal.build.tasks.TaskHelper;

public class FetchFileGeneratorTask
extends Task {
    protected FetchFileGenerator fileFetcher = new FetchFileGenerator();

    public void setWorkingDirectory(String workingDirectory) {
        this.fileFetcher.setWorkingDirectory(workingDirectory);
    }

    public void setConfigInfo(String config) throws CoreException {
        AbstractScriptGenerator.setConfigInfo((String)config);
    }

    public void setContentFilter(String filter) {
        this.fileFetcher.setContentFilter(filter);
    }

    public void setComponentFilter(String components) {
        this.fileFetcher.setComponentFilter(components);
    }

    public void setMap(String mapLocation) {
        this.fileFetcher.setMapLocation(mapLocation);
    }

    public void execute() throws BuildException {
        try {
            BundleHelper.getDefault().setLog((Object)this);
            this.fileFetcher.generate();
            BundleHelper.getDefault().setLog(null);
        }
        catch (CoreException e) {
            throw new BuildException(TaskHelper.statusToString(e.getStatus(), null).toString());
        }
    }
}

