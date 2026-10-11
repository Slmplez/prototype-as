/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuCreator
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.MenuAdapter
 *  org.eclipse.swt.events.MenuEvent
 *  org.eclipse.swt.events.MenuListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.MenuAdapter;
import org.eclipse.swt.events.MenuEvent;
import org.eclipse.swt.events.MenuListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.NavigationHistory;
import org.eclipse.ui.internal.NavigationHistoryEntry;
import org.eclipse.ui.internal.PageEventAction;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;

public class NavigationHistoryAction
extends PageEventAction {
    private boolean recreateMenu;
    private boolean forward;
    private Menu historyMenu;
    private int MAX_HISTORY_LENGTH = 9;

    private void setMenu(Menu menu) {
        this.historyMenu = menu;
    }

    private void initMenu() {
        this.historyMenu.addMenuListener((MenuListener)new MenuAdapter(){

            public void menuShown(MenuEvent e) {
                if (NavigationHistoryAction.this.recreateMenu) {
                    Menu m = (Menu)e.widget;
                    MenuItem[] items = m.getItems();
                    int i = 0;
                    while (i < items.length) {
                        items[i].dispose();
                        ++i;
                    }
                    NavigationHistoryAction.this.fillMenu(m);
                }
            }
        });
    }

    private void fillMenu(Menu menu) {
        IWorkbenchPage page = this.getWorkbenchWindow().getActivePage();
        if (page == null) {
            return;
        }
        final NavigationHistory history = (NavigationHistory)this.getWorkbenchWindow().getActivePage().getNavigationHistory();
        NavigationHistoryEntry[] entries = this.forward ? history.getForwardEntries() : history.getBackwardEntries();
        int[] entriesCount = new int[entries.length];
        int i = 0;
        while (i < entriesCount.length) {
            entriesCount[i] = 1;
            ++i;
        }
        entries = this.collapseEntries(entries, entriesCount);
        i = 0;
        while (i < entries.length) {
            if (i > this.MAX_HISTORY_LENGTH) break;
            String text = entries[i].getHistoryText();
            if (text != null) {
                MenuItem item = new MenuItem(menu, 0);
                item.setData((Object)entries[i]);
                if (entriesCount[i] > 1) {
                    text = NLS.bind((String)WorkbenchMessages.NavigationHistoryAction_locations, (Object)text, (Object)new Integer(entriesCount[i]));
                }
                item.setText(text);
                item.addSelectionListener((SelectionListener)new SelectionAdapter(){

                    public void widgetSelected(SelectionEvent e) {
                        history.shiftCurrentEntry((NavigationHistoryEntry)e.widget.getData(), NavigationHistoryAction.this.forward);
                    }
                });
            }
            ++i;
        }
        this.recreateMenu = false;
    }

    public void dispose() {
        super.dispose();
        if (this.historyMenu != null) {
            int i = 0;
            while (i < this.historyMenu.getItemCount()) {
                MenuItem menuItem = this.historyMenu.getItem(i);
                menuItem.dispose();
                ++i;
            }
            this.historyMenu.dispose();
            this.historyMenu = null;
        }
    }

    public NavigationHistoryAction(IWorkbenchWindow window, boolean forward) {
        super("", window);
        ISharedImages sharedImages = window.getWorkbench().getSharedImages();
        if (forward) {
            this.setText(WorkbenchMessages.NavigationHistoryAction_forward_text);
            this.setToolTipText(WorkbenchMessages.NavigationHistoryAction_forward_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(this, "org.eclipse.ui.navigation_history_forward");
            this.setImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_FORWARD"));
            this.setDisabledImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_FORWARD_DISABLED"));
            this.setActionDefinitionId("org.eclipse.ui.navigate.forwardHistory");
        } else {
            this.setText(WorkbenchMessages.NavigationHistoryAction_backward_text);
            this.setToolTipText(WorkbenchMessages.NavigationHistoryAction_backward_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(this, "org.eclipse.ui.navigation_history_backward");
            this.setImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_BACK"));
            this.setDisabledImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_BACK_DISABLED"));
            this.setActionDefinitionId("org.eclipse.ui.navigate.backwardHistory");
        }
        this.setEnabled(false);
        this.forward = forward;
        this.setMenuCreator(new MenuCreator());
    }

    public void pageClosed(IWorkbenchPage page) {
        super.pageClosed(page);
        this.setEnabled(false);
    }

    private NavigationHistoryEntry[] collapseEntries(NavigationHistoryEntry[] entries, int[] entriesCount) {
        ArrayList<NavigationHistoryEntry> allEntries = new ArrayList<NavigationHistoryEntry>(Arrays.asList(entries));
        NavigationHistoryEntry previousEntry = null;
        int i = -1;
        Iterator<NavigationHistoryEntry> iter = allEntries.iterator();
        while (iter.hasNext()) {
            String text;
            NavigationHistoryEntry entry = iter.next();
            if (previousEntry != null && (text = previousEntry.getHistoryText()) != null && text.equals(entry.getHistoryText()) && previousEntry.editorInfo == entry.editorInfo) {
                iter.remove();
                int n = i;
                entriesCount[n] = entriesCount[n] + 1;
                continue;
            }
            previousEntry = entry;
            ++i;
        }
        entries = new NavigationHistoryEntry[allEntries.size()];
        return allEntries.toArray(entries);
    }

    public void pageActivated(IWorkbenchPage page) {
        super.pageActivated(page);
        NavigationHistory nh = (NavigationHistory)page.getNavigationHistory();
        if (this.forward) {
            nh.setForwardAction(this);
        } else {
            nh.setBackwardAction(this);
        }
    }

    public void run() {
        if (this.getWorkbenchWindow() == null) {
            return;
        }
        IWorkbenchPage page = this.getActivePage();
        if (page != null) {
            NavigationHistory nh = (NavigationHistory)page.getNavigationHistory();
            if (this.forward) {
                nh.forward();
            } else {
                nh.backward();
            }
            this.recreateMenu = true;
        }
    }

    public void update() {
        WorkbenchPage page = (WorkbenchPage)this.getActivePage();
        if (page == null) {
            return;
        }
        NavigationHistory history = (NavigationHistory)page.getNavigationHistory();
        if (this.forward) {
            this.setEnabled(history.canForward());
            NavigationHistoryEntry[] entries = history.getForwardEntries();
            if (entries.length > 0) {
                NavigationHistoryEntry entry = entries[0];
                String text = NLS.bind((String)WorkbenchMessages.NavigationHistoryAction_forward_toolTipName, (Object)entry.getHistoryText());
                this.setToolTipText(text);
            } else {
                this.setToolTipText(WorkbenchMessages.NavigationHistoryAction_forward_toolTip);
            }
        } else {
            this.setEnabled(history.canBackward());
            NavigationHistoryEntry[] entries = history.getBackwardEntries();
            if (entries.length > 0) {
                NavigationHistoryEntry entry = entries[0];
                String text = NLS.bind((String)WorkbenchMessages.NavigationHistoryAction_backward_toolTipName, (Object)entry.getHistoryText());
                this.setToolTipText(text);
            } else {
                this.setToolTipText(WorkbenchMessages.NavigationHistoryAction_backward_toolTip);
            }
        }
        this.recreateMenu = true;
    }

    private class MenuCreator
    implements IMenuCreator {
        private MenuCreator() {
        }

        public void dispose() {
        }

        public Menu getMenu(Menu parent) {
            NavigationHistoryAction.this.setMenu(new Menu(parent));
            NavigationHistoryAction.this.fillMenu(NavigationHistoryAction.this.historyMenu);
            NavigationHistoryAction.this.initMenu();
            return NavigationHistoryAction.this.historyMenu;
        }

        public Menu getMenu(Control parent) {
            NavigationHistoryAction.this.setMenu(new Menu(parent));
            NavigationHistoryAction.this.fillMenu(NavigationHistoryAction.this.historyMenu);
            NavigationHistoryAction.this.initMenu();
            return NavigationHistoryAction.this.historyMenu;
        }
    }
}

