/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuCreator
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.commands.ActionHandler
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.core.commands.IHandler;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.commands.ActionHandler;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.ActiveShellExpression;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.FilteredPreferenceDialog;
import org.eclipse.ui.internal.dialogs.PreferenceHistoryEntry;

class PreferencePageHistory {
    private ToolBarManager historyToolbar;
    private List history = new ArrayList();
    private int historyIndex = -1;
    private final FilteredPreferenceDialog dialog;
    private Set activations = new HashSet();
    static /* synthetic */ Class class$0;

    public PreferencePageHistory(FilteredPreferenceDialog dialog) {
        this.dialog = dialog;
    }

    private PreferenceHistoryEntry getHistoryEntry(int index) {
        if (index >= 0 && index < this.history.size()) {
            return (PreferenceHistoryEntry)this.history.get(index);
        }
        return null;
    }

    public void addHistoryEntry(PreferenceHistoryEntry entry) {
        if (this.historyIndex == -1 || !this.history.get(this.historyIndex).equals(entry)) {
            this.history.subList(this.historyIndex + 1, this.history.size()).clear();
            this.history.add(entry);
            ++this.historyIndex;
            this.updateHistoryControls();
        }
    }

    private void jumpToHistory(int index) {
        if (index >= 0 && index < this.history.size()) {
            this.historyIndex = index;
            this.dialog.setCurrentPageId(this.getHistoryEntry(index).getId());
        }
        this.updateHistoryControls();
    }

    private void updateHistoryControls() {
        this.historyToolbar.update(false);
        IContributionItem[] items = this.historyToolbar.getItems();
        int i = 0;
        while (i < items.length) {
            items[i].update("enabled");
            items[i].update("toolTipText");
            ++i;
        }
    }

    public ToolBar createHistoryControls(ToolBar historyBar, ToolBarManager manager) {
        this.historyToolbar = manager;
        abstract class HistoryNavigationAction
        extends Action
        implements IMenuCreator {
            private Menu lastMenu;
            protected static final int MAX_ENTRIES = 5;

            HistoryNavigationAction() {
                super("", 4);
            }

            public IMenuCreator getMenuCreator() {
                return this;
            }

            public void dispose() {
                if (this.lastMenu != null) {
                    this.lastMenu.dispose();
                    this.lastMenu = null;
                }
            }

            public Menu getMenu(Control parent) {
                if (this.lastMenu != null) {
                    this.lastMenu.dispose();
                }
                this.lastMenu = new Menu(parent);
                this.createEntries(this.lastMenu);
                return this.lastMenu;
            }

            public Menu getMenu(Menu parent) {
                return null;
            }

            protected void addActionToMenu(Menu parent, IAction action) {
                ActionContributionItem item = new ActionContributionItem(action);
                item.fill(parent, -1);
            }

            protected abstract void createEntries(Menu var1);
        }
        HistoryNavigationAction backward = new HistoryNavigationAction(){
            {
            }

            public void run() {
                PreferencePageHistory.this.jumpToHistory(PreferencePageHistory.this.historyIndex - 1);
            }

            public boolean isEnabled() {
                boolean enabled;
                boolean bl = enabled = PreferencePageHistory.this.historyIndex > 0;
                if (enabled) {
                    this.setToolTipText(NLS.bind((String)WorkbenchMessages.NavigationHistoryAction_backward_toolTipName, (Object)PreferencePageHistory.this.getHistoryEntry(PreferencePageHistory.this.historyIndex - 1).getLabel()));
                }
                return enabled;
            }

            protected void createEntries(Menu menu) {
                int limit = Math.max(0, PreferencePageHistory.this.historyIndex - 5);
                int i = PreferencePageHistory.this.historyIndex - 1;
                while (i >= limit) {
                    class HistoryItemAction
                    extends Action {
                        private final int index;

                        HistoryItemAction(int index, String label) {
                            super(label, 1);
                            this.index = index;
                        }

                        public void run() {
                            PreferencePageHistory.this.jumpToHistory(this.index);
                        }
                    }
                    HistoryItemAction action = new HistoryItemAction(i, PreferencePageHistory.this.getHistoryEntry(i).getLabel());
                    this.addActionToMenu(menu, (IAction)action);
                    --i;
                }
            }
        };
        backward.setText(WorkbenchMessages.NavigationHistoryAction_backward_text);
        backward.setActionDefinitionId("org.eclipse.ui.navigate.backwardHistory");
        backward.setImageDescriptor(WorkbenchPlugin.getDefault().getSharedImages().getImageDescriptor("IMG_TOOL_BACK"));
        backward.setDisabledImageDescriptor(WorkbenchPlugin.getDefault().getSharedImages().getImageDescriptor("IMG_TOOL_BACK_DISABLED"));
        this.registerKeybindings((IAction)backward);
        this.historyToolbar.add((IAction)backward);
        HistoryNavigationAction forward = new HistoryNavigationAction(){
            {
            }

            public void run() {
                PreferencePageHistory.this.jumpToHistory(PreferencePageHistory.this.historyIndex + 1);
            }

            public boolean isEnabled() {
                boolean enabled;
                boolean bl = enabled = PreferencePageHistory.this.historyIndex < PreferencePageHistory.this.history.size() - 1;
                if (enabled) {
                    this.setToolTipText(NLS.bind((String)WorkbenchMessages.NavigationHistoryAction_forward_toolTipName, (Object)PreferencePageHistory.this.getHistoryEntry(PreferencePageHistory.this.historyIndex + 1).getLabel()));
                }
                return enabled;
            }

            protected void createEntries(Menu menu) {
                int limit = Math.min(PreferencePageHistory.this.history.size(), PreferencePageHistory.this.historyIndex + 5 + 1);
                int i = PreferencePageHistory.this.historyIndex + 1;
                while (i < limit) {
                    HistoryItemAction action = new HistoryItemAction(i, PreferencePageHistory.this.getHistoryEntry(i).getLabel());
                    this.addActionToMenu(menu, (IAction)action);
                    ++i;
                }
            }
        };
        forward.setText(WorkbenchMessages.NavigationHistoryAction_forward_text);
        forward.setActionDefinitionId("org.eclipse.ui.navigate.forwardHistory");
        forward.setImageDescriptor(WorkbenchPlugin.getDefault().getSharedImages().getImageDescriptor("IMG_TOOL_FORWARD"));
        forward.setDisabledImageDescriptor(WorkbenchPlugin.getDefault().getSharedImages().getImageDescriptor("IMG_TOOL_FORWARD_DISABLED"));
        this.registerKeybindings((IAction)forward);
        this.historyToolbar.add((IAction)forward);
        return historyBar;
    }

    private void registerKeybindings(IAction action) {
        ActionHandler handler = new ActionHandler(action);
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService handlerService = (IHandlerService)iWorkbench.getService(clazz);
        IHandlerActivation activation = handlerService.activateHandler(action.getActionDefinitionId(), (IHandler)handler, new ActiveShellExpression(this.dialog.getShell()));
        this.activations.add(activation);
    }

    public void dispose() {
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService handlerService = (IHandlerService)iWorkbench.getService(clazz);
        Iterator iterator = this.activations.iterator();
        while (iterator.hasNext()) {
            handlerService.deactivateHandler((IHandlerActivation)iterator.next());
        }
        this.activations.clear();
    }
}

