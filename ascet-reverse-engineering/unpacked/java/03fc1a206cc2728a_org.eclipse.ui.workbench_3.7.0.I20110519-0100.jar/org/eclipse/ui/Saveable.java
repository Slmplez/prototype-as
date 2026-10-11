/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.InternalSaveable;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.progress.IJobRunnable;

public abstract class Saveable
extends InternalSaveable
implements IAdaptable {
    private Cursor waitCursor;
    private Cursor originalCursor;

    public boolean show(IWorkbenchPage page) {
        return false;
    }

    public abstract String getName();

    public abstract String getToolTipText();

    public abstract ImageDescriptor getImageDescriptor();

    public abstract void doSave(IProgressMonitor var1) throws CoreException;

    public abstract boolean isDirty();

    public abstract boolean equals(Object var1);

    public abstract int hashCode();

    public IJobRunnable doSave(IProgressMonitor monitor, IShellProvider shellProvider) throws CoreException {
        this.doSave(monitor);
        return null;
    }

    public void disableUI(IWorkbenchPart[] parts, boolean closing) {
        int i = 0;
        while (i < parts.length) {
            IWorkbenchPart workbenchPart = parts[i];
            Composite paneComposite = (Composite)((PartSite)workbenchPart.getSite()).getPane().getControl();
            Control[] paneChildren = paneComposite.getChildren();
            Composite toDisable = (Composite)paneChildren[0];
            toDisable.setEnabled(false);
            if (this.waitCursor == null) {
                this.waitCursor = new Cursor((Device)workbenchPart.getSite().getWorkbenchWindow().getShell().getDisplay(), 1);
            }
            this.originalCursor = paneComposite.getCursor();
            paneComposite.setCursor(this.waitCursor);
            ++i;
        }
    }

    public void enableUI(IWorkbenchPart[] parts) {
        int i = 0;
        while (i < parts.length) {
            IWorkbenchPart workbenchPart = parts[i];
            Composite paneComposite = (Composite)((PartSite)workbenchPart.getSite()).getPane().getControl();
            Control[] paneChildren = paneComposite.getChildren();
            Composite toEnable = (Composite)paneChildren[0];
            paneComposite.setCursor(this.originalCursor);
            if (this.waitCursor != null && !this.waitCursor.isDisposed()) {
                this.waitCursor.dispose();
                this.waitCursor = null;
            }
            toEnable.setEnabled(true);
            ++i;
        }
    }

    public Object getAdapter(Class adapter) {
        return null;
    }
}

