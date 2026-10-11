/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.actions;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.ActionGroup;
import org.eclipse.ui.actions.CompoundContributionItem;
import org.eclipse.ui.internal.WorkingSetComparator;
import org.eclipse.ui.internal.WorkingSetMenuContributionItem;
import org.eclipse.ui.internal.actions.ClearWorkingSetAction;
import org.eclipse.ui.internal.actions.EditWorkingSetAction;
import org.eclipse.ui.internal.actions.SelectWorkingSetAction;
import org.eclipse.ui.internal.util.Util;

public class WorkingSetFilterActionGroup
extends ActionGroup {
    private static final String TAG_WORKING_SET_NAME = "workingSetName";
    public static final String CHANGE_WORKING_SET = "changeWorkingSet";
    private static final String START_SEPARATOR_ID = "workingSetGroupStartSeparator";
    private static final String SEPARATOR_ID = "workingSetGroupSeparator";
    private static final String WORKING_SET_ACTION_GROUP = "workingSetActionGroup";
    private IWorkingSet workingSet = null;
    private ClearWorkingSetAction clearWorkingSetAction;
    private SelectWorkingSetAction selectWorkingSetAction;
    private EditWorkingSetAction editWorkingSetAction;
    private IPropertyChangeListener workingSetUpdater;
    private IWorkbenchWindow workbenchWindow;
    private IWorkbenchPage page;
    private boolean allowWindowWorkingSetByDefault;
    private CompoundContributionItem mruList;

    public WorkingSetFilterActionGroup(Shell shell, IPropertyChangeListener workingSetUpdater) {
        IWorkbenchPage[] pages;
        Assert.isNotNull((Object)shell);
        this.workingSetUpdater = workingSetUpdater;
        this.clearWorkingSetAction = new ClearWorkingSetAction(this);
        this.selectWorkingSetAction = new SelectWorkingSetAction(this, shell);
        this.editWorkingSetAction = new EditWorkingSetAction(this, shell);
        this.mruList = new CompoundContributionItem(){

            protected IContributionItem[] getContributionItems() {
                IWorkingSet[] workingSets = PlatformUI.getWorkbench().getWorkingSetManager().getRecentWorkingSets();
                ArrayList<WorkingSetMenuContributionItem> items = new ArrayList<WorkingSetMenuContributionItem>(workingSets.length);
                List<IWorkingSet> sortedWorkingSets = Arrays.asList(workingSets);
                Collections.sort(sortedWorkingSets, new WorkingSetComparator());
                int mruMenuCount = 0;
                Iterator<IWorkingSet> i = sortedWorkingSets.iterator();
                while (i.hasNext()) {
                    IWorkingSet workingSet = i.next();
                    if (workingSet == null) continue;
                    WorkingSetMenuContributionItem item = new WorkingSetMenuContributionItem(++mruMenuCount, WorkingSetFilterActionGroup.this, workingSet);
                    items.add(item);
                }
                return items.toArray(new IContributionItem[items.size()]);
            }
        };
        this.workbenchWindow = Util.getWorkbenchWindowForShell(shell);
        this.allowWindowWorkingSetByDefault = false;
        this.page = this.workbenchWindow.getActivePage();
        if (this.page == null && (pages = this.workbenchWindow.getPages()).length > 0) {
            this.page = pages[0];
        }
    }

    public void fillActionBars(IActionBars actionBars) {
        IMenuManager menuManager = actionBars.getMenuManager();
        if (menuManager.find("additions") != null) {
            menuManager.insertAfter("additions", (IContributionItem)new Separator(WORKING_SET_ACTION_GROUP));
        } else {
            menuManager.add((IContributionItem)new Separator(WORKING_SET_ACTION_GROUP));
        }
        menuManager.appendToGroup(WORKING_SET_ACTION_GROUP, (IAction)this.selectWorkingSetAction);
        menuManager.appendToGroup(WORKING_SET_ACTION_GROUP, (IAction)this.clearWorkingSetAction);
        menuManager.appendToGroup(WORKING_SET_ACTION_GROUP, (IAction)this.editWorkingSetAction);
        menuManager.appendToGroup(WORKING_SET_ACTION_GROUP, (IContributionItem)new Separator(START_SEPARATOR_ID));
        menuManager.appendToGroup(WORKING_SET_ACTION_GROUP, (IContributionItem)this.mruList);
        menuManager.appendToGroup(WORKING_SET_ACTION_GROUP, (IContributionItem)new Separator(SEPARATOR_ID));
    }

    public void fillContextMenu(IMenuManager menuManager) {
        menuManager.add((IAction)this.selectWorkingSetAction);
        menuManager.add((IAction)this.clearWorkingSetAction);
        menuManager.add((IAction)this.editWorkingSetAction);
        menuManager.add((IContributionItem)new Separator());
        menuManager.add((IContributionItem)this.mruList);
        menuManager.add((IContributionItem)new Separator(SEPARATOR_ID));
    }

    public IWorkingSet getWorkingSet() {
        return this.workingSet;
    }

    public void setWorkingSet(IWorkingSet newWorkingSet) {
        IWorkingSet oldWorkingSet = this.workingSet;
        this.workingSet = newWorkingSet;
        this.clearWorkingSetAction.setEnabled(newWorkingSet != null);
        this.editWorkingSetAction.setEnabled(newWorkingSet != null && newWorkingSet.isEditable());
        this.firePropertyChange(newWorkingSet, oldWorkingSet);
    }

    private void firePropertyChange(IWorkingSet newWorkingSet, IWorkingSet oldWorkingSet) {
        if (this.workingSetUpdater != null) {
            this.workingSetUpdater.propertyChange(new PropertyChangeEvent((Object)this, CHANGE_WORKING_SET, (Object)oldWorkingSet, (Object)newWorkingSet));
        }
    }

    public void saveState(IMemento memento) {
        if (this.workingSet != null) {
            memento.putString(TAG_WORKING_SET_NAME, this.workingSet.getName());
        } else {
            memento.putString(TAG_WORKING_SET_NAME, "");
        }
    }

    public void restoreState(IMemento memento) {
        String workingSetName = memento.getString(TAG_WORKING_SET_NAME);
        if (workingSetName != null && workingSetName.length() > 0) {
            this.setWorkingSet(PlatformUI.getWorkbench().getWorkingSetManager().getWorkingSet(workingSetName));
        } else if (this.page != null && this.useWindowWorkingSetByDefault()) {
            this.setWorkingSet(this.page.getAggregateWorkingSet());
        }
    }

    private boolean useWindowWorkingSetByDefault() {
        return this.allowWindowWorkingSetByDefault && PlatformUI.getPreferenceStore().getBoolean("USE_WINDOW_WORKING_SET_BY_DEFAULT");
    }
}

