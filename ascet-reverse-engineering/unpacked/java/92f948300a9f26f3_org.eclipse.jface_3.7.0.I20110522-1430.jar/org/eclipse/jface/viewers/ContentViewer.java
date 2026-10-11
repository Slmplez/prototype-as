/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.internal.InternalPolicy;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Control;

public abstract class ContentViewer
extends Viewer {
    private IContentProvider contentProvider = null;
    private Object input = null;
    private IBaseLabelProvider labelProvider = null;
    private final ILabelProviderListener labelProviderListener = new ILabelProviderListener(){
        private boolean logWhenDisposed = true;

        public void labelProviderChanged(LabelProviderChangedEvent event) {
            Control control = ContentViewer.this.getControl();
            if (control == null || control.isDisposed()) {
                if (this.logWhenDisposed) {
                    String message = "Ignored labelProviderChanged notification because control is diposed. This indicates a potential memory leak.";
                    if (!InternalPolicy.DEBUG_LOG_LABEL_PROVIDER_NOTIFICATIONS_WHEN_DISPOSED) {
                        this.logWhenDisposed = false;
                        message = String.valueOf(message) + " This is only logged once per viewer instance, but similar calls will still be ignored.";
                    }
                    Policy.getLog().log((IStatus)new Status(2, "org.eclipse.jface", message, (Throwable)new RuntimeException()));
                }
                return;
            }
            ContentViewer.this.handleLabelProviderChanged(event);
        }
    };

    protected ContentViewer() {
    }

    public IContentProvider getContentProvider() {
        return this.contentProvider;
    }

    public Object getInput() {
        return this.input;
    }

    public IBaseLabelProvider getLabelProvider() {
        if (this.labelProvider == null) {
            this.labelProvider = new LabelProvider();
        }
        return this.labelProvider;
    }

    protected void handleDispose(DisposeEvent event) {
        if (this.contentProvider != null) {
            this.contentProvider.inputChanged(this, this.getInput(), null);
            this.contentProvider.dispose();
            this.contentProvider = null;
        }
        if (this.labelProvider != null) {
            this.labelProvider.removeListener(this.labelProviderListener);
            this.labelProvider.dispose();
            this.labelProvider = null;
        }
        this.input = null;
    }

    protected void handleLabelProviderChanged(LabelProviderChangedEvent event) {
        this.labelProviderChanged();
    }

    protected void hookControl(Control control) {
        control.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent event) {
                ContentViewer.this.handleDispose(event);
            }
        });
    }

    protected void labelProviderChanged() {
        this.refresh();
    }

    public void setContentProvider(IContentProvider contentProvider) {
        Assert.isNotNull((Object)contentProvider);
        IContentProvider oldContentProvider = this.contentProvider;
        this.contentProvider = contentProvider;
        if (oldContentProvider != null) {
            Object currentInput = this.getInput();
            oldContentProvider.inputChanged(this, currentInput, null);
            oldContentProvider.dispose();
            contentProvider.inputChanged(this, null, currentInput);
            this.refresh();
        }
    }

    public void setInput(Object input) {
        Control control = this.getControl();
        if (control == null || control.isDisposed()) {
            throw new IllegalStateException("Need an underlying widget to be able to set the input.(Has the widget been disposed?)");
        }
        Assert.isTrue((this.getContentProvider() != null ? 1 : 0) != 0, (String)"ContentViewer must have a content provider when input is set.");
        Object oldInput = this.getInput();
        this.contentProvider.inputChanged(this, oldInput, input);
        this.input = input;
        this.inputChanged(this.input, oldInput);
    }

    public void setLabelProvider(IBaseLabelProvider labelProvider) {
        IBaseLabelProvider oldProvider = this.labelProvider;
        if (labelProvider == oldProvider) {
            return;
        }
        if (oldProvider != null) {
            oldProvider.removeListener(this.labelProviderListener);
        }
        this.labelProvider = labelProvider;
        if (labelProvider != null) {
            labelProvider.addListener(this.labelProviderListener);
        }
        this.refresh();
        if (oldProvider != null) {
            this.internalDisposeLabelProvider(oldProvider);
        }
    }

    void internalDisposeLabelProvider(IBaseLabelProvider oldProvider) {
        oldProvider.dispose();
    }
}

