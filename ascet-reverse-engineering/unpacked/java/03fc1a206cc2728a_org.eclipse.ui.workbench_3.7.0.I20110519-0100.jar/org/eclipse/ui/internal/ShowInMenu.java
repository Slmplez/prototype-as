/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.internal.services.WorkbenchSourceProvider;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.CommandContributionItem;
import org.eclipse.ui.menus.CommandContributionItemParameter;
import org.eclipse.ui.menus.IMenuService;
import org.eclipse.ui.menus.IWorkbenchContribution;
import org.eclipse.ui.part.IShowInSource;
import org.eclipse.ui.part.IShowInTargetList;
import org.eclipse.ui.part.ShowInContext;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.services.ISourceProviderService;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class ShowInMenu
extends ContributionItem
implements IWorkbenchContribution {
    private static final String NO_TARGETS_MSG = WorkbenchMessages.Workbench_showInNoTargets;
    private IWorkbenchWindow window;
    private Map actions = new HashMap(21);
    private boolean dirty = true;
    private IMenuListener menuListener = new IMenuListener(){

        public void menuAboutToShow(IMenuManager manager) {
            manager.markDirty();
            ShowInMenu.this.dirty = true;
        }
    };
    private IServiceLocator locator;
    private MenuManager currentManager;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    public ShowInMenu() {
    }

    public ShowInMenu(IWorkbenchWindow window, String id) {
        super(id);
        this.window = window;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public boolean isDynamic() {
        return true;
    }

    public void fill(Menu menu, int index) {
        if (this.getParent() instanceof MenuManager) {
            ((MenuManager)this.getParent()).addMenuListener(this.menuListener);
        }
        if (!this.dirty) {
            return;
        }
        if (this.currentManager != null && this.currentManager.getSize() > 0) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IMenuService service = (IMenuService)this.locator.getService(clazz);
            service.releaseContributions((ContributionManager)this.currentManager);
            this.currentManager.removeAll();
        }
        this.currentManager = new MenuManager();
        this.fillMenu((IMenuManager)this.currentManager);
        IContributionItem[] items = this.currentManager.getItems();
        if (items.length == 0) {
            MenuItem item = new MenuItem(menu, 0, index++);
            item.setText(NO_TARGETS_MSG);
            item.setEnabled(false);
        } else {
            int i = 0;
            while (i < items.length) {
                if (items[i].isVisible()) {
                    items[i].fill(menu, index++);
                }
                ++i;
            }
        }
        this.dirty = false;
    }

    private void fillMenu(IMenuManager innerMgr) {
        innerMgr.removeAll();
        IWorkbenchPart sourcePart = this.getSourcePart();
        if (sourcePart == null) {
            return;
        }
        ShowInContext context = this.getContext(sourcePart);
        if (context == null) {
            return;
        }
        if (context.getInput() == null && (context.getSelection() == null || context.getSelection().isEmpty())) {
            return;
        }
        IViewDescriptor[] viewDescs = this.getViewDescriptors(sourcePart);
        int i = 0;
        while (i < viewDescs.length) {
            IContributionItem cci = this.getContributionItem(viewDescs[i]);
            if (cci != null) {
                innerMgr.add(cci);
            }
            ++i;
        }
        if (innerMgr instanceof MenuManager) {
            Class<?> clazz;
            ISourceProviderService sps;
            ISourceProvider sp;
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("org.eclipse.ui.services.ISourceProviderService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((sp = (sps = (ISourceProviderService)this.locator.getService(clazz2)).getSourceProvider("showInSelection")) instanceof WorkbenchSourceProvider) {
                ((WorkbenchSourceProvider)sp).checkActivePart(true);
            }
            if ((clazz = class$0) == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IMenuService service = (IMenuService)this.locator.getService(clazz);
            service.populateContributionManager((ContributionManager)innerMgr, "popup:org.eclipse.ui.menus.showInMenu");
        }
    }

    private IContributionItem getContributionItem(IViewDescriptor viewDescriptor) {
        CommandContributionItemParameter parm = new CommandContributionItemParameter(this.locator, viewDescriptor.getId(), "org.eclipse.ui.navigate.showIn", 8);
        HashMap<String, String> targetId = new HashMap<String, String>();
        targetId.put("org.eclipse.ui.navigate.showIn.targetId", viewDescriptor.getId());
        parm.parameters = targetId;
        parm.label = viewDescriptor.getLabel();
        if (parm.label.length() > 0) {
            parm.mnemonic = parm.label.substring(0, 1);
        }
        parm.icon = viewDescriptor.getImageDescriptor();
        return new CommandContributionItem(parm);
    }

    private ArrayList getShowInPartIds(IWorkbenchPart sourcePart) {
        String[] partIds;
        IShowInTargetList targetList;
        ArrayList<String> targetIds = new ArrayList<String>();
        WorkbenchPage page = (WorkbenchPage)this.getWindow().getActivePage();
        if (page != null) {
            targetIds.addAll(page.getShowInPartIds());
        }
        if ((targetList = this.getShowInTargetList(sourcePart)) != null && (partIds = targetList.getShowInTargetIds()) != null) {
            int i = 0;
            while (i < partIds.length) {
                if (!targetIds.contains(partIds[i])) {
                    targetIds.add(partIds[i]);
                }
                ++i;
            }
        }
        page.sortShowInPartIds(targetIds);
        return targetIds;
    }

    private IWorkbenchPart getSourcePart() {
        IWorkbenchWindow window = this.getWindow();
        if (window == null) {
            return null;
        }
        IWorkbenchPage page = window.getActivePage();
        if (page != null) {
            return page.getActivePart();
        }
        return null;
    }

    private IShowInSource getShowInSource(IWorkbenchPart sourcePart) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.part.IShowInSource");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IShowInSource)Util.getAdapter(sourcePart, clazz);
    }

    private IShowInTargetList getShowInTargetList(IWorkbenchPart sourcePart) {
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.ui.part.IShowInTargetList");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IShowInTargetList)Util.getAdapter(sourcePart, clazz);
    }

    private ShowInContext getContext(IWorkbenchPart sourcePart) {
        IShowInSource source = this.getShowInSource(sourcePart);
        if (source != null) {
            ShowInContext context = source.getShowInContext();
            if (context != null) {
                return context;
            }
        } else if (sourcePart instanceof IEditorPart) {
            IEditorInput input = ((IEditorPart)sourcePart).getEditorInput();
            ISelectionProvider sp = sourcePart.getSite().getSelectionProvider();
            ISelection sel = sp == null ? null : sp.getSelection();
            return new ShowInContext(input, sel);
        }
        return null;
    }

    private IViewDescriptor[] getViewDescriptors(IWorkbenchPart sourcePart) {
        String srcId = sourcePart.getSite().getId();
        ArrayList ids = this.getShowInPartIds(sourcePart);
        ArrayList<IViewDescriptor> descs = new ArrayList<IViewDescriptor>();
        IViewRegistry reg = WorkbenchPlugin.getDefault().getViewRegistry();
        Iterator i = ids.iterator();
        while (i.hasNext()) {
            IViewDescriptor desc;
            String id = (String)i.next();
            if (id.equals(srcId) || (desc = reg.find(id)) == null) continue;
            descs.add(desc);
        }
        return descs.toArray(new IViewDescriptor[descs.size()]);
    }

    public void initialize(IServiceLocator serviceLocator) {
        this.locator = serviceLocator;
    }

    protected IWorkbenchWindow getWindow() {
        IWorkbench wb;
        if (this.locator == null) {
            return null;
        }
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IWorkbenchLocationService wls = (IWorkbenchLocationService)this.locator.getService(clazz);
        if (this.window == null) {
            this.window = wls.getWorkbenchWindow();
        }
        if (this.window == null && (wb = wls.getWorkbench()) != null) {
            this.window = wb.getActiveWorkbenchWindow();
        }
        return this.window;
    }

    public void dispose() {
        if (this.currentManager != null && this.currentManager.getSize() > 0) {
            IMenuService service;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((service = (IMenuService)this.locator.getService(clazz)) != null) {
                service.releaseContributions((ContributionManager)this.currentManager);
            }
            this.currentManager.removeAll();
            this.currentManager = null;
        }
        if (this.getParent() instanceof MenuManager) {
            ((MenuManager)this.getParent()).removeMenuListener(this.menuListener);
        }
        this.actions.clear();
        this.window = null;
        this.locator = null;
    }
}

