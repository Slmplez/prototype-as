/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.text;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.jface.text.IDocument;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.core.IModelChangedListener;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.IModelChangeProviderExtension;
import org.eclipse.pde.internal.core.IModelChangedListenerFilter;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.text.IEditingModel;
import org.eclipse.pde.internal.core.text.IModelTextChangeListener;

public abstract class AbstractEditingModel
extends PlatformObject
implements IEditingModel,
IModelChangeProviderExtension {
    private ArrayList fListeners = new ArrayList();
    protected boolean fReconciling;
    protected boolean fInSync = true;
    protected boolean fLoaded = false;
    protected boolean fDisposed;
    protected long fTimestamp;
    private transient NLResourceHelper fNLResourceHelper;
    private IDocument fDocument;
    private boolean fDirty;
    private String fCharset;
    private IResource fUnderlyingResource;
    private String fInstallLocation;
    private boolean fStale;

    public AbstractEditingModel(IDocument document, boolean isReconciling) {
        this.fDocument = document;
        this.fReconciling = isReconciling;
    }

    public void dispose() {
        if (this.fNLResourceHelper != null) {
            this.fNLResourceHelper.dispose();
            this.fNLResourceHelper = null;
        }
        this.fDisposed = true;
        this.fListeners.clear();
    }

    public String getResourceString(String key) {
        if (key == null || key.length() == 0) {
            return "";
        }
        return this.getNLResourceHelper() == null ? key : this.getNLResourceHelper().getResourceString(key);
    }

    protected abstract NLResourceHelper createNLResourceHelper();

    public NLResourceHelper getNLResourceHelper() {
        if (this.fNLResourceHelper == null) {
            this.fNLResourceHelper = this.createNLResourceHelper();
        }
        return this.fNLResourceHelper;
    }

    public boolean isDisposed() {
        return this.fDisposed;
    }

    public boolean isEditable() {
        return this.fReconciling;
    }

    public boolean isLoaded() {
        return this.fLoaded;
    }

    public void setLoaded(boolean loaded) {
        this.fLoaded = loaded;
    }

    public boolean isInSync() {
        return this.fInSync;
    }

    public boolean isValid() {
        return this.isLoaded();
    }

    public final long getTimeStamp() {
        return this.fTimestamp;
    }

    public final void load() throws CoreException {
        try {
            this.load(this.getInputStream(this.getDocument()), false);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {}
    }

    public final void reload(InputStream source, boolean outOfSync) throws CoreException {
        this.load(source, outOfSync);
        this.fireModelChanged(new ModelChangedEvent(this, 99, new Object[]{this}, null));
    }

    public boolean isReconcilingModel() {
        return this.fReconciling;
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    public final void reconciled(IDocument document) {
        if (this.isReconcilingModel()) {
            try {
                if (this.isStale()) {
                    this.adjustOffsets(document);
                    this.setStale(false);
                } else {
                    this.reload(this.getInputStream(document), false);
                }
            }
            catch (UnsupportedEncodingException unsupportedEncodingException) {
            }
            catch (CoreException coreException) {}
            if (this.isDirty()) {
                this.setDirty(false);
            }
        }
    }

    public abstract void adjustOffsets(IDocument var1) throws CoreException;

    protected InputStream getInputStream(IDocument document) throws UnsupportedEncodingException {
        return new BufferedInputStream(new ByteArrayInputStream(document.get().getBytes(this.getCharset())));
    }

    public String getCharset() {
        return this.fCharset != null ? this.fCharset : "UTF-8";
    }

    public void setCharset(String charset) {
        this.fCharset = charset;
    }

    public void addModelChangedListener(IModelChangedListener listener) {
        if (!this.fListeners.contains(listener)) {
            this.fListeners.add(listener);
        }
    }

    public void transferListenersTo(IModelChangeProviderExtension target, IModelChangedListenerFilter filter) {
        List oldList = (List)this.fListeners.clone();
        int i = 0;
        while (i < oldList.size()) {
            IModelChangedListener listener = (IModelChangedListener)oldList.get(i);
            if (filter == null || filter.accept(listener)) {
                target.addModelChangedListener(listener);
                this.fListeners.remove(listener);
            }
            ++i;
        }
    }

    public void fireModelChanged(IModelChangedEvent event) {
        if (event.getChangeType() == 3 && event.getOldValue() != null && event.getOldValue().equals(event.getNewValue())) {
            return;
        }
        this.setDirty(event.getChangeType() != 99);
        int i = 0;
        while (i < this.fListeners.size()) {
            ((IModelChangedListener)this.fListeners.get(i)).modelChanged(event);
            ++i;
        }
    }

    public void fireModelObjectChanged(Object object, String property, Object oldValue, Object newValue) {
        this.fireModelChanged(new ModelChangedEvent(this, object, property, oldValue, newValue));
    }

    public void removeModelChangedListener(IModelChangedListener listener) {
        this.fListeners.remove(listener);
    }

    public boolean isDirty() {
        return this.fDirty;
    }

    public void save(PrintWriter writer) {
    }

    public void setDirty(boolean dirty) {
        this.fDirty = dirty;
    }

    public boolean isStale() {
        return this.fStale;
    }

    public void setStale(boolean stale) {
        this.fStale = stale;
    }

    public IResource getUnderlyingResource() {
        return this.fUnderlyingResource;
    }

    public void setUnderlyingResource(IResource resource) {
        this.fUnderlyingResource = resource;
    }

    public String getInstallLocation() {
        if (this.fInstallLocation == null && this.fUnderlyingResource != null) {
            IPath path = this.fUnderlyingResource.getProject().getLocation();
            return path != null ? path.addTrailingSeparator().toString() : null;
        }
        return this.fInstallLocation;
    }

    public void setInstallLocation(String location) {
        this.fInstallLocation = location;
    }

    public IModelTextChangeListener getLastTextChangeListener() {
        int i = this.fListeners.size() - 1;
        while (i >= 0) {
            Object obj = this.fListeners.get(i);
            if (obj instanceof IModelTextChangeListener) {
                return (IModelTextChangeListener)obj;
            }
            --i;
        }
        return null;
    }
}

