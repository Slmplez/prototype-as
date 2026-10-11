/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.dialogs.IWorkingSetEditWizard;
import org.eclipse.ui.dialogs.IWorkingSetNewWizard;
import org.eclipse.ui.dialogs.IWorkingSetSelectionDialog;

public interface IWorkingSetManager {
    public static final String CHANGE_WORKING_SET_ADD = "workingSetAdd";
    public static final String CHANGE_WORKING_SET_REMOVE = "workingSetRemove";
    public static final String CHANGE_WORKING_SET_CONTENT_CHANGE = "workingSetContentChange";
    public static final String CHANGE_WORKING_SET_NAME_CHANGE = "workingSetNameChange";
    public static final String CHANGE_WORKING_SET_LABEL_CHANGE = "workingSetLabelChange";
    public static final String CHANGE_WORKING_SET_UPDATER_INSTALLED = "workingSetUpdaterInstalled";
    public static final String CHANGE_WORKING_SET_UPDATER_UNINSTALLED = "workingSetUpdaterUninstalled";

    public void addPropertyChangeListener(IPropertyChangeListener var1);

    public void addRecentWorkingSet(IWorkingSet var1);

    public void addWorkingSet(IWorkingSet var1);

    public IWorkingSet createWorkingSet(String var1, IAdaptable[] var2);

    public IWorkingSet createAggregateWorkingSet(String var1, String var2, IWorkingSet[] var3);

    public IWorkingSet createWorkingSet(IMemento var1);

    public IWorkingSetEditWizard createWorkingSetEditWizard(IWorkingSet var1);

    public IWorkingSetNewWizard createWorkingSetNewWizard(String[] var1);

    public IWorkingSetSelectionDialog createWorkingSetSelectionDialog(Shell var1);

    public IWorkingSetSelectionDialog createWorkingSetSelectionDialog(Shell var1, boolean var2);

    public IWorkingSetSelectionDialog createWorkingSetSelectionDialog(Shell var1, boolean var2, String[] var3);

    public IWorkingSet[] getRecentWorkingSets();

    public IWorkingSet getWorkingSet(String var1);

    public IWorkingSet[] getWorkingSets();

    public IWorkingSet[] getAllWorkingSets();

    public void removePropertyChangeListener(IPropertyChangeListener var1);

    public void removeWorkingSet(IWorkingSet var1);

    public void dispose();

    public void addToWorkingSets(IAdaptable var1, IWorkingSet[] var2);

    public void setRecentWorkingSetsLength(int var1);

    public int getRecentWorkingSetsLength();
}

