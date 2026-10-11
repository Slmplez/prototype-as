/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.views.log;

import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.internal.views.log.AbstractEntry;
import org.eclipse.ui.internal.views.log.LogSession;
import org.eclipse.ui.internal.views.log.LogView;

public class LogViewContentProvider
implements ITreeContentProvider {
    private LogView logView;

    public LogViewContentProvider(LogView logView) {
        this.logView = logView;
    }

    public void dispose() {
    }

    public Object[] getChildren(Object element) {
        return ((AbstractEntry)((Object)element)).getChildren(element);
    }

    public Object[] getElements(Object element) {
        return this.logView.getElements();
    }

    public Object getParent(Object element) {
        if (element instanceof LogSession) {
            return null;
        }
        return ((AbstractEntry)((Object)element)).getParent(element);
    }

    public boolean hasChildren(Object element) {
        return ((AbstractEntry)((Object)element)).getChildren(element).length > 0;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
    }

    public boolean isDeleted(Object element) {
        return false;
    }
}

