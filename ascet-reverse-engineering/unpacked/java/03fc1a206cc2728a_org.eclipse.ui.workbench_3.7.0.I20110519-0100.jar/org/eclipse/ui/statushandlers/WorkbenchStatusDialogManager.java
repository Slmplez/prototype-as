/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.jface.viewers.ILabelDecorator
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.statushandlers;

import java.util.Collection;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.statushandlers.IStatusDialogConstants;
import org.eclipse.ui.internal.statushandlers.WorkbenchStatusDialogManagerImpl;
import org.eclipse.ui.statushandlers.AbstractStatusAreaProvider;
import org.eclipse.ui.statushandlers.StatusAdapter;

public class WorkbenchStatusDialogManager {
    static final QualifiedName HINT = new QualifiedName("org.eclipse.ui.workbench.statusHandlers.adapters", "hint");
    private WorkbenchStatusDialogManagerImpl manager;

    public WorkbenchStatusDialogManager(int displayMask, String dialogTitle) {
        this.manager = new WorkbenchStatusDialogManagerImpl(displayMask, dialogTitle);
    }

    public WorkbenchStatusDialogManager(Shell parentShell, int displayMask, String dialogTitle) {
        this(displayMask, dialogTitle);
    }

    public WorkbenchStatusDialogManager(String dialogTitle) {
        this(15, dialogTitle);
    }

    public WorkbenchStatusDialogManager(Shell parentShell, String dialogTitle) {
        this(dialogTitle);
    }

    public void addStatusAdapter(StatusAdapter statusAdapter, boolean modal) {
        this.manager.addStatusAdapter(statusAdapter, modal);
    }

    public void enableDefaultSupportArea(boolean enable) {
        this.manager.getDialogState().put(IStatusDialogConstants.ENABLE_DEFAULT_SUPPORT_AREA, enable);
    }

    public Collection getStatusAdapters() {
        return this.manager.getStatusAdapters();
    }

    public void setDetailsAreaProvider(AbstractStatusAreaProvider provider) {
        this.manager.setProperty(IStatusDialogConstants.CUSTOM_DETAILS_PROVIDER, (Object)provider);
    }

    public void setStatusListLabelProvider(ITableLabelProvider labelProvider) {
        this.manager.setStatusListLabelProvider(labelProvider);
    }

    public void setSupportAreaProvider(AbstractStatusAreaProvider provider) {
        this.manager.setProperty(IStatusDialogConstants.CUSTOM_SUPPORT_PROVIDER, (Object)provider);
    }

    public void setMessageDecorator(ILabelDecorator decorator) {
        this.manager.setMessageDecorator(decorator);
    }

    public void setProperty(Object key, Object value) {
        this.manager.setProperty(key, value);
    }

    public Object getProperty(Object key) {
        return this.manager.getProperty(key);
    }

    public void enableErrorDialogCompatibility() {
        this.manager.enableErrorDialogCompatibility();
    }
}

