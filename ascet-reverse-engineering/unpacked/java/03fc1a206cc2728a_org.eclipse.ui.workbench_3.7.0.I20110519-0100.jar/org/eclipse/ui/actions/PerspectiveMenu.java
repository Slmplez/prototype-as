/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.actions;

import com.ibm.icu.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveRegistry;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.OpenPerspectiveAction;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.statushandlers.StatusManager;

public abstract class PerspectiveMenu
extends ContributionItem {
    protected static final String SHOW_PERSP_ID = "org.eclipse.ui.perspectives.showPerspective";
    private IPerspectiveRegistry reg;
    private IWorkbenchWindow window;
    private boolean showActive = false;
    private boolean dirty = true;
    private IMenuListener menuListener = new IMenuListener(){

        public void menuAboutToShow(IMenuManager manager) {
            manager.markDirty();
            PerspectiveMenu.this.dirty = true;
        }
    };
    private Comparator comparator = new Comparator(){
        private Collator collator = Collator.getInstance();

        public int compare(Object ob1, Object ob2) {
            IPerspectiveDescriptor d1 = (IPerspectiveDescriptor)ob1;
            IPerspectiveDescriptor d2 = (IPerspectiveDescriptor)ob2;
            return this.collator.compare(d1.getLabel(), d2.getLabel());
        }
    };
    private static final String NO_TARGETS_MSG = WorkbenchMessages.Workbench_showInNoPerspectives;
    private Map actions = new HashMap();
    private Action openOtherAction = new Action(WorkbenchMessages.PerspectiveMenu_otherItem){

        public final void runWithEvent(Event event) {
            PerspectiveMenu.this.runOther(new SelectionEvent(event));
        }
    };
    static /* synthetic */ Class class$0;

    public PerspectiveMenu(IWorkbenchWindow window, String id) {
        super(id);
        this.window = window;
        this.reg = window.getWorkbench().getPerspectiveRegistry();
        this.openOtherAction.setActionDefinitionId(SHOW_PERSP_ID);
    }

    public void fill(Menu menu, int index) {
        if (this.getParent() instanceof MenuManager) {
            ((MenuManager)this.getParent()).addMenuListener(this.menuListener);
        }
        if (!this.dirty) {
            return;
        }
        MenuManager manager = new MenuManager();
        this.fillMenu(manager);
        IContributionItem[] items = manager.getItems();
        if (items.length == 0) {
            MenuItem item = new MenuItem(menu, 0, index++);
            item.setText(NO_TARGETS_MSG);
            item.setEnabled(false);
        } else {
            int i = 0;
            while (i < items.length) {
                items[i].fill(menu, index++);
                ++i;
            }
        }
        this.dirty = false;
    }

    private final void fillMenu(MenuManager manager) {
        manager.removeAll();
        ArrayList persps = this.getPerspectiveItems();
        Collections.sort(persps, this.comparator);
        ArrayList<IAction> actions = new ArrayList<IAction>(persps.size());
        Iterator i = persps.iterator();
        while (i.hasNext()) {
            IPerspectiveDescriptor descriptor = (IPerspectiveDescriptor)i.next();
            IAction action = this.getAction(descriptor.getId());
            if (action == null || WorkbenchActivityHelper.filterItem(action)) continue;
            actions.add(action);
        }
        i = actions.iterator();
        while (i.hasNext()) {
            manager.add((IAction)i.next());
        }
        if (PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_OTHER_IN_PERSPECTIVE_MENU")) {
            if (actions.size() > 0) {
                manager.add((IContributionItem)new Separator());
            }
            manager.add((IAction)this.openOtherAction);
        }
    }

    private final IAction getAction(String id) {
        IPerspectiveDescriptor descriptor;
        Object action = (IAction)this.actions.get(id);
        if (action == null && (descriptor = this.reg.findPerspectiveWithId(id)) != null) {
            action = new OpenPerspectiveAction(this.window, descriptor, this);
            action.setActionDefinitionId(id);
            this.actions.put(id, action);
        }
        return action;
    }

    private ArrayList getPerspectiveShortcuts() {
        ArrayList<IPerspectiveDescriptor> list = new ArrayList<IPerspectiveDescriptor>();
        IWorkbenchPage page = this.window.getActivePage();
        if (page == null) {
            return list;
        }
        String[] ids = page.getPerspectiveShortcuts();
        int i = 0;
        while (i < ids.length) {
            IPerspectiveDescriptor desc = this.reg.findPerspectiveWithId(ids[i]);
            if (desc != null && !list.contains(desc) && !WorkbenchActivityHelper.filterItem(desc)) {
                list.add(desc);
            }
            ++i;
        }
        return list;
    }

    protected ArrayList getPerspectiveItems() {
        ArrayList shortcuts = this.getPerspectiveShortcuts();
        ArrayList list = new ArrayList(shortcuts.size());
        int size = shortcuts.size();
        int i = 0;
        while (i < size) {
            if (!list.contains(shortcuts.get(i))) {
                list.add(shortcuts.get(i));
            }
            ++i;
        }
        return list;
    }

    protected boolean getShowActive() {
        return this.showActive;
    }

    protected IWorkbenchWindow getWindow() {
        return this.window;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public boolean isDynamic() {
        return true;
    }

    protected abstract void run(IPerspectiveDescriptor var1);

    protected void run(IPerspectiveDescriptor desc, SelectionEvent event) {
        this.run(desc);
    }

    void runOther(SelectionEvent event) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService handlerService = (IHandlerService)this.window.getService(clazz);
        try {
            handlerService.executeCommand(SHOW_PERSP_ID, null);
        }
        catch (ExecutionException e) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Failed to execute org.eclipse.ui.perspectives.showPerspective", (Throwable)e));
        }
        catch (NotDefinedException e) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Failed to execute org.eclipse.ui.perspectives.showPerspective", (Throwable)e));
        }
        catch (NotEnabledException e) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Failed to execute org.eclipse.ui.perspectives.showPerspective", (Throwable)e));
        }
        catch (NotHandledException e) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Failed to execute org.eclipse.ui.perspectives.showPerspective", (Throwable)e));
        }
    }

    protected void showActive(boolean b) {
        this.showActive = b;
    }
}

