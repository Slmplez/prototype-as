/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.commands.common.EventManager;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;

public class BaseLabelProvider
extends EventManager
implements IBaseLabelProvider {
    public void addListener(ILabelProviderListener listener) {
        this.addListenerObject(listener);
    }

    public void dispose() {
        this.clearListeners();
    }

    public boolean isLabelProperty(Object element, String property) {
        return true;
    }

    public void removeListener(ILabelProviderListener listener) {
        this.removeListenerObject(listener);
    }

    protected void fireLabelProviderChanged(final LabelProviderChangedEvent event) {
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final ILabelProviderListener l = (ILabelProviderListener)listeners[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.labelProviderChanged(event);
                }
            });
            ++i;
        }
    }
}

