/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.swt.events.MenuAdapter
 *  org.eclipse.swt.events.MenuEvent
 *  org.eclipse.swt.events.MenuListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal.actions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.events.MenuAdapter;
import org.eclipse.swt.events.MenuEvent;
import org.eclipse.swt.events.MenuListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkbenchWindowActionDelegate;
import org.eclipse.ui.IWorkbenchWindowPulldownDelegate2;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.WorkingSetRegistry;

public abstract class AbstractWorkingSetPulldownDelegate
implements IWorkbenchWindowActionDelegate,
IWorkbenchWindowPulldownDelegate2 {
    private Menu menubarMenu;
    private Menu toolbarMenu;
    private ISelection selection;
    private IWorkbenchWindow window;

    public void dispose() {
        if (this.menubarMenu != null) {
            this.menubarMenu.dispose();
            this.menubarMenu = null;
        }
        if (this.toolbarMenu != null) {
            this.toolbarMenu.dispose();
            this.toolbarMenu = null;
        }
    }

    public Menu getMenu(Control parent) {
        if (this.toolbarMenu != null) {
            this.toolbarMenu.dispose();
        }
        this.toolbarMenu = new Menu(parent);
        this.initMenu(this.toolbarMenu);
        return this.toolbarMenu;
    }

    public Menu getMenu(Menu parent) {
        if (this.menubarMenu != null) {
            this.menubarMenu.dispose();
        }
        this.menubarMenu = new Menu(parent);
        this.initMenu(this.menubarMenu);
        return this.menubarMenu;
    }

    private void initMenu(Menu menu) {
        menu.addMenuListener((MenuListener)new MenuAdapter(){

            public void menuShown(MenuEvent e) {
                Menu m = (Menu)e.widget;
                MenuItem[] items = m.getItems();
                int i = 0;
                while (i < items.length) {
                    items[i].dispose();
                    ++i;
                }
                AbstractWorkingSetPulldownDelegate.this.fillMenu(m);
            }
        });
    }

    protected abstract void fillMenu(Menu var1);

    protected IWorkingSet[][] splitSets() {
        IWorkingSet[] allSets = this.getWindow().getWorkbench().getWorkingSetManager().getWorkingSets();
        HashMap<String, ArrayList<IWorkingSet>> map = new HashMap<String, ArrayList<IWorkingSet>>();
        WorkingSetRegistry registry = WorkbenchPlugin.getDefault().getWorkingSetRegistry();
        int i = 0;
        while (i < allSets.length) {
            String setType = allSets[i].getId();
            if (!WorkbenchActivityHelper.filterItem(registry.getWorkingSetDescriptor(setType))) {
                ArrayList<IWorkingSet> setsOfType = (ArrayList<IWorkingSet>)map.get(setType);
                if (setsOfType == null) {
                    setsOfType = new ArrayList<IWorkingSet>();
                    map.put(setType, setsOfType);
                }
                setsOfType.add(allSets[i]);
            }
            ++i;
        }
        IWorkingSet[][] typedSets = new IWorkingSet[map.keySet().size()][];
        int i2 = 0;
        Iterator iter = map.keySet().iterator();
        while (iter.hasNext()) {
            List setsOfType = (List)map.get(iter.next());
            typedSets[i2] = new IWorkingSet[setsOfType.size()];
            setsOfType.toArray(typedSets[i2++]);
        }
        return typedSets;
    }

    public void init(IWorkbenchWindow window) {
        this.window = window;
    }

    protected IWorkbenchWindow getWindow() {
        return this.window;
    }

    public void selectionChanged(IAction action, ISelection selection) {
        this.selection = selection;
    }

    protected ISelection getSelection() {
        return this.selection;
    }
}

