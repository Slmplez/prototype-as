/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.pde.internal.core.FeatureModelManager
 *  org.eclipse.pde.internal.core.PDECore
 *  org.eclipse.pde.internal.core.exports.FeatureExportInfo
 *  org.eclipse.pde.internal.core.exports.FeatureExportOperation
 *  org.eclipse.pde.internal.core.ifeature.IFeatureModel
 */
package org.eclipse.pde.internal.core.ant;

import java.io.File;
import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.pde.internal.core.FeatureModelManager;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ant.BaseExportTask;
import org.eclipse.pde.internal.core.exports.FeatureExportInfo;
import org.eclipse.pde.internal.core.exports.FeatureExportOperation;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;

public class FeatureExportTask
extends BaseExportTask {
    private IFeatureModel[] fFeatures = new IFeatureModel[0];

    protected Job getExportJob(String jobName) {
        FeatureExportInfo info = new FeatureExportInfo();
        info.toDirectory = this.fToDirectory;
        info.useJarFormat = this.fUseJarFormat;
        info.exportSource = this.fExportSource;
        info.zipFileName = this.fZipFilename;
        info.items = this.fFeatures;
        info.qualifier = this.fQualifier;
        info.allowBinaryCycles = this.fAllowBinaryCycles;
        info.useWorkspaceCompiledClasses = this.fUseWorkspaceCompiledClasses;
        if (!new File(this.fDestination).isAbsolute()) {
            File home = new File(this.getLocation().getFileName()).getParentFile();
            info.destinationDirectory = new File(home, this.fDestination).toString();
        } else {
            info.destinationDirectory = this.fDestination;
        }
        return new FeatureExportOperation(info, jobName);
    }

    public void setFeatures(String features) {
        StringTokenizer tok = new StringTokenizer(features, ",");
        FeatureModelManager manager = PDECore.getDefault().getFeatureModelManager();
        ArrayList<IFeatureModel> list = new ArrayList<IFeatureModel>();
        while (tok.hasMoreTokens()) {
            String id = tok.nextToken().trim();
            IFeatureModel model = manager.findFeatureModel(id);
            if (model == null) continue;
            list.add(model);
        }
        this.fFeatures = list.toArray(new IFeatureModel[list.size()]);
    }
}

