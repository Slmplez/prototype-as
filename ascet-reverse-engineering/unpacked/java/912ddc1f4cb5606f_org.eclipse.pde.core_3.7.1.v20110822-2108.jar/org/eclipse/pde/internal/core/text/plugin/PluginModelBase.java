/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 */
package org.eclipse.pde.internal.core.text.plugin;

import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.plugin.IExtensions;
import org.eclipse.pde.core.plugin.IExtensionsModelFactory;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.IPluginModelFactory;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.PDEManager;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.XMLEditingModel;
import org.eclipse.pde.internal.core.text.plugin.FragmentNode;
import org.eclipse.pde.internal.core.text.plugin.PluginBaseNode;
import org.eclipse.pde.internal.core.text.plugin.PluginDocumentHandler;
import org.eclipse.pde.internal.core.text.plugin.PluginDocumentNodeFactory;
import org.eclipse.pde.internal.core.text.plugin.PluginNode;
import org.xml.sax.helpers.DefaultHandler;

public abstract class PluginModelBase
extends XMLEditingModel
implements IPluginModelBase,
IDocumentListener {
    private PluginBaseNode fPluginBase;
    private boolean fIsEnabled;
    private PluginDocumentHandler fHandler;
    private IPluginModelFactory fFactory = new PluginDocumentNodeFactory(this);
    private String fLocalization;
    private boolean fHasTriedToCreateModel;

    public PluginModelBase(IDocument document, boolean isReconciling) {
        super(document, isReconciling);
        document.addDocumentListener((IDocumentListener)this);
    }

    public IPluginBase createPluginBase(boolean isFragment) {
        if (isFragment) {
            this.fPluginBase = new FragmentNode();
            this.fPluginBase.setXMLTagName("fragment");
        } else {
            this.fPluginBase = new PluginNode();
            this.fPluginBase.setXMLTagName("plugin");
        }
        this.fPluginBase.setInTheModel(true);
        this.fPluginBase.setModel(this);
        return this.fPluginBase;
    }

    protected IWritable getRoot() {
        return this.getPluginBase();
    }

    public IPluginBase createPluginBase() {
        return this.createPluginBase(this.isFragmentModel());
    }

    public IBuildModel getBuildModel() {
        return null;
    }

    public IPluginBase getPluginBase() {
        return this.getPluginBase(true);
    }

    public IExtensions getExtensions() {
        return this.getPluginBase();
    }

    public IPluginBase getPluginBase(boolean createIfMissing) {
        if (!this.fLoaded && !this.fHasTriedToCreateModel && createIfMissing) {
            try {
                try {
                    this.createPluginBase();
                    this.load();
                }
                catch (CoreException coreException) {
                    this.fHasTriedToCreateModel = true;
                }
            }
            finally {
                this.fHasTriedToCreateModel = true;
            }
        }
        return this.fPluginBase;
    }

    public IExtensions getExtensions(boolean createIfMissing) {
        return this.getPluginBase(createIfMissing);
    }

    public boolean isEnabled() {
        return this.fIsEnabled;
    }

    public void setEnabled(boolean enabled) {
        this.fIsEnabled = enabled;
    }

    public IPluginModelFactory getPluginFactory() {
        return this.fFactory;
    }

    public URL getNLLookupLocation() {
        try {
            String installLocation = this.getInstallLocation();
            return installLocation == null ? null : new URL("file:" + installLocation);
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    public IExtensionsModelFactory getFactory() {
        return this.fFactory;
    }

    protected NLResourceHelper createNLResourceHelper() {
        URL[] locations = PDEManager.getNLLookupLocations(this);
        return locations.length == 0 ? null : new NLResourceHelper(this.fLocalization == null ? "plugin" : this.fLocalization, locations);
    }

    protected DefaultHandler createDocumentHandler(IModel model, boolean reconciling) {
        if (this.fHandler == null) {
            this.fHandler = new PluginDocumentHandler(this, reconciling);
        }
        return this.fHandler;
    }

    public IDocumentElementNode getLastErrorNode() {
        if (this.fHandler != null) {
            return this.fHandler.getLastErrorNode();
        }
        return null;
    }

    public void setLocalization(String localization) {
        this.fLocalization = localization;
    }

    public void dispose() {
        this.getDocument().removeDocumentListener((IDocumentListener)this);
        super.dispose();
    }

    public void documentChanged(DocumentEvent event) {
        this.fHasTriedToCreateModel = false;
    }

    public void documentAboutToBeChanged(DocumentEvent event) {
    }
}

