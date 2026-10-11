/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.bundle;

import java.io.InputStream;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IEditableModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.ISharedExtensionsModel;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.PDEManager;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.bundle.WorkspaceBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.plugin.WorkspaceExtensionsModel;
import org.eclipse.pde.internal.core.plugin.WorkspacePluginModelBase;

public abstract class WorkspaceBundlePluginModelBase
extends WorkspacePluginModelBase
implements IBundlePluginModelBase {
    private static final long serialVersionUID = 1L;
    private ISharedExtensionsModel fExtensionsModel = null;
    private IBundleModel fBundleModel = null;
    private IFile fPluginFile;

    public WorkspaceBundlePluginModelBase(IFile manifestFile, IFile pluginFile) {
        super(manifestFile, false);
        this.fPluginFile = pluginFile;
    }

    public abstract IPluginBase createPluginBase();

    public void load(InputStream stream, boolean outOfSync) throws CoreException {
        if (this.fPluginBase == null) {
            this.fPluginBase = this.createPluginBase();
        }
        if (this.fBundleModel == null) {
            this.fBundleModel = new WorkspaceBundleModel((IFile)this.getUnderlyingResource());
        }
        this.fBundleModel.load(stream, outOfSync);
    }

    public void save() {
        if (this.fExtensionsModel != null && this.fExtensionsModel.getExtensions().getExtensions().length > 0) {
            ((BundlePluginBase)this.fPluginBase).updateSingleton(true);
            if (((IEditableModel)((Object)this.fExtensionsModel)).isDirty()) {
                ((IEditableModel)((Object)this.fExtensionsModel)).save();
            }
        }
        if (this.fBundleModel != null && ((IEditableModel)((Object)this.fBundleModel)).isDirty()) {
            ((IEditableModel)((Object)this.fBundleModel)).save();
        }
    }

    public String getContents() {
        if (this.fBundleModel != null && this.fBundleModel instanceof WorkspaceBundleModel) {
            return ((WorkspaceBundleModel)this.fBundleModel).getContents();
        }
        return null;
    }

    public String getBundleLocalization() {
        IBundle bundle = this.fBundleModel != null ? this.fBundleModel.getBundle() : null;
        return bundle != null ? bundle.getLocalization() : "OSGI-INF/l10n/bundle";
    }

    protected NLResourceHelper createNLResourceHelper() {
        String localization = this.getBundleLocalization();
        return localization == null ? null : new NLResourceHelper(localization, PDEManager.getNLLookupLocations(this));
    }

    public IBundleModel getBundleModel() {
        if (this.fBundleModel == null) {
            IFile file = (IFile)this.getUnderlyingResource();
            this.fBundleModel = new WorkspaceBundleModel(file);
            if (file.exists()) {
                try {
                    this.fBundleModel.load();
                }
                catch (CoreException coreException) {}
            }
        }
        return this.fBundleModel;
    }

    public ISharedExtensionsModel getExtensionsModel() {
        if (this.fExtensionsModel == null && this.fPluginFile != null) {
            this.fExtensionsModel = new WorkspaceExtensionsModel(this.fPluginFile);
            ((WorkspaceExtensionsModel)this.fExtensionsModel).setBundleModel(this);
            ((WorkspaceExtensionsModel)this.fExtensionsModel).setEditable(this.isEditable());
            if (this.fPluginFile.exists()) {
                try {
                    this.fExtensionsModel.load();
                }
                catch (CoreException coreException) {}
            }
        }
        return this.fExtensionsModel;
    }

    public void setBundleModel(IBundleModel bundleModel) {
        if (bundleModel instanceof IEditableModel) {
            this.fBundleModel = bundleModel;
        }
    }

    public void setExtensionsModel(ISharedExtensionsModel extensionsModel) {
        if (extensionsModel instanceof IEditableModel) {
            this.fExtensionsModel = extensionsModel;
        }
    }
}

