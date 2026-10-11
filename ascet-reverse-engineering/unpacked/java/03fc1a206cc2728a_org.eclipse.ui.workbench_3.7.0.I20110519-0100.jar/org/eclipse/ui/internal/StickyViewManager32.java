/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.internal;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.IStickyViewManager;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.views.IStickyViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

class StickyViewManager32
implements IStickyViewManager {
    private Map stickyPerspectives = new HashMap(7);
    private IWorkbenchPage page;

    public StickyViewManager32(IWorkbenchPage page) {
        this.page = page;
    }

    public void remove(String pespectiveId) {
        this.stickyPerspectives.remove(pespectiveId);
    }

    public void add(String pespectiveId, Set stickyViewList) {
        this.stickyPerspectives.put(pespectiveId, stickyViewList);
    }

    public void clear() {
        this.stickyPerspectives.clear();
    }

    public void update(Perspective oldPersp, Perspective newPersp) {
        if (newPersp != null && oldPersp != null) {
            HashSet<String> activatedStickyViewsInThisPerspective = (HashSet<String>)this.stickyPerspectives.get(newPersp.getDesc().getId());
            if (activatedStickyViewsInThisPerspective == null) {
                activatedStickyViewsInThisPerspective = new HashSet<String>(7);
                this.stickyPerspectives.put(newPersp.getDesc().getId(), activatedStickyViewsInThisPerspective);
            }
            IViewRegistry viewReg = WorkbenchPlugin.getDefault().getViewRegistry();
            IStickyViewDescriptor[] stickyDescs = viewReg.getStickyViews();
            int i = 0;
            while (i < stickyDescs.length) {
                String viewId = stickyDescs[i].getId();
                try {
                    if (oldPersp.findView(viewId) != null && !activatedStickyViewsInThisPerspective.contains(viewId)) {
                        this.page.showView(viewId, null, 3);
                        activatedStickyViewsInThisPerspective.add(viewId);
                    }
                }
                catch (PartInitException e) {
                    WorkbenchPlugin.log("Could not open view :" + viewId, (IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 4, "Could not open view :" + viewId, (Throwable)((Object)e)));
                }
                ++i;
            }
        }
    }

    public void save(IMemento memento) {
        IMemento stickyState = memento.createChild("stickyState");
        Iterator itr = this.stickyPerspectives.entrySet().iterator();
        while (itr.hasNext()) {
            Map.Entry entry = itr.next();
            String perspectiveId = (String)entry.getKey();
            Set activatedViewIds = (Set)entry.getValue();
            IMemento perspectiveState = stickyState.createChild("perspective", perspectiveId);
            Iterator i = activatedViewIds.iterator();
            while (i.hasNext()) {
                String viewId = (String)i.next();
                perspectiveState.createChild("view", viewId);
            }
        }
    }

    public void restore(IMemento memento) {
        IMemento stickyState = memento.getChild("stickyState");
        if (stickyState != null) {
            IMemento[] stickyPerspMems = stickyState.getChildren("perspective");
            int i = 0;
            while (i < stickyPerspMems.length) {
                String perspectiveId = stickyPerspMems[i].getID();
                HashSet<String> viewState = new HashSet<String>(7);
                this.stickyPerspectives.put(perspectiveId, viewState);
                IMemento[] viewStateMementos = stickyPerspMems[i].getChildren("view");
                int j = 0;
                while (j < viewStateMementos.length) {
                    viewState.add(viewStateMementos[j].getID());
                    ++j;
                }
                ++i;
            }
        }
    }
}

