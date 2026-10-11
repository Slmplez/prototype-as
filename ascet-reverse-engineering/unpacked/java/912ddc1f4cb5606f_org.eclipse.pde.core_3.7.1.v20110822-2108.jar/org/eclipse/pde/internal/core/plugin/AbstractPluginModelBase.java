/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.core.plugin.IExtensions;
import org.eclipse.pde.core.plugin.IExtensionsModelFactory;
import org.eclipse.pde.core.plugin.IPluginAttribute;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginElement;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.IPluginModelFactory;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.internal.core.AbstractNLModel;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.plugin.Fragment;
import org.eclipse.pde.internal.core.plugin.Plugin;
import org.eclipse.pde.internal.core.plugin.PluginAttribute;
import org.eclipse.pde.internal.core.plugin.PluginBase;
import org.eclipse.pde.internal.core.plugin.PluginElement;
import org.eclipse.pde.internal.core.plugin.PluginExtension;
import org.eclipse.pde.internal.core.plugin.PluginExtensionPoint;
import org.eclipse.pde.internal.core.plugin.PluginHandler;
import org.eclipse.pde.internal.core.plugin.PluginImport;
import org.eclipse.pde.internal.core.plugin.PluginLibrary;
import org.xml.sax.helpers.DefaultHandler;

public abstract class AbstractPluginModelBase
extends AbstractNLModel
implements IPluginModelBase,
IPluginModelFactory {
    private static final long serialVersionUID = 1L;
    protected IPluginBase fPluginBase;
    private boolean enabled;
    private BundleDescription fBundleDescription;
    protected boolean fAbbreviated;

    public abstract String getInstallLocation();

    public abstract IPluginBase createPluginBase();

    public IExtensions createExtensions() {
        return this.createPluginBase();
    }

    public IExtensionsModelFactory getFactory() {
        return this;
    }

    public IPluginModelFactory getPluginFactory() {
        return this;
    }

    public IPluginBase getPluginBase() {
        return this.getPluginBase(true);
    }

    public IPluginBase getPluginBase(boolean createIfMissing) {
        if (this.fPluginBase == null && createIfMissing) {
            this.fPluginBase = this.createPluginBase();
            this.setLoaded(true);
        }
        return this.fPluginBase;
    }

    public void load(InputStream stream, boolean outOfSync) throws CoreException {
        this.load(stream, outOfSync, new PluginHandler(this.fAbbreviated));
    }

    public void load(InputStream stream, boolean outOfSync, PluginHandler handler) {
        if (this.fPluginBase == null) {
            this.fPluginBase = this.createPluginBase();
        }
        ((PluginBase)this.fPluginBase).reset();
        this.setLoaded(false);
        try {
            SAXParser parser = this.getSaxParser();
            parser.parse(stream, (DefaultHandler)handler);
            ((PluginBase)this.fPluginBase).load(handler.getDocumentElement(), handler.getSchemaVersion());
            this.setLoaded(true);
            if (!outOfSync) {
                this.updateTimeStamp();
            }
        }
        catch (Exception e) {
            PDECore.log(e);
        }
    }

    public void load(BundleDescription description, PDEState state) {
        this.setBundleDescription(description);
        IPluginBase base = this.getPluginBase();
        if (base instanceof Plugin) {
            ((Plugin)base).load(description, state);
        } else {
            ((Fragment)base).load(description, state);
        }
        this.updateTimeStamp();
        this.setLoaded(true);
    }

    public IExtensions getExtensions() {
        return this.getPluginBase();
    }

    public IExtensions getExtensions(boolean createIfMissing) {
        return this.getPluginBase(createIfMissing);
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isFragmentModel() {
        return false;
    }

    public void reload(InputStream stream, boolean outOfSync) throws CoreException {
        this.load(stream, outOfSync);
        this.fireModelChanged(new ModelChangedEvent(this, 99, new Object[]{this.fPluginBase}, null));
    }

    public void setEnabled(boolean newEnabled) {
        this.enabled = newEnabled;
    }

    public String toString() {
        IPluginBase pluginBase = this.getPluginBase();
        if (pluginBase != null) {
            return pluginBase.getId();
        }
        return super.toString();
    }

    protected abstract void updateTimeStamp();

    public IPluginAttribute createAttribute(IPluginElement element) {
        PluginAttribute attribute = new PluginAttribute();
        attribute.setModel(this);
        attribute.setParent(element);
        return attribute;
    }

    public IPluginElement createElement(IPluginObject parent) {
        PluginElement element = new PluginElement();
        element.setModel(this);
        element.setParent(parent);
        return element;
    }

    public IPluginExtension createExtension() {
        PluginExtension extension = new PluginExtension();
        extension.setParent(this.getPluginBase());
        extension.setModel(this);
        return extension;
    }

    public IPluginExtensionPoint createExtensionPoint() {
        PluginExtensionPoint extensionPoint = new PluginExtensionPoint();
        extensionPoint.setModel(this);
        extensionPoint.setParent(this.getPluginBase());
        return extensionPoint;
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

    public boolean isValid() {
        if (!this.isLoaded()) {
            return false;
        }
        if (this.fPluginBase == null) {
            return false;
        }
        return this.fPluginBase.isValid();
    }

    public boolean isBundleModel() {
        return false;
    }

    public void dispose() {
        this.fBundleDescription = null;
        super.dispose();
    }

    public BundleDescription getBundleDescription() {
        return this.fBundleDescription;
    }

    public void setBundleDescription(BundleDescription description) {
        this.fBundleDescription = description;
    }
}

