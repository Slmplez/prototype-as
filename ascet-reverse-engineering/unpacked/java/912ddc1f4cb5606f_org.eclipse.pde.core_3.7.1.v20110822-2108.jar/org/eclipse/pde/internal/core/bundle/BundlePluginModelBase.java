/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core.bundle;

import java.io.InputStream;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.resources.IResource;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.IEditable;
import org.eclipse.pde.core.IEditableModel;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.plugin.IExtensions;
import org.eclipse.pde.core.plugin.IExtensionsModelFactory;
import org.eclipse.pde.core.plugin.IPluginAttribute;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginElement;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelFactory;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.ISharedExtensionsModel;
import org.eclipse.pde.internal.core.AbstractNLModel;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.PDEManager;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.plugin.PluginImport;
import org.eclipse.pde.internal.core.plugin.PluginLibrary;
import org.eclipse.pde.internal.core.text.plugin.PluginModelBase;

public abstract class BundlePluginModelBase
extends AbstractNLModel
implements IBundlePluginModelBase,
IPluginModelFactory {
    private static final long serialVersionUID = 1L;
    private IBundleModel fBundleModel;
    private ISharedExtensionsModel fExtensionsModel;
    private BundlePluginBase fBundlePluginBase;
    private IBuildModel fBuildModel;
    private BundleDescription fBundleDescription;

    public BundlePluginModelBase() {
        this.getPluginBase();
    }

    public IBundleModel getBundleModel() {
        return this.fBundleModel;
    }

    public IResource getUnderlyingResource() {
        return this.fBundleModel.getUnderlyingResource();
    }

    public ISharedExtensionsModel getExtensionsModel() {
        return this.fExtensionsModel;
    }

    public void dispose() {
        if (this.fBundleModel != null) {
            if (this.fBundlePluginBase != null) {
                this.fBundleModel.removeModelChangedListener(this.fBundlePluginBase);
            }
            this.fBundleModel.dispose();
            this.fBundleModel = null;
        }
        if (this.fExtensionsModel != null) {
            if (this.fBundlePluginBase != null) {
                this.fExtensionsModel.removeModelChangedListener(this.fBundlePluginBase);
            }
            this.fExtensionsModel.dispose();
            this.fExtensionsModel = null;
        }
        super.dispose();
    }

    public void save() {
        IEditableModel emodel;
        if (this.fBundleModel != null && this.fBundleModel instanceof IEditableModel && (emodel = (IEditableModel)((Object)this.fBundleModel)).isDirty()) {
            emodel.save();
        }
        if (this.fExtensionsModel != null && this.fExtensionsModel instanceof IEditableModel && (emodel = (IEditableModel)((Object)this.fExtensionsModel)).isDirty()) {
            emodel.save();
        }
    }

    public void setBundleModel(IBundleModel bundleModel) {
        if (this.fBundleModel != null && this.fBundlePluginBase != null) {
            this.fBundleModel.removeModelChangedListener(this.fBundlePluginBase);
        }
        this.fBundleModel = bundleModel;
        if (this.fBundleModel != null && this.fBundlePluginBase != null) {
            bundleModel.addModelChangedListener(this.fBundlePluginBase);
        }
    }

    public void setExtensionsModel(ISharedExtensionsModel extensionsModel) {
        if (this.fExtensionsModel != null && this.fBundlePluginBase != null) {
            this.fExtensionsModel.removeModelChangedListener(this.fBundlePluginBase);
        }
        this.fExtensionsModel = extensionsModel;
        if (this.fExtensionsModel instanceof PluginModelBase) {
            ((PluginModelBase)this.fExtensionsModel).setLocalization(this.getBundleLocalization());
        }
        if (extensionsModel != null && this.fBundlePluginBase != null) {
            extensionsModel.addModelChangedListener(this.fBundlePluginBase);
        }
    }

    public IBuildModel getBuildModel() {
        return this.fBuildModel;
    }

    public void setBuildModel(IBuildModel buildModel) {
        this.fBuildModel = buildModel;
    }

    public IPluginBase getPluginBase() {
        return this.getPluginBase(true);
    }

    public IExtensions getExtensions() {
        return this.getPluginBase();
    }

    public void fireModelChanged(IModelChangedEvent event) {
        super.fireModelChanged(event);
        Object[] objects = event.getChangedObjects();
        if (objects != null && objects.length > 0 && objects[0] instanceof IPluginImport) {
            this.fBundlePluginBase.updateImport((IPluginImport)objects[0]);
        }
    }

    public IPluginBase getPluginBase(boolean createIfMissing) {
        if (this.fBundlePluginBase == null && createIfMissing) {
            this.fBundlePluginBase = (BundlePluginBase)this.createPluginBase();
            if (this.fBundleModel != null) {
                this.fBundleModel.addModelChangedListener(this.fBundlePluginBase);
            }
            this.setLoaded(true);
        }
        return this.fBundlePluginBase;
    }

    public IExtensions getExtensions(boolean createIfMissing) {
        return this.getPluginBase(createIfMissing);
    }

    public IPluginModelFactory getPluginFactory() {
        return this;
    }

    public IExtensionsModelFactory getFactory() {
        if (this.fExtensionsModel != null) {
            return this.fExtensionsModel.getFactory();
        }
        return null;
    }

    public String getInstallLocation() {
        if (this.fBundleModel != null) {
            return this.fBundleModel.getInstallLocation();
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

    public URL getNLLookupLocation() {
        try {
            return new URL("file:" + this.getInstallLocation());
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    public boolean isEditable() {
        if (this.fBundleModel != null && !this.fBundleModel.isEditable()) {
            return false;
        }
        return this.fExtensionsModel == null || this.fExtensionsModel.isEditable();
    }

    public boolean isInSync() {
        return !(this.fBundleModel != null && !this.fBundleModel.isInSync() || this.fExtensionsModel != null && !this.fExtensionsModel.isInSync());
    }

    public boolean isValid() {
        return !(this.fBundleModel != null && !this.fBundleModel.isValid() || this.fExtensionsModel != null && !this.fExtensionsModel.isValid());
    }

    public void load() {
    }

    public void load(InputStream source, boolean outOfSync) {
    }

    public void reload(InputStream source, boolean outOfSync) {
    }

    public boolean isEnabled() {
        return true;
    }

    public void setEnabled(boolean enabled) {
    }

    protected void updateTimeStamp() {
    }

    public IPluginImport createImport() {
        PluginImport iimport = new PluginImport();
        iimport.setModel(this);
        iimport.setParent(this.getPluginBase());
        return iimport;
    }

    public IPluginImport createImport(String pluginId) {
        PluginImport iimport = new PluginImport(this, pluginId);
        iimport.setParent(this.getPluginBase());
        return iimport;
    }

    public IPluginLibrary createLibrary() {
        PluginLibrary library = new PluginLibrary();
        library.setModel(this);
        library.setParent(this.getPluginBase());
        return library;
    }

    public IPluginAttribute createAttribute(IPluginElement element) {
        if (this.fExtensionsModel != null) {
            return this.fExtensionsModel.getFactory().createAttribute(element);
        }
        return null;
    }

    public IPluginElement createElement(IPluginObject parent) {
        if (this.fExtensionsModel != null) {
            return this.fExtensionsModel.getFactory().createElement(parent);
        }
        return null;
    }

    public IPluginExtension createExtension() {
        if (this.fExtensionsModel != null) {
            return this.fExtensionsModel.getFactory().createExtension();
        }
        return null;
    }

    public IPluginExtensionPoint createExtensionPoint() {
        if (this.fExtensionsModel != null) {
            return this.fExtensionsModel.getFactory().createExtensionPoint();
        }
        return null;
    }

    public boolean isBundleModel() {
        return true;
    }

    public BundleDescription getBundleDescription() {
        return this.fBundleDescription;
    }

    public void setBundleDescription(BundleDescription description) {
        this.fBundleDescription = description;
    }

    public boolean isDirty() {
        if (this.fBundleModel != null && this.fBundleModel instanceof IEditable && ((IEditable)((Object)this.fBundleModel)).isDirty()) {
            return true;
        }
        return this.fExtensionsModel != null && this.fExtensionsModel instanceof IEditable && ((IEditable)((Object)this.fExtensionsModel)).isDirty();
    }

    public void save(PrintWriter writer) {
    }

    public void setDirty(boolean dirty) {
    }

    public String toString() {
        IPluginBase base = this.getPluginBase();
        if (base != null) {
            return base.getId();
        }
        return super.toString();
    }
}

