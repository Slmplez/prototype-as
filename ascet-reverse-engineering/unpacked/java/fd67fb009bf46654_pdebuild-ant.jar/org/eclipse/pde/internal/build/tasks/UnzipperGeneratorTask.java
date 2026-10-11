/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.eclipse.ant.core.Task
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.pde.internal.build.AbstractScriptGenerator
 *  org.eclipse.pde.internal.build.BundleHelper
 *  org.eclipse.pde.internal.build.packager.UnzipperGenerator
 */
package org.eclipse.pde.internal.build.tasks;

import org.apache.tools.ant.BuildException;
import org.eclipse.ant.core.Task;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.packager.UnzipperGenerator;
import org.eclipse.pde.internal.build.tasks.TaskHelper;

public class UnzipperGeneratorTask
extends Task {
    private UnzipperGenerator generator = new UnzipperGenerator();

    public void execute() throws BuildException {
        try {
            BundleHelper.getDefault().setLog((Object)this);
            this.generator.generate();
            BundleHelper.getDefault().setLog(null);
        }
        catch (CoreException e) {
            throw new BuildException(TaskHelper.statusToString(e.getStatus(), null).toString());
        }
    }

    public void setZipsDirectory(String filename) {
        this.generator.setDirectoryLocation(filename);
    }

    public void setWorkingDirectory(String installLocation) {
        this.generator.setWorkingDirectory(installLocation);
    }

    public void setConfigInfo(String configInfo) throws BuildException {
        try {
            AbstractScriptGenerator.setConfigInfo((String)configInfo);
        }
        catch (CoreException e) {
            throw new BuildException((Throwable)e);
        }
    }

    public void setPackagePropertyFile(String propertyFile) {
        this.generator.setPropertyFile(propertyFile);
    }
}

