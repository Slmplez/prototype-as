/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.pde.core.plugin.IPluginModelBase
 *  org.eclipse.pde.core.plugin.PluginRegistry
 *  org.eclipse.pde.internal.core.exports.FeatureExportInfo
 *  org.eclipse.pde.internal.core.exports.PluginExportOperation
 */
package org.eclipse.pde.internal.core.ant;

import java.io.File;
import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.ant.BaseExportTask;
import org.eclipse.pde.internal.core.exports.FeatureExportInfo;
import org.eclipse.pde.internal.core.exports.PluginExportOperation;

public class PluginExportTask
extends BaseExportTask {
    protected IPluginModelBase[] fPlugins = new IPluginModelBase[0];

    protected Job getExportJob(String jobName) {
        FeatureExportInfo info = new FeatureExportInfo();
        info.toDirectory = this.fToDirectory;
        info.useJarFormat = this.fUseJarFormat;
        info.exportSource = this.fExportSource;
        info.zipFileName = this.fZipFilename;
        info.items = this.fPlugins;
        info.qualifier = this.fQualifier;
        info.allowBinaryCycles = this.fAllowBinaryCycles;
        info.useWorkspaceCompiledClasses = this.fUseWorkspaceCompiledClasses;
        if (!new File(this.fDestination).isAbsolute()) {
            File home = new File(this.getLocation().getFileName()).getParentFile();
            info.destinationDirectory = new File(home, this.fDestination).toString();
        } else {
            info.destinationDirectory = this.fDestination;
        }
        return new PluginExportOperation(info, jobName);
    }

    public void setPlugins(String plugins) {
        StringTokenizer tok = new StringTokenizer(plugins, ",");
        ArrayList<IPluginModelBase> models = new ArrayList<IPluginModelBase>();
        while (tok.hasMoreTokens()) {
            String id = tok.nextToken().trim();
            IPluginModelBase model = PluginRegistry.findModel((String)id);
            if (model == null) continue;
            models.add(model);
        }
        this.fPlugins = models.toArray(new IPluginModelBase[models.size()]);
    }
}

