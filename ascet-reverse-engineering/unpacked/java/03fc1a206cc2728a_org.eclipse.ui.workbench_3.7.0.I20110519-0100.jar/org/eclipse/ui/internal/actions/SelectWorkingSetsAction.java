/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.bindings.keys.KeyLookupFactory
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.internal.actions;

import java.util.Arrays;
import java.util.HashSet;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.actions.AbstractWorkingSetPulldownDelegate;
import org.eclipse.ui.internal.actions.ConfigureWindowWorkingSetsDialog;

public class SelectWorkingSetsAction
extends AbstractWorkingSetPulldownDelegate {
    protected void fillMenu(Menu menu) {
        IWorkingSet[][] typedSets = this.splitSets();
        int i = 0;
        while (i < typedSets.length) {
            IWorkingSet[] sets = typedSets[i];
            int j = 0;
            while (j < sets.length) {
                IWorkingSet set = sets[j];
                ActionContributionItem item = new ActionContributionItem((IAction)new ToggleWorkingSetAction(set));
                item.fill(menu, -1);
                ++j;
            }
            Separator separator = new Separator();
            separator.fill(menu, -1);
            ++i;
        }
        ActionContributionItem item = new ActionContributionItem((IAction)new ManageWorkingSetsAction());
        item.fill(menu, -1);
    }

    private IWorkingSet[] getEnabledSets() {
        return this.getWindow().getActivePage().getWorkingSets();
    }

    private boolean isWorkingSetEnabled(IWorkingSet set) {
        IWorkingSet[] enabledSets = this.getEnabledSets();
        int i = 0;
        while (i < enabledSets.length) {
            if (enabledSets[i].equals(set)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void run(IAction action) {
        ConfigureWindowWorkingSetsDialog dialog = new ConfigureWindowWorkingSetsDialog(this.getWindow());
        dialog.open();
    }

    private class ManageWorkingSetsAction
    extends Action {
        ManageWorkingSetsAction() {
            super(WorkbenchMessages.Edit);
        }

        public void run() {
            SelectWorkingSetsAction.this.run((IAction)this);
        }
    }

    private class ToggleWorkingSetAction
    extends Action {
        private IWorkingSet set;

        ToggleWorkingSetAction(IWorkingSet set) {
            super(set.getLabel(), 2);
            this.setImageDescriptor(set.getImageDescriptor());
            this.set = set;
            this.setChecked(SelectWorkingSetsAction.this.isWorkingSetEnabled(set));
        }

        public void runWithEvent(Event event) {
            HashSet<IWorkingSet> newList = new HashSet<IWorkingSet>(Arrays.asList(SelectWorkingSetsAction.this.getWindow().getActivePage().getWorkingSets()));
            if (this.isChecked()) {
                boolean modified;
                boolean bl = modified = (event.stateMask & KeyLookupFactory.getDefault().formalModifierLookup("M1")) != 0;
                if (modified) {
                    newList.clear();
                }
                newList.add(this.set);
            } else {
                newList.remove(this.set);
            }
            SelectWorkingSetsAction.this.getWindow().getActivePage().setWorkingSets(newList.toArray(new IWorkingSet[newList.size()]));
        }
    }
}

