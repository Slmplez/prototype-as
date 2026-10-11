/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.menus.IWidget
 *  org.eclipse.swt.layout.RowLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.menus;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.menus.IWidget;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.internal.WindowTrimProxy;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.TrimLayout;
import org.eclipse.ui.internal.menus.MenuLocationURI;
import org.eclipse.ui.internal.menus.TrimAdditionCacheEntry;
import org.eclipse.ui.internal.menus.WorkbenchMenuService;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.menus.AbstractWorkbenchTrimWidget;
import org.eclipse.ui.menus.IWorkbenchWidget;

public class TrimBarManager2 {
    private MenuLocationURI[] trimAreaURIs = new MenuLocationURI[]{new MenuLocationURI("toolbar:command1"), new MenuLocationURI("toolbar:command2"), new MenuLocationURI("toolbar:vertical1"), new MenuLocationURI("toolbar:vertical2"), new MenuLocationURI("toolbar:status")};
    int[] swtSides = new int[]{128, 128, 16384, 131072, 1024};
    private STrimBuilder fTrimBuilder;
    private WorkbenchMenuService fMenuService;
    private boolean fDirty;
    static /* synthetic */ Class class$0;

    public TrimBarManager2(WorkbenchWindow window) {
        if (window == null) {
            throw new IllegalArgumentException("The window cannot be null");
        }
        IWorkbench iWorkbench = window.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.fMenuService = (WorkbenchMenuService)iWorkbench.getService(clazz);
        this.fTrimBuilder = new STrimBuilder(window);
        this.fDirty = true;
    }

    public void update(boolean force, boolean recursive, boolean hideTopTrim) {
        if (force || this.isDirty()) {
            this.fTrimBuilder.build(hideTopTrim);
            this.setDirty(false);
        }
    }

    public void update(boolean force, boolean recursive) {
        this.update(force, recursive, false);
    }

    private void setDirty(boolean isDirty) {
        this.fDirty = isDirty;
    }

    private boolean isDirty() {
        return this.fDirty;
    }

    public void updateLocations(List knownIds) {
        this.fTrimBuilder.updateLocations(knownIds);
    }

    public void dispose() {
        this.fMenuService = null;
        this.fTrimBuilder = null;
    }

    private class STrimBuilder {
        private WorkbenchWindow fWindow;
        private List curGroups = new ArrayList();
        private Map initializedTrim = new HashMap();

        public STrimBuilder(WorkbenchWindow window) {
            this.fWindow = window;
        }

        public void tearDown() {
            Iterator iter = this.curGroups.iterator();
            while (iter.hasNext()) {
                TrimWidgetProxy proxy = (TrimWidgetProxy)iter.next();
                this.fWindow.getTrimManager().removeTrim(proxy);
                try {
                    proxy.dispose();
                }
                catch (Throwable e) {
                    IStatus status = null;
                    status = e instanceof CoreException ? ((CoreException)e).getStatus() : StatusUtil.newStatus(4, "Internal plug-in widget delegate error on dispose.", e);
                    StatusUtil.handleStatus(status, "widget delegate failed on dispose: id = " + proxy.getId(), 1);
                }
            }
            this.curGroups.clear();
        }

        public void build(boolean hideTopTrim) {
            this.tearDown();
            int i = 0;
            while (i < TrimBarManager2.this.trimAreaURIs.length) {
                this.processAdditions(TrimBarManager2.this.trimAreaURIs[i], hideTopTrim);
                ++i;
            }
        }

        private void processAdditions(MenuLocationURI trimURI, boolean hideTopTrim) {
            List additions = TrimBarManager2.this.fMenuService.getAdditionsForURI(trimURI);
            if (additions.size() == 0) {
                return;
            }
            int swtSide = this.getSide(trimURI);
            if (swtSide == 128 && hideTopTrim) {
                return;
            }
            Iterator iterator = additions.iterator();
            while (iterator.hasNext()) {
                TrimAdditionCacheEntry trimEntry = (TrimAdditionCacheEntry)iterator.next();
                String groupId = trimEntry.getId();
                List widgets = trimEntry.getWidgets();
                if (widgets.size() == 0) continue;
                Composite grpComposite = new Composite((Composite)this.fWindow.getShell(), 0);
                grpComposite.setToolTipText(groupId);
                RowLayout rl = new RowLayout();
                rl.marginWidth = 0;
                rl.marginTop = 0;
                rl.marginRight = 0;
                rl.marginLeft = 0;
                rl.marginHeight = 0;
                rl.marginBottom = 0;
                grpComposite.setLayout((Layout)rl);
                boolean resizeable = false;
                Iterator widgetIter = widgets.iterator();
                while (widgetIter.hasNext()) {
                    IWorkbenchWidget widget = (IWorkbenchWidget)widgetIter.next();
                    IConfigurationElement widgetElement = trimEntry.getElement(widget);
                    if (widget == null) continue;
                    resizeable |= trimEntry.fillMajor(widgetElement);
                    this.renderTrim(grpComposite, widget, swtSide);
                }
                TrimWidgetProxy groupTrimProxy = new TrimWidgetProxy(widgets, swtSide, grpComposite, trimEntry, resizeable);
                this.curGroups.add(groupTrimProxy);
                this.placeGroup(groupTrimProxy);
            }
        }

        private void placeGroup(TrimWidgetProxy proxy) {
            List trim;
            int side = proxy.getSide();
            boolean atStart = proxy.isAtStart();
            IWindowTrim beforeMe = null;
            if (atStart && (trim = this.fWindow.getTrimManager().getAreaTrim(side)).size() > 0) {
                beforeMe = (IWindowTrim)trim.get(0);
            }
            try {
                proxy.dock(side);
                TrimLayout tl = (TrimLayout)this.fWindow.getShell().getLayout();
                tl.addTrim(side, proxy, beforeMe);
            }
            catch (Throwable e) {
                IStatus status = null;
                status = e instanceof CoreException ? ((CoreException)e).getStatus() : StatusUtil.newStatus(4, "Internal plug-in widget delegate error on dock.", e);
                StatusUtil.handleStatus(status, "widget delegate failed on dock: id = " + proxy.getId(), 1);
            }
        }

        private void renderTrim(Composite groupComposite, IWidget iw, int side) {
            if (iw != null) {
                if (iw instanceof IWorkbenchWidget && this.initializedTrim.get(iw) == null) {
                    IWorkbenchWidget iww = (IWorkbenchWidget)iw;
                    iww.init(this.fWindow);
                    this.initializedTrim.put(iw, iw);
                }
                if (iw instanceof AbstractWorkbenchTrimWidget) {
                    ((AbstractWorkbenchTrimWidget)iw).fill(groupComposite, -1, side);
                } else {
                    iw.fill(groupComposite);
                }
            }
        }

        private int getSide(MenuLocationURI uri) {
            int i = 0;
            while (i < TrimBarManager2.this.trimAreaURIs.length) {
                if (TrimBarManager2.this.trimAreaURIs[i].getRawString().equals(uri.getRawString())) {
                    return TrimBarManager2.this.swtSides[i];
                }
                ++i;
            }
            return 1024;
        }

        public void updateLocations(List knownIds) {
            Iterator iter = this.curGroups.iterator();
            while (iter.hasNext()) {
                TrimWidgetProxy proxy = (TrimWidgetProxy)iter.next();
                if (knownIds.contains(proxy.getId())) continue;
                this.placeGroup(proxy);
            }
        }
    }

    private class TrimWidgetProxy
    extends WindowTrimProxy {
        private List widgets;
        private TrimAdditionCacheEntry cacheEntry;
        private int originalSide;
        private int curSide;
        private Composite parent;

        public TrimWidgetProxy(List widgets, int side, Composite parent, TrimAdditionCacheEntry entry, boolean resizeable) {
            super((Control)parent, entry.getId(), entry.getId(), 148608, resizeable);
            this.widgets = widgets;
            this.curSide = side;
            this.originalSide = side;
            this.parent = parent;
            this.cacheEntry = entry;
        }

        public void dock(int newSide) {
            IWidget widget;
            Iterator iter = this.widgets.iterator();
            while (iter.hasNext()) {
                widget = (IWidget)iter.next();
                widget.dispose();
                this.cacheEntry.removeWidget(widget);
            }
            iter = this.widgets.iterator();
            while (iter.hasNext()) {
                widget = (IWorkbenchWidget)iter.next();
                if (widget instanceof AbstractWorkbenchTrimWidget) {
                    ((AbstractWorkbenchTrimWidget)widget).fill(this.parent, this.curSide, newSide);
                    continue;
                }
                widget.fill(this.parent);
            }
            this.curSide = newSide;
            this.parent.layout();
        }

        public void dispose() {
            Iterator iter = this.widgets.iterator();
            while (iter.hasNext()) {
                IWidget widget = (IWidget)iter.next();
                widget.dispose();
                this.cacheEntry.removeWidget(widget);
            }
            this.getControl().dispose();
        }

        public int getSide() {
            return this.originalSide;
        }

        public boolean isAtStart() {
            return this.cacheEntry.isAtStart();
        }
    }
}

