/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener4;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPartReference;

public class PerspectiveAdapter
implements IPerspectiveListener4 {
    public void perspectiveOpened(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
    }

    public void perspectiveClosed(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
    }

    public void perspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, IWorkbenchPartReference partRef, String changeId) {
    }

    public void perspectiveActivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
    }

    public void perspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, String changeId) {
    }

    public void perspectiveDeactivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
    }

    public void perspectiveSavedAs(IWorkbenchPage page, IPerspectiveDescriptor oldPerspective, IPerspectiveDescriptor newPerspective) {
    }

    public void perspectivePreDeactivate(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
    }
}

