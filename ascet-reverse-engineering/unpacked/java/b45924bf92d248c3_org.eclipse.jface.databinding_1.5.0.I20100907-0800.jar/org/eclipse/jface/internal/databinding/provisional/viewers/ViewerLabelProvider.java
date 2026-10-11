/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.util.Policy
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ILabelProviderListener
 *  org.eclipse.jface.viewers.IViewerLabelProvider
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.jface.viewers.ViewerLabel
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.internal.databinding.provisional.viewers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.eclipse.core.databinding.util.Policy;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.IViewerLabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.ViewerLabel;
import org.eclipse.swt.graphics.Image;

public class ViewerLabelProvider
implements IViewerLabelProvider,
ILabelProvider {
    private List listeners = new ArrayList();

    public void updateLabel(ViewerLabel label, Object element) {
        label.setText(element.toString());
    }

    protected final void fireChangeEvent(Collection changes) {
        LabelProviderChangedEvent event = new LabelProviderChangedEvent((IBaseLabelProvider)this, changes.toArray());
        ILabelProviderListener[] listenerArray = this.listeners.toArray(new ILabelProviderListener[this.listeners.size()]);
        int i = 0;
        while (i < listenerArray.length) {
            ILabelProviderListener listener = listenerArray[i];
            try {
                listener.labelProviderChanged(event);
            }
            catch (Exception e) {
                Policy.getLog().log((IStatus)new Status(4, "org.eclipse.core.databinding", e.getLocalizedMessage(), (Throwable)e));
            }
            ++i;
        }
    }

    public final Image getImage(Object element) {
        ViewerLabel label = new ViewerLabel("", null);
        this.updateLabel(label, element);
        return label.getImage();
    }

    public final String getText(Object element) {
        ViewerLabel label = new ViewerLabel("", null);
        this.updateLabel(label, element);
        return label.getText();
    }

    public void addListener(ILabelProviderListener listener) {
        this.listeners.add(listener);
    }

    public void dispose() {
        this.listeners.clear();
    }

    public final boolean isLabelProperty(Object element, String property) {
        return true;
    }

    public void removeListener(ILabelProviderListener listener) {
        this.listeners.remove(listener);
    }
}

