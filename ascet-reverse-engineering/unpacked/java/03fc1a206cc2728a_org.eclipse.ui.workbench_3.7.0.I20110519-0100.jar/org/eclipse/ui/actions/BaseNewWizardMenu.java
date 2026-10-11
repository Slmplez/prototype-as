/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.Separator
 */
package org.eclipse.ui.actions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.Separator;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.actions.CompoundContributionItem;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.actions.NewWizardShortcutAction;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.wizards.IWizardDescriptor;

public class BaseNewWizardMenu
extends CompoundContributionItem {
    private final Map actions = new HashMap(21);
    private final IExtensionChangeHandler configListener = new IExtensionChangeHandler(){

        public void removeExtension(IExtension source, Object[] objects) {
            int i = 0;
            while (i < objects.length) {
                if (objects[i] instanceof NewWizardShortcutAction) {
                    BaseNewWizardMenu.this.actions.values().remove(objects[i]);
                }
                ++i;
            }
        }

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
        }
    };
    private final IRegistryChangeListener registryListener = new IRegistryChangeListener(){

        public void registryChanged(IRegistryChangeEvent event) {
            if (BaseNewWizardMenu.this.getParent() != null) {
                BaseNewWizardMenu.this.getParent().markDirty();
            }
        }
    };
    private ActionFactory.IWorkbenchAction showDlgAction;
    private IWorkbenchWindow workbenchWindow;
    static /* synthetic */ Class class$0;

    public BaseNewWizardMenu(IWorkbenchWindow window, String id) {
        super(id);
        Assert.isNotNull((Object)window);
        this.workbenchWindow = window;
        this.showDlgAction = ActionFactory.NEW.create(window);
        this.registerListeners();
        if (window instanceof WorkbenchWindow) {
            ((WorkbenchWindow)window).addSubmenu(4);
        }
    }

    protected void addItems(List list) {
        if (this.addShortcuts(list)) {
            list.add(new Separator());
        }
        list.add(new ActionContributionItem(this.getShowDialogAction()));
    }

    protected boolean addShortcuts(List list) {
        boolean added = false;
        IWorkbenchPage page = this.workbenchWindow.getActivePage();
        if (page != null) {
            String[] wizardIds = page.getNewWizardShortcuts();
            int i = 0;
            while (i < wizardIds.length) {
                IAction action = this.getAction(wizardIds[i]);
                if (action != null && !WorkbenchActivityHelper.filterItem(action)) {
                    list.add(new ActionContributionItem(action));
                    added = true;
                }
                ++i;
            }
        }
        return added;
    }

    public void dispose() {
        if (this.workbenchWindow != null) {
            super.dispose();
            this.unregisterListeners();
            this.showDlgAction.dispose();
            this.showDlgAction = null;
            this.workbenchWindow = null;
        }
    }

    private IAction getAction(String id) {
        IWizardDescriptor wizardDesc;
        Object action = (IAction)this.actions.get(id);
        if (action == null && (wizardDesc = WorkbenchPlugin.getDefault().getNewWizardRegistry().findWizard(id)) != null) {
            IConfigurationElement element;
            action = new NewWizardShortcutAction(this.workbenchWindow, wizardDesc);
            this.actions.put(id, action);
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((element = (IConfigurationElement)Util.getAdapter(wizardDesc, clazz)) != null) {
                this.workbenchWindow.getExtensionTracker().registerObject(element.getDeclaringExtension(), action, 2);
            }
        }
        return action;
    }

    protected IContributionItem[] getContributionItems() {
        ArrayList<ActionContributionItem> list = new ArrayList<ActionContributionItem>();
        if (this.workbenchWindow != null && this.workbenchWindow.getActivePage() != null && this.workbenchWindow.getActivePage().getPerspective() != null) {
            this.addItems(list);
        } else {
            String text = WorkbenchMessages.Workbench_noApplicableItems;
            Action dummyAction = new Action(text){};
            dummyAction.setEnabled(false);
            list.add(new ActionContributionItem((IAction)dummyAction));
        }
        return list.toArray(new IContributionItem[list.size()]);
    }

    protected IAction getShowDialogAction() {
        return this.showDlgAction;
    }

    protected IWorkbenchWindow getWindow() {
        return this.workbenchWindow;
    }

    private void registerListeners() {
        Platform.getExtensionRegistry().addRegistryChangeListener(this.registryListener);
        this.workbenchWindow.getExtensionTracker().registerHandler(this.configListener, null);
    }

    protected boolean registryHasCategory(String categoryId) {
        return WorkbenchPlugin.getDefault().getNewWizardRegistry().findCategory(categoryId) != null;
    }

    private void unregisterListeners() {
        Platform.getExtensionRegistry().removeRegistryChangeListener(this.registryListener);
        this.workbenchWindow.getExtensionTracker().unregisterHandler(this.configListener);
    }
}

