/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core.exports;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.exports.FeatureExportInfo;
import org.eclipse.pde.internal.core.exports.FeatureExportOperation;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;

public abstract class FeatureBasedExportOperation
extends FeatureExportOperation {
    protected String fFeatureLocation;

    public FeatureBasedExportOperation(FeatureExportInfo info, String name) {
        super(info, name);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected IStatus run(IProgressMonitor monitor) {
        try {
            this.createDestination();
            monitor.beginTask("Exporting...", 33);
            featureID = "org.eclipse.pde.container.feature";
            this.fFeatureLocation = String.valueOf(this.fBuildTempLocation) + File.separator + featureID;
            config = new String[][]{{TargetPlatform.getOS(), TargetPlatform.getWS(), TargetPlatform.getOSArch(), TargetPlatform.getNL()}};
            this.createFeature(featureID, this.fFeatureLocation, config, false);
            this.createBuildPropertiesFile(this.fFeatureLocation);
            if (this.fInfo.useJarFormat) {
                this.createPostProcessingFiles();
            }
            status = this.testBuildWorkspaceBeforeExport((IProgressMonitor)new SubProgressMonitor(monitor, 10));
            this.doExport(featureID, null, this.fFeatureLocation, config, (IProgressMonitor)new SubProgressMonitor(monitor, 20));
            if (monitor.isCanceled()) {
                var6_8 = Status.CANCEL_STATUS;
                return var6_8;
            }
            var6_9 = status;
            return var6_9;
        }
        catch (IOException e) {
            var6_10 = new Status(4, "org.eclipse.pde.core", PDECoreMessages.FeatureBasedExportOperation_ProblemDuringExport, (Throwable)e);
            return var6_10;
        }
        catch (CoreException e) {
            var6_11 = e.getStatus();
            return var6_11;
        }
        catch (InvocationTargetException e) {
            var6_12 = new Status(4, "org.eclipse.pde.core", PDECoreMessages.FeatureBasedExportOperation_ProblemDuringExport, e.getTargetException());
            return var6_12;
        }
        finally {
            i = 0;
            ** while (i < this.fInfo.items.length)
        }
lbl-1000:
        // 1 sources

        {
            if (this.fInfo.items[i] instanceof IModel) {
                try {
                    this.deleteBuildFiles(this.fInfo.items[i]);
                }
                catch (CoreException e) {
                    PDECore.log(e);
                }
            }
            ++i;
            continue;
        }
lbl38:
        // 1 sources

        this.cleanup(null, (IProgressMonitor)new SubProgressMonitor(monitor, 3));
        monitor.done();
        return var6_10;
    }

    protected abstract void createPostProcessingFiles();

    protected String[] getPaths() {
        String[] paths = super.getPaths();
        String[] all = new String[paths.length + 1];
        all[0] = String.valueOf(this.fFeatureLocation) + File.separator + "feature.xml";
        System.arraycopy(paths, 0, all, 1, paths.length);
        return all;
    }

    private void createBuildPropertiesFile(String featureLocation) {
        File file = new File(featureLocation);
        if (!file.exists() || !file.isDirectory()) {
            file.mkdirs();
        }
        Properties prop = new Properties();
        prop.put("pde", "marker");
        if (this.fInfo.exportSource && this.fInfo.exportSourceBundle) {
            prop.put("individualSourceBundles", "true");
            Hashtable<String, String> environment = new Hashtable<String, String>(4);
            ((Dictionary)environment).put("osgi.os", TargetPlatform.getOS());
            ((Dictionary)environment).put("osgi.ws", TargetPlatform.getWS());
            ((Dictionary)environment).put("osgi.arch", TargetPlatform.getOSArch());
            ((Dictionary)environment).put("osgi.nl", TargetPlatform.getNL());
            int i = 0;
            while (i < this.fInfo.items.length) {
                if (this.fInfo.items[i] instanceof IFeatureModel) {
                    IFeature feature = ((IFeatureModel)this.fInfo.items[i]).getFeature();
                    prop.put("generate.feature@" + feature.getId() + ".source", feature.getId());
                } else {
                    BundleDescription bundle = null;
                    if (this.fInfo.items[i] instanceof IPluginModelBase) {
                        bundle = ((IPluginModelBase)this.fInfo.items[i]).getBundleDescription();
                    }
                    if (bundle == null && this.fInfo.items[i] instanceof BundleDescription) {
                        bundle = (BundleDescription)this.fInfo.items[i];
                    }
                    if (bundle != null && this.shouldAddPlugin(bundle, environment)) {
                        prop.put("generate.plugin@" + bundle.getSymbolicName() + ".source", bundle.getSymbolicName());
                    }
                }
                ++i;
            }
        }
        this.save(new File(file, "build.properties"), prop, "Marker File");
    }
}

