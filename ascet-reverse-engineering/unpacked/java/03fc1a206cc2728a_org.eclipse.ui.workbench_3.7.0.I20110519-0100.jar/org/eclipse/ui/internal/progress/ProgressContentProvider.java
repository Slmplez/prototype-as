/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.internal.progress.IProgressUpdateCollector;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressViewUpdater;

public abstract class ProgressContentProvider
implements IProgressUpdateCollector,
IStructuredContentProvider {
    private boolean canShowDebug = false;

    public ProgressContentProvider() {
        ProgressViewUpdater.getSingleton().addCollector(this);
    }

    public ProgressContentProvider(boolean debug) {
        this();
        this.canShowDebug = debug;
    }

    public Object[] getElements(Object inputElement) {
        return ProgressManager.getInstance().getRootElements(this.debug());
    }

    public void dispose() {
        ProgressViewUpdater.getSingleton().removeCollector(this);
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
    }

    public boolean debug() {
        if (!this.canShowDebug) {
            return false;
        }
        return ProgressViewUpdater.getSingleton().debug;
    }
}

