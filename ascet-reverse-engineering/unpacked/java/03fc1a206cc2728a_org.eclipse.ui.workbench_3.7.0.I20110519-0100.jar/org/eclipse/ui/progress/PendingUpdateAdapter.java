/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.progress;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.model.IWorkbenchAdapter;

public class PendingUpdateAdapter
implements IWorkbenchAdapter,
IAdaptable {
    private boolean removed = false;
    static /* synthetic */ Class class$0;

    protected boolean isRemoved() {
        return this.removed;
    }

    protected void setRemoved(boolean removedValue) {
        this.removed = removedValue;
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this;
        }
        return null;
    }

    public Object[] getChildren(Object o) {
        return new Object[0];
    }

    public ImageDescriptor getImageDescriptor(Object object) {
        return null;
    }

    public String getLabel(Object o) {
        return ProgressMessages.PendingUpdateAdapter_PendingLabel;
    }

    public Object getParent(Object o) {
        return null;
    }

    public String toString() {
        return this.getLabel(null);
    }
}

