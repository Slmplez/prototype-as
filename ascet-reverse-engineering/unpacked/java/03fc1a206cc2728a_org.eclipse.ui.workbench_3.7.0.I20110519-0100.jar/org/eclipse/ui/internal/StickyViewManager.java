/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.ui.internal;

import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.IStickyViewManager;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.StickyViewManager32;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.views.IStickyViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class StickyViewManager
implements IStickyViewManager {
    private IWorkbenchPage page;

    public StickyViewManager(IWorkbenchPage page) {
        this.page = page;
    }

    public static IStickyViewManager getInstance(IWorkbenchPage page) {
        IPreferenceStore preferenceStore = PrefUtil.getAPIPreferenceStore();
        boolean enable32Behavior = preferenceStore.getBoolean("ENABLE_32_STICKY_CLOSE_BEHAVIOR");
        IStickyViewManager stickyViewMan = enable32Behavior ? new StickyViewManager32(page) : new StickyViewManager(page);
        return stickyViewMan;
    }

    public void add(String perspectiveId, Set stickyViewSet) {
    }

    public void clear() {
    }

    public void remove(String perspectiveId) {
    }

    public void restore(IMemento memento) {
    }

    public void save(IMemento memento) {
    }

    public void update(Perspective oldPersp, Perspective newPersp) {
        if (oldPersp == null || newPersp == null) {
            return;
        }
        IViewRegistry viewReg = WorkbenchPlugin.getDefault().getViewRegistry();
        IStickyViewDescriptor[] stickyDescs = viewReg.getStickyViews();
        IViewReference[] oldPerspectiveViewReferences = oldPersp.getViewReferences();
        IViewReference[] newPerspectiveViewReferences = newPersp.getViewReferences();
        int i = 0;
        while (i < stickyDescs.length) {
            String viewId = stickyDescs[i].getId();
            try {
                int j = 0;
                while (j < oldPerspectiveViewReferences.length) {
                    String oldViewId = oldPerspectiveViewReferences[j].getId();
                    if (viewId.equals(oldViewId)) {
                        String oldViewSecondaryId = oldPerspectiveViewReferences[j].getSecondaryId();
                        this.page.showView(viewId, oldViewSecondaryId, 3);
                    }
                    ++j;
                }
                j = 0;
                while (j < newPerspectiveViewReferences.length) {
                    String newViewSecondaryId;
                    String newViewId = newPerspectiveViewReferences[j].getId();
                    if (viewId.equals(newViewId) && oldPersp.findView(newViewId, newViewSecondaryId = newPerspectiveViewReferences[j].getSecondaryId()) == null) {
                        this.page.hideView(newPerspectiveViewReferences[j]);
                    }
                    ++j;
                }
            }
            catch (PartInitException e) {
                WorkbenchPlugin.log("Could not open view :" + viewId, (IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 4, "Could not open view :" + viewId, (Throwable)((Object)e)));
            }
            ++i;
        }
    }
}

