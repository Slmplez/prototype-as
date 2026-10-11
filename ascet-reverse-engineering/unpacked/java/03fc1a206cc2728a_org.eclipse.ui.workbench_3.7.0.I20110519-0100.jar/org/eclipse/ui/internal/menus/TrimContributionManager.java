/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal.menus;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.TrimLayout;
import org.eclipse.ui.internal.menus.ContributionRoot;
import org.eclipse.ui.internal.menus.InternalControlContribution;
import org.eclipse.ui.internal.menus.InternalMenuService;
import org.eclipse.ui.internal.menus.MenuLocationURI;
import org.eclipse.ui.internal.menus.WorkbenchMenuService;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.AbstractContributionFactory;

public class TrimContributionManager
extends ContributionManager {
    private String[] trimAreaURIs = new String[]{"toolbar:org.eclipse.ui.trim.command1", "toolbar:org.eclipse.ui.trim.command2", "toolbar:org.eclipse.ui.trim.vertical1", "toolbar:org.eclipse.ui.trim.vertical2", "toolbar:org.eclipse.ui.trim.status"};
    private int[] swtSides = new int[]{128, 128, 16384, 131072, 1024};
    private WorkbenchWindow wbWindow;
    TrimLayout layout;
    private InternalMenuService menuService;
    List contributedTrim = new ArrayList();
    List contributedLists = new ArrayList();
    private Set restrictionExpression;
    static /* synthetic */ Class class$0;

    public TrimContributionManager(WorkbenchWindow window) {
        this.wbWindow = window;
        this.layout = (TrimLayout)this.wbWindow.getShell().getLayout();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.menuService = (InternalMenuService)window.getService(clazz);
        this.restrictionExpression = this.wbWindow.getMenuRestrictions();
    }

    public void update(boolean force) {
        this.update(force, false);
    }

    public void update(boolean force, boolean hideTopTrim) {
        this.teardown();
        int i = 0;
        while (i < this.trimAreaURIs.length) {
            if (!hideTopTrim || this.swtSides[i] != 128) {
                List contribs = this.menuService.getAdditionsForURI(new MenuLocationURI(this.trimAreaURIs[i]));
                Iterator cacheIter = contribs.iterator();
                while (cacheIter.hasNext()) {
                    AbstractContributionFactory cache = (AbstractContributionFactory)cacheIter.next();
                    ContributionRoot ciList = new ContributionRoot(this.menuService, this.restrictionExpression, this, cache);
                    cache.createContributionItems(this.wbWindow, ciList);
                    IWindowTrim insertBefore = null;
                    MenuLocationURI uri = new MenuLocationURI(cache.getLocation());
                    String query = uri.getQuery();
                    String[] args = Util.split(query, '=');
                    if (args.length == 2) {
                        String relative = args[0];
                        String relId = args[1];
                        insertBefore = this.layout.getTrim(relId);
                        if ("after".equals(relative) && insertBefore != null) {
                            List areaTrim = this.layout.getAreaTrim(this.swtSides[i]);
                            Iterator iterator = areaTrim.iterator();
                            while (iterator.hasNext()) {
                                IWindowTrim trimElement = (IWindowTrim)iterator.next();
                                if (insertBefore != trimElement) continue;
                                insertBefore = iterator.hasNext() ? iterator.next() : null;
                            }
                        }
                    }
                    if (insertBefore == null && i == 0) {
                        insertBefore = this.layout.getTrim("org.eclipse.ui.internal.WorkbenchWindow.topBar");
                    }
                    this.contributedLists.add(ciList);
                    Iterator ciIter = ciList.getItems().iterator();
                    while (ciIter.hasNext()) {
                        IContributionItem ci = (IContributionItem)ciIter.next();
                        if (!(ci instanceof IToolBarContributionItem)) continue;
                        ToolBarTrimProxy tbProxy = new ToolBarTrimProxy(ci.getId(), this.wbWindow);
                        tbProxy.dock(this.swtSides[i]);
                        this.layout.addTrim(this.swtSides[i], tbProxy, insertBefore);
                        this.contributedTrim.add(tbProxy);
                    }
                }
            }
            ++i;
        }
    }

    private void teardown() {
        Iterator iter = this.contributedTrim.iterator();
        while (iter.hasNext()) {
            ToolBarTrimProxy proxy = (ToolBarTrimProxy)iter.next();
            this.layout.removeTrim(proxy);
            try {
                proxy.dispose();
            }
            catch (Throwable e) {
                IStatus status = null;
                status = e instanceof CoreException ? ((CoreException)e).getStatus() : StatusUtil.newStatus(4, "Internal plug-in widget delegate error on dispose.", e);
                StatusUtil.handleStatus(status, "widget delegate failed on dispose: id = " + proxy.getId(), 1);
            }
        }
        this.contributedTrim.clear();
        iter = this.contributedLists.iterator();
        while (iter.hasNext()) {
            ContributionRoot list = (ContributionRoot)iter.next();
            list.release();
        }
        this.contributedLists.clear();
    }

    public void dispose() {
        this.teardown();
    }

    public void updateLocations(List knownIds) {
    }

    private class ToolBarTrimProxy
    implements IWindowTrim {
        private String id;
        private String uriSpec;
        private WorkbenchMenuService menuService;
        private WorkbenchWindow wbw;
        private ToolBar tb = null;
        private ToolBarManager tbm = null;

        ToolBarTrimProxy(String id, WorkbenchWindow wbw) {
            this.id = id;
            this.uriSpec = "toolbar:" + id;
            this.wbw = wbw;
            IWorkbench iWorkbench = wbw.getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.menuService = (WorkbenchMenuService)iWorkbench.getService(clazz);
        }

        public void dock(int dropSide) {
            this.dispose();
            int orientation = 256;
            if (dropSide == 16384 || dropSide == 131072) {
                orientation = 512;
            }
            this.tbm = new ToolBarManager(0x800000 | orientation);
            this.menuService.populateContributionManager(this.wbw, TrimContributionManager.this.restrictionExpression, (ContributionManager)this.tbm, this.uriSpec, true);
            IContributionItem[] items = this.tbm.getItems();
            int i = 0;
            while (i < items.length) {
                if (items[i] instanceof InternalControlContribution) {
                    InternalControlContribution wbwcc = (InternalControlContribution)items[i];
                    wbwcc.setWorkbenchWindow(this.wbw);
                    wbwcc.setCurSide(dropSide);
                }
                ++i;
            }
            this.tb = this.tbm.createControl((Composite)this.wbw.getShell());
        }

        public Control getControl() {
            return this.tb;
        }

        public String getDisplayName() {
            return this.getId();
        }

        public int getHeightHint() {
            return -1;
        }

        public String getId() {
            return this.id;
        }

        public int getValidSides() {
            return 148608;
        }

        public int getWidthHint() {
            return -1;
        }

        public void handleClose() {
        }

        public boolean isCloseable() {
            return false;
        }

        public boolean isResizeable() {
            return false;
        }

        public void dispose() {
            if (this.tbm != null) {
                this.tbm.dispose();
                this.tbm.removeAll();
            }
        }
    }
}

