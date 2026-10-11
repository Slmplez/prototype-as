/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.target;

import java.io.File;
import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.target.AbstractBundleContainer;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;

public class DirectoryBundleContainer
extends AbstractBundleContainer {
    public static final String TYPE = "Directory";
    private String fPath;

    public DirectoryBundleContainer(String path) {
        this.fPath = path;
    }

    public String getLocation(boolean resolve) throws CoreException {
        if (resolve) {
            return this.getDirectory().toString();
        }
        return this.fPath;
    }

    public String getType() {
        return TYPE;
    }

    protected IResolvedBundle[] resolveBundles(ITargetDefinition definition, IProgressMonitor monitor) throws CoreException {
        File dir = this.getDirectory();
        if (dir.isDirectory()) {
            File site = this.getSite(dir);
            File[] files = site.listFiles();
            SubMonitor localMonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.DirectoryBundleContainer_0, (int)files.length);
            ArrayList<IResolvedBundle> bundles = new ArrayList<IResolvedBundle>(files.length);
            int i = 0;
            while (i < files.length) {
                if (localMonitor.isCanceled()) {
                    return new IResolvedBundle[0];
                }
                try {
                    IResolvedBundle rb = this.generateBundle(files[i]);
                    if (rb != null) {
                        bundles.add(rb);
                    }
                }
                catch (CoreException coreException) {}
                localMonitor.worked(1);
                ++i;
            }
            localMonitor.done();
            return bundles.toArray(new IResolvedBundle[bundles.size()]);
        }
        throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.DirectoryBundleContainer_1, (Object)dir.toString())));
    }

    protected IFeatureModel[] resolveFeatures(ITargetDefinition definition, IProgressMonitor monitor) throws CoreException {
        if (definition instanceof TargetDefinition) {
            return ((TargetDefinition)definition).getFeatureModels(this.getLocation(false), monitor);
        }
        return new IFeatureModel[0];
    }

    protected File getDirectory() throws CoreException {
        String path = this.resolveVariables(this.fPath);
        return new File(path);
    }

    public boolean isContentEqual(AbstractBundleContainer container) {
        if (container instanceof DirectoryBundleContainer) {
            DirectoryBundleContainer dbc = (DirectoryBundleContainer)container;
            return this.fPath.equals(dbc.fPath);
        }
        return false;
    }

    public String toString() {
        return "Directory " + this.fPath;
    }

    private File getSite(File root) {
        File file = new File(root, "plugins");
        if (file.exists()) {
            return file;
        }
        return root;
    }
}

