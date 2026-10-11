/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.WizardDialog
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.internal.actions;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.IActionDelegate2;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.QuickMenuCreator;
import org.eclipse.ui.dialogs.IWorkingSetNewWizard;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.actions.AbstractWorkingSetPulldownDelegate;

public class ModifyWorkingSetDelegate
extends AbstractWorkingSetPulldownDelegate
implements IExecutableExtension,
IActionDelegate2 {
    private QuickMenuCreator contextMenuCreator = new QuickMenuCreator(){

        protected void fillMenu(IMenuManager menu) {
            ModifyWorkingSetDelegate.this.fillMenu(menu);
        }
    };
    private boolean add = true;
    private IPropertyChangeListener listener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            this.refreshEnablement();
        }

        private void refreshEnablement() {
            ModifyWorkingSetDelegate.this.selectionChanged(ModifyWorkingSetDelegate.this.actionProxy, ModifyWorkingSetDelegate.this.getSelection());
        }
    };
    private IAction actionProxy;

    public void run(IAction action) {
        this.contextMenuCreator.createMenu();
    }

    public void runWithEvent(IAction action, Event event) {
        if (event.type == 1 || event.type == 2) {
            this.run(action);
        }
    }

    public void init(IWorkbenchWindow window) {
        super.init(window);
        this.getWindow().getWorkbench().getWorkingSetManager().addPropertyChangeListener(this.listener);
    }

    public void dispose() {
        this.getWindow().getWorkbench().getWorkingSetManager().removePropertyChangeListener(this.listener);
        super.dispose();
        this.contextMenuCreator.dispose();
    }

    public void fillMenu(Menu menu) {
        List menuItems = this.getItems();
        int i = 0;
        while (i < menuItems.size()) {
            IContributionItem item;
            Object object = menuItems.get(i);
            if (object instanceof IAction) {
                item = new ActionContributionItem((IAction)object);
                item.fill(menu, -1);
            } else {
                item = (IContributionItem)object;
                item.fill(menu, -1);
            }
            ++i;
        }
        if (this.add) {
            Separator item = null;
            if (menu.getItemCount() > 0) {
                item = new Separator();
                item.fill(menu, -1);
            }
            item = new ActionContributionItem((IAction)new NewWorkingSetAction());
            item.fill(menu, -1);
        }
    }

    private List getItems() {
        ArrayList<Action> menuItems = new ArrayList<Action>();
        ISelection selection = this.getSelection();
        if (!(selection instanceof IStructuredSelection)) {
            if (!this.add) {
                Action emptyAction = new Action(WorkbenchMessages.NoApplicableWorkingSets){};
                emptyAction.setEnabled(false);
                menuItems.add(emptyAction);
            }
            return menuItems;
        }
        IWorkingSet[][] typedSets = this.splitSets();
        Object[] selectedElements = ((IStructuredSelection)selection).toArray();
        boolean needsSeparator = false;
        int i = 0;
        while (i < typedSets.length) {
            int oldCount = menuItems.size();
            IWorkingSet[] sets = typedSets[i];
            int j = 0;
            while (j < sets.length) {
                IWorkingSet set = sets[j];
                HashSet<IAdaptable> existingElements = new HashSet<IAdaptable>();
                existingElements.addAll(Arrays.asList(set.getElements()));
                boolean visible = false;
                IAdaptable[] adaptables = new IAdaptable[selectedElements.length];
                System.arraycopy(selectedElements, 0, adaptables, 0, selectedElements.length);
                adaptables = set.adaptElements(adaptables);
                if (adaptables.length > 0 && this.add) {
                    int k = 0;
                    while (k < adaptables.length) {
                        if (!existingElements.contains(adaptables[k])) {
                            visible = true;
                            break;
                        }
                        ++k;
                    }
                } else if (adaptables.length > 0) {
                    int k = 0;
                    while (k < adaptables.length) {
                        if (existingElements.contains(adaptables[k])) {
                            visible = true;
                            break;
                        }
                        ++k;
                    }
                }
                if (visible) {
                    if (needsSeparator) {
                        menuItems.add((Action)new Separator());
                        needsSeparator = false;
                    }
                    ModifyAction action = new ModifyAction(set, adaptables);
                    menuItems.add(action);
                }
                ++j;
            }
            needsSeparator |= menuItems.size() > oldCount;
            ++i;
        }
        if (menuItems.isEmpty() && !this.add) {
            Action emptyAction = new Action(WorkbenchMessages.NoApplicableWorkingSets){};
            emptyAction.setEnabled(false);
            menuItems.add(emptyAction);
        }
        return menuItems;
    }

    private void fillMenu(IMenuManager menu) {
        List menuItems = this.getItems();
        int i = 0;
        while (i < menuItems.size()) {
            Object object = menuItems.get(i);
            if (object instanceof IAction) {
                menu.add((IAction)object);
            } else {
                IContributionItem item = (IContributionItem)object;
                menu.add(item);
            }
            ++i;
        }
    }

    public void selectionChanged(IAction actionProxy, ISelection selection) {
        super.selectionChanged(actionProxy, selection);
        if (selection instanceof IStructuredSelection) {
            Object[] selectedElements = ((IStructuredSelection)this.getSelection()).toArray();
            boolean minimallyOkay = true;
            int i = 0;
            while (i < selectedElements.length) {
                Object object = selectedElements[i];
                if (!(object instanceof IAdaptable) || object instanceof IWorkingSet) {
                    minimallyOkay = false;
                    break;
                }
                ++i;
            }
            actionProxy.setEnabled(minimallyOkay);
        } else {
            actionProxy.setEnabled(false);
        }
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        if (data instanceof String) {
            this.add = Boolean.valueOf((String)data);
        }
    }

    public void init(IAction action) {
        this.actionProxy = action;
    }

    private class ModifyAction
    extends Action {
        private IWorkingSet set;
        private IAdaptable[] selectedElements;

        private ModifyAction(IWorkingSet set, IAdaptable[] selectedElements) {
            super(set.getLabel(), 2);
            this.set = set;
            this.selectedElements = selectedElements;
            this.setImageDescriptor(set.getImageDescriptor());
        }

        public void run() {
            List<IAdaptable> oldElements = Arrays.asList(this.set.getElements());
            HashSet<IAdaptable> newElements = new HashSet<IAdaptable>(oldElements.size() + this.selectedElements.length);
            newElements.addAll(oldElements);
            List<IAdaptable> selectedAsList = Arrays.asList(this.selectedElements);
            if (ModifyWorkingSetDelegate.this.add) {
                newElements.addAll(selectedAsList);
            } else {
                newElements.removeAll(selectedAsList);
            }
            this.set.setElements(newElements.toArray(new IAdaptable[newElements.size()]));
        }
    }

    public class NewWorkingSetAction
    extends Action {
        public NewWorkingSetAction() {
            super(WorkbenchMessages.NewWorkingSet);
        }

        public void run() {
            IWorkingSet workingSet;
            IWorkingSetManager manager = WorkbenchPlugin.getDefault().getWorkingSetManager();
            IWorkingSetNewWizard wizard = manager.createWorkingSetNewWizard(null);
            WizardDialog dialog = new WizardDialog(PlatformUI.getWorkbench().getDisplay().getActiveShell(), (IWizard)wizard);
            dialog.create();
            PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)dialog.getShell(), "org.eclipse.ui.working_set_new_wizard_context");
            if (dialog.open() == 0 && (workingSet = wizard.getSelection()) != null) {
                manager.addWorkingSet(workingSet);
            }
        }
    }
}

