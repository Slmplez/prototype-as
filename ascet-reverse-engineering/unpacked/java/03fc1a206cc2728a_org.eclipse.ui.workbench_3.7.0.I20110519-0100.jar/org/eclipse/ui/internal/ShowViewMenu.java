/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.IParameter
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.Parameterization
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal;

import com.ibm.icu.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.IParameter;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.Parameterization;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.registry.ViewDescriptor;
import org.eclipse.ui.menus.CommandContributionItem;
import org.eclipse.ui.menus.CommandContributionItemParameter;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class ShowViewMenu
extends ContributionItem {
    private IWorkbenchWindow window;
    private static final String NO_TARGETS_MSG = WorkbenchMessages.Workbench_showInNoTargets;
    private Comparator actionComparator = new Comparator(){

        public int compare(Object o1, Object o2) {
            if (collator == null) {
                ShowViewMenu.collator = Collator.getInstance();
            }
            CommandContributionItemParameter a1 = (CommandContributionItemParameter)o1;
            CommandContributionItemParameter a2 = (CommandContributionItemParameter)o2;
            return collator.compare(a1.label, a2.label);
        }
    };
    private Action showDlgAction;
    private Map actions = new HashMap(21);
    protected boolean dirty = true;
    private IMenuListener menuListener = new IMenuListener(){

        public void menuAboutToShow(IMenuManager manager) {
            manager.markDirty();
            ShowViewMenu.this.dirty = true;
        }
    };
    private boolean makeFast;
    private static Collator collator;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public ShowViewMenu(IWorkbenchWindow window, String id) {
        this(window, id, false);
    }

    public ShowViewMenu(IWorkbenchWindow window, String id, boolean makeFast) {
        super(id);
        this.window = window;
        this.makeFast = makeFast;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        final IHandlerService handlerService = (IHandlerService)window.getService(clazz);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService commandService = (ICommandService)window.getService(clazz2);
        final ParameterizedCommand cmd = this.getCommand(commandService, makeFast);
        this.showDlgAction = new Action(WorkbenchMessages.ShowView_title){

            public void run() {
                try {
                    handlerService.executeCommand(cmd, null);
                }
                catch (ExecutionException executionException) {
                }
                catch (NotDefinedException notDefinedException) {
                }
                catch (NotEnabledException notEnabledException) {
                }
                catch (NotHandledException notHandledException) {}
            }
        };
        window.getWorkbench().getHelpSystem().setHelp((IAction)this.showDlgAction, "org.eclipse.ui.show_view_other_action_context");
        if (window instanceof WorkbenchWindow) {
            ((WorkbenchWindow)window).addSubmenu(1);
        }
        this.showDlgAction.setActionDefinitionId("org.eclipse.ui.views.showView");
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public boolean isDynamic() {
        return true;
    }

    private void fillMenu(IMenuManager innerMgr) {
        Object item;
        innerMgr.removeAll();
        IWorkbenchPage page = this.window.getActivePage();
        if (page == null) {
            return;
        }
        if (page.getPerspective() == null) {
            return;
        }
        List viewIds = this.getShortcuts(page);
        viewIds = this.addOpenedViews(page, viewIds);
        ArrayList<CommandContributionItemParameter> actions = new ArrayList<CommandContributionItemParameter>(viewIds.size());
        Iterator i = viewIds.iterator();
        while (i.hasNext()) {
            Pair id = (Pair)i.next();
            if (id.a.equals("org.eclipse.ui.internal.introview") || (item = this.getItem((String)id.a, (String)id.b)) == null) continue;
            actions.add((CommandContributionItemParameter)item);
        }
        Collections.sort(actions, this.actionComparator);
        i = actions.iterator();
        while (i.hasNext()) {
            CommandContributionItemParameter ccip = (CommandContributionItemParameter)i.next();
            if (WorkbenchActivityHelper.filterItem(ccip)) continue;
            item = new CommandContributionItem(ccip);
            innerMgr.add((IContributionItem)item);
        }
        if (!innerMgr.isEmpty()) {
            innerMgr.add((IContributionItem)new Separator());
        }
        innerMgr.add((IAction)this.showDlgAction);
    }

    private List getShortcuts(IWorkbenchPage page) {
        ArrayList<Pair> list = new ArrayList<Pair>();
        String[] shortcuts = page.getShowViewShortcuts();
        int i = 0;
        while (i < shortcuts.length) {
            list.add(new Pair(shortcuts[i], null));
            ++i;
        }
        return list;
    }

    private CommandContributionItemParameter getItem(String viewId, String secondaryId) {
        IViewRegistry reg = WorkbenchPlugin.getDefault().getViewRegistry();
        IViewDescriptor desc = reg.find(viewId);
        if (desc == null) {
            return null;
        }
        String label = desc.getLabel();
        PluginCCIP parms = new PluginCCIP(desc, this.window, viewId, "org.eclipse.ui.views.showView", 8);
        parms.label = label;
        parms.icon = desc.getImageDescriptor();
        parms.parameters = new HashMap();
        parms.parameters.put("org.eclipse.ui.views.showView.viewId", viewId);
        if (this.makeFast) {
            parms.parameters.put("org.eclipse.ui.views.showView.makeFast", "true");
        }
        if (secondaryId != null) {
            parms.parameters.put("org.eclipse.ui.views.showView.secondaryId", secondaryId);
        }
        return parms;
    }

    private List addOpenedViews(IWorkbenchPage page, List actions) {
        Object element;
        ArrayList views = this.getParts(page);
        ArrayList result = new ArrayList(views.size() + actions.size());
        int i = 0;
        while (i < actions.size()) {
            element = actions.get(i);
            if (result.indexOf(element) < 0) {
                result.add(element);
            }
            ++i;
        }
        i = 0;
        while (i < views.size()) {
            element = views.get(i);
            if (result.indexOf(element) < 0) {
                result.add(element);
            }
            ++i;
        }
        return result;
    }

    private ArrayList getParts(IWorkbenchPage page) {
        ArrayList<Pair> parts = new ArrayList<Pair>();
        IViewReference[] refs = page.getViewReferences();
        int i = 0;
        while (i < refs.length) {
            parts.add(new Pair(refs[i].getId(), refs[i].getSecondaryId()));
            ++i;
        }
        return parts;
    }

    public void fill(Menu menu, int index) {
        if (this.getParent() instanceof MenuManager) {
            ((MenuManager)this.getParent()).addMenuListener(this.menuListener);
        }
        if (!this.dirty) {
            return;
        }
        MenuManager manager = new MenuManager();
        this.fillMenu((IMenuManager)manager);
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

    protected void removeAction(String viewId) {
        this.actions.remove(viewId);
    }

    private ParameterizedCommand getCommand(ICommandService commandService, boolean makeFast) {
        Command c = commandService.getCommand("org.eclipse.ui.views.showView");
        Parameterization[] parms = null;
        if (makeFast) {
            try {
                IParameter parmDef = c.getParameter("org.eclipse.ui.views.showView.makeFast");
                parms = new Parameterization[]{new Parameterization(parmDef, "true")};
            }
            catch (NotDefinedException notDefinedException) {}
        }
        return new ParameterizedCommand(c, parms);
    }

    static class Pair {
        public final Object a;
        public final Object b;
        int hashCode = -1;

        public Pair(Object a, Object b) {
            this.a = a;
            this.b = b;
        }

        public int hashCode() {
            if (this.hashCode == -1) {
                this.hashCode = 1;
                this.hashCode = 31 * this.hashCode + (this.a == null ? 0 : this.a.hashCode());
                this.hashCode = 31 * this.hashCode + (this.b == null ? 0 : this.b.hashCode());
                if (this.hashCode == -1) {
                    this.hashCode = this.a.hashCode();
                }
            }
            return this.hashCode;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            Pair p = (Pair)obj;
            if (!this.a.equals(p.a)) {
                return false;
            }
            if (this.b == p.b) {
                return true;
            }
            if (this.b == null || p.b == null) {
                return false;
            }
            return this.b.equals(p.b);
        }
    }

    static class PluginCCIP
    extends CommandContributionItemParameter
    implements IPluginContribution {
        private String localId;
        private String pluginId;

        public PluginCCIP(IViewDescriptor v, IServiceLocator serviceLocator, String id, String commandId, int style) {
            super(serviceLocator, id, commandId, style);
            this.localId = ((ViewDescriptor)v).getLocalId();
            this.pluginId = ((ViewDescriptor)v).getPluginId();
        }

        public String getLocalId() {
            return this.localId;
        }

        public String getPluginId() {
            return this.pluginId;
        }
    }
}

