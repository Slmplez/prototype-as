/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.IPerspectiveRegistry;

public class PerspContentProvider
implements IStructuredContentProvider {
    public void dispose() {
    }

    public Object[] getElements(Object element) {
        if (element instanceof IPerspectiveRegistry) {
            return ((IPerspectiveRegistry)element).getPerspectives();
        }
        return null;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
    }
}

