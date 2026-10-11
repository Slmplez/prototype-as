/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.quickaccess.PerspectiveProvider;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.statushandlers.StatusManager;

public class PerspectiveElement
extends QuickAccessElement {
    private final IPerspectiveDescriptor descriptor;

    PerspectiveElement(IPerspectiveDescriptor descriptor, PerspectiveProvider perspectiveProvider) {
        super(perspectiveProvider);
        this.descriptor = descriptor;
    }

    public void execute() {
        IWorkbench workbench = PlatformUI.getWorkbench();
        IWorkbenchWindow window = workbench.getActiveWorkbenchWindow();
        IWorkbenchPage activePage = window.getActivePage();
        if (activePage != null) {
            activePage.setPerspective(this.descriptor);
        } else {
            try {
                window.openPage(this.descriptor.getId(), ((Workbench)workbench).getDefaultPageInput());
            }
            catch (WorkbenchException e) {
                IStatus errorStatus = WorkbenchPlugin.newError(NLS.bind((String)WorkbenchMessages.Workbench_showPerspectiveError, (Object)this.descriptor.getLabel()), (Throwable)((Object)e));
                StatusManager.getManager().handle(errorStatus, 2);
            }
        }
    }

    public String getId() {
        return this.descriptor.getId();
    }

    public ImageDescriptor getImageDescriptor() {
        return this.descriptor.getImageDescriptor();
    }

    public String getLabel() {
        return this.descriptor.getLabel();
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.descriptor == null ? 0 : this.descriptor.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        PerspectiveElement other = (PerspectiveElement)obj;
        return !(this.descriptor == null ? other.descriptor != null : !this.descriptor.equals(other.descriptor));
    }
}

