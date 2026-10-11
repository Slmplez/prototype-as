/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.core.IModelChangedListener;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.IModelChangeProviderExtension;
import org.eclipse.pde.internal.core.IModelChangedListenerFilter;
import org.xml.sax.SAXException;

public abstract class AbstractModel
extends PlatformObject
implements IModel,
IModelChangeProviderExtension,
Serializable {
    private static final long serialVersionUID = 1L;
    private transient List fListeners = Collections.synchronizedList(new ArrayList());
    private boolean fLoaded;
    protected boolean fDisposed;
    private long fTimestamp;
    private Exception fException;

    public void addModelChangedListener(IModelChangedListener listener) {
        this.fListeners.add(listener);
    }

    public void transferListenersTo(IModelChangeProviderExtension target, IModelChangedListenerFilter filter) {
        ArrayList<IModelChangedListener> removed = new ArrayList<IModelChangedListener>();
        int i = 0;
        while (i < this.fListeners.size()) {
            IModelChangedListener listener = (IModelChangedListener)this.fListeners.get(i);
            if (filter == null || filter.accept(listener)) {
                target.addModelChangedListener(listener);
                removed.add(listener);
            }
            ++i;
        }
        this.fListeners.removeAll(removed);
    }

    public void dispose() {
        this.fDisposed = true;
    }

    public void fireModelChanged(IModelChangedEvent event) {
        IModelChangedListener[] list = this.fListeners.toArray(new IModelChangedListener[this.fListeners.size()]);
        int i = 0;
        while (i < list.length) {
            IModelChangedListener listener = list[i];
            listener.modelChanged(event);
            ++i;
        }
    }

    public void fireModelObjectChanged(Object object, String property, Object oldValue, Object newValue) {
        this.fireModelChanged(new ModelChangedEvent(this, object, property, oldValue, newValue));
    }

    public String getResourceString(String key) {
        return key;
    }

    public IResource getUnderlyingResource() {
        return null;
    }

    protected boolean isInSync(File localFile) {
        return localFile.exists() && localFile.lastModified() == this.getTimeStamp();
    }

    public boolean isValid() {
        return !this.isDisposed() && this.isLoaded();
    }

    public final long getTimeStamp() {
        return this.fTimestamp;
    }

    protected abstract void updateTimeStamp();

    protected void updateTimeStamp(File localFile) {
        if (localFile.exists()) {
            this.fTimestamp = localFile.lastModified();
        }
    }

    public boolean isDisposed() {
        return this.fDisposed;
    }

    public boolean isLoaded() {
        return this.fLoaded;
    }

    public void setLoaded(boolean loaded) {
        this.fLoaded = loaded;
    }

    public void setException(Exception e) {
        this.fException = e;
    }

    public Exception getException() {
        return this.fException;
    }

    public void removeModelChangedListener(IModelChangedListener listener) {
        this.fListeners.remove(listener);
    }

    public void throwParseErrorsException(Throwable e) throws CoreException {
        Status status = new Status(4, "org.eclipse.pde.core", 0, "Error in the manifest file", e);
        throw new CoreException((IStatus)status);
    }

    protected SAXParser getSaxParser() throws ParserConfigurationException, SAXException, FactoryConfigurationError {
        return SAXParserFactory.newInstance().newSAXParser();
    }

    public boolean isReconcilingModel() {
        return false;
    }
}

