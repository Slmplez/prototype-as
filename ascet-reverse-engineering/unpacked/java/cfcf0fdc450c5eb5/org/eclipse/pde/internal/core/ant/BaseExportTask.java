/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.pde.internal.core.PDECoreMessages
 */
package org.eclipse.pde.internal.core.ant;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.pde.internal.core.PDECoreMessages;

public abstract class BaseExportTask
extends Task {
    protected String fDestination;
    protected String fZipFilename;
    protected boolean fToDirectory;
    protected boolean fUseJarFormat;
    protected boolean fExportSource;
    protected String fQualifier;
    protected boolean fAllowBinaryCycles;
    protected boolean fUseWorkspaceCompiledClasses;

    public void execute() throws BuildException {
        if (this.fDestination == null) {
            throw new BuildException("No destination is specified");
        }
        if (!this.fToDirectory && this.fZipFilename == null) {
            throw new BuildException("No zip file is specified");
        }
        Job job = this.getExportJob(PDECoreMessages.BaseExportTask_pdeExport);
        if (this.isAntRunner()) {
            try {
                job.schedule();
                job.join();
            }
            catch (InterruptedException interruptedException) {}
        } else {
            job.schedule(2000L);
        }
    }

    public void setExportType(String type) {
        this.fToDirectory = !"zip".equals(type);
    }

    public void setUseJARFormat(String useJarFormat) {
        this.fUseJarFormat = new Boolean(useJarFormat);
    }

    public void setExportSource(String doExportSource) {
        this.fExportSource = new Boolean(doExportSource);
    }

    public void setDestination(String destination) {
        this.fDestination = destination;
    }

    public void setFilename(String filename) {
        this.fZipFilename = filename;
    }

    public void setQualifier(String qualifier) {
        this.fQualifier = qualifier;
    }

    public void setAllowBinaryCycles(String allowBinaryCycles) {
        this.fAllowBinaryCycles = new Boolean(allowBinaryCycles);
    }

    public void setUseWorkspaceCompiledClasses(String useWorkspaceCompiledClasses) {
        this.fUseWorkspaceCompiledClasses = new Boolean(useWorkspaceCompiledClasses);
    }

    public boolean isAntRunner() {
        String[] args = Platform.getCommandLineArgs();
        int i = 0;
        while (i < args.length) {
            if (args[i].equals("-application")) {
                return args[i + 1].equals("org.eclipse.ant.core.antRunner");
            }
            ++i;
        }
        return false;
    }

    protected abstract Job getExportJob(String var1);
}

