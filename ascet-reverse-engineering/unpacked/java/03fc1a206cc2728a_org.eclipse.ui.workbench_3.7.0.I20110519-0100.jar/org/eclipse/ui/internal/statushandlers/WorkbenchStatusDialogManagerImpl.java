/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.viewers.ILabelDecorator
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.statushandlers;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.statushandlers.IStatusDialogConstants;
import org.eclipse.ui.internal.statushandlers.InternalDialog;
import org.eclipse.ui.internal.statushandlers.LabelProviderWrapper;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.statushandlers.StatusAdapter;
import org.eclipse.ui.statushandlers.StatusManager;

public class WorkbenchStatusDialogManagerImpl {
    static final QualifiedName HINT = new QualifiedName("org.eclipse.ui.workbench.statusHandlers.adapters", "hint");
    private DisposeListener disposeListener = new StatusDialogDisposeListener();
    private InternalDialog dialog;
    private Map dialogState = new HashMap();

    public boolean shouldAccept(StatusAdapter statusAdapter) {
        IStatus status = statusAdapter.getStatus();
        IStatus[] children = status.getChildren();
        int mask = (Integer)this.dialogState.get(IStatusDialogConstants.MASK);
        boolean handleOKStatuses = (Boolean)this.dialogState.get(IStatusDialogConstants.HANDLE_OK_STATUSES);
        if (children == null || children.length == 0) {
            return status.matches(mask) || handleOKStatuses && status.isOK();
        }
        int i = 0;
        while (i < children.length) {
            if (children[i].matches(mask)) {
                return true;
            }
            ++i;
        }
        return handleOKStatuses && status.isOK();
    }

    public WorkbenchStatusDialogManagerImpl(int displayMask, String dialogTitle) {
        Assert.isNotNull((Object)Display.getCurrent(), (String)"WorkbenchStatusDialogManager must be instantiated in UI thread");
        this.dialogState = this.initDialogState(this.dialogState, displayMask, dialogTitle);
    }

    public Map initDialogState(Map dialogState, int displayMask, String dialogTitle) {
        dialogState.put(IStatusDialogConstants.MASK, new Integer(displayMask));
        dialogState.put(IStatusDialogConstants.TITLE, dialogTitle == null ? JFaceResources.getString((String)"Problem_Occurred") : dialogTitle);
        dialogState.put(IStatusDialogConstants.HANDLE_OK_STATUSES, Boolean.FALSE);
        dialogState.put(IStatusDialogConstants.SHOW_SUPPORT, Boolean.FALSE);
        dialogState.put(IStatusDialogConstants.ENABLE_DEFAULT_SUPPORT_AREA, Boolean.FALSE);
        dialogState.put(IStatusDialogConstants.DETAILS_OPENED, Boolean.FALSE);
        dialogState.put(IStatusDialogConstants.TRAY_OPENED, Boolean.FALSE);
        dialogState.put(IStatusDialogConstants.HIDE_SUPPORT_BUTTON, Boolean.FALSE);
        dialogState.put(IStatusDialogConstants.STATUS_ADAPTERS, Collections.synchronizedSet(new HashSet()));
        dialogState.put(IStatusDialogConstants.STATUS_MODALS, new HashMap());
        dialogState.put(IStatusDialogConstants.LABEL_PROVIDER, new LabelProviderWrapper(dialogState));
        dialogState.put(IStatusDialogConstants.MODALITY_SWITCH, Boolean.FALSE);
        dialogState.put(IStatusDialogConstants.ANIMATION, Boolean.TRUE);
        return dialogState;
    }

    public void addStatusAdapter(StatusAdapter statusAdapter, boolean modal) {
        if (ErrorDialog.AUTOMATED_MODE) {
            return;
        }
        try {
            this.doAddStatusAdapter(statusAdapter, modal);
        }
        catch (Exception e) {
            if (!this.isDialogClosed()) {
                this.dialog.getShell().dispose();
            }
            this.cleanUp();
            WorkbenchPlugin.log(statusAdapter.getStatus());
            WorkbenchPlugin.log(e);
            e.printStackTrace();
        }
    }

    private boolean isDialogClosed() {
        return this.dialog == null || this.dialog.getShell() == null || this.dialog.getShell().isDisposed();
    }

    private void cleanUp() {
        this.dialog = null;
        this.getErrors().clear();
        this.getModals().clear();
        this.dialogState.put(IStatusDialogConstants.DETAILS_OPENED, Boolean.FALSE);
        this.dialogState.put(IStatusDialogConstants.TRAY_OPENED, Boolean.FALSE);
        this.dialogState.put(IStatusDialogConstants.MODALITY_SWITCH, Boolean.FALSE);
    }

    private void doAddStatusAdapter(StatusAdapter statusAdapter, boolean modal) {
        if (!PlatformUI.isWorkbenchRunning()) {
            WorkbenchPlugin.log(statusAdapter.getStatus());
            return;
        }
        if (!this.shouldAccept(statusAdapter)) {
            return;
        }
        if (this.isDialogClosed()) {
            this.getErrors().add(statusAdapter);
            this.getModals().put(statusAdapter, new Boolean(modal));
            if (this.shouldPrompt(statusAdapter)) {
                StatusManager.getManager().fireNotification(1, this.getErrors().toArray(new StatusAdapter[0]));
                if (this.dialog == null) {
                    this.setSelectedStatusAdapter(statusAdapter);
                    this.dialog = new InternalDialog(this.dialogState, this.shouldBeModal());
                    this.dialog.create();
                    this.dialog.getShell().addDisposeListener(this.disposeListener);
                    boolean showSupport = (Boolean)this.dialogState.get(IStatusDialogConstants.SHOW_SUPPORT);
                    if (showSupport) {
                        this.dialog.openTray();
                        this.dialog.getShell().setLocation(this.dialog.getInitialLocation(this.dialog.getShell().getSize()));
                    }
                    this.dialog.open();
                }
                this.dialog.refresh();
                this.dialog.refreshDialogSize();
            }
        } else {
            StatusManager.getManager().fireNotification(1, new StatusAdapter[]{statusAdapter});
            if (statusAdapter.getProperty(IProgressConstants.NO_IMMEDIATE_ERROR_PROMPT_PROPERTY) != null) {
                statusAdapter.setProperty(IProgressConstants.NO_IMMEDIATE_ERROR_PROMPT_PROPERTY, Boolean.FALSE);
            }
            this.openStatusDialog(modal, statusAdapter);
        }
    }

    public Collection getStatusAdapters() {
        return Collections.unmodifiableCollection(this.getErrors());
    }

    private void openStatusDialog(boolean modal, StatusAdapter statusAdapter) {
        this.getErrors().add(statusAdapter);
        this.getModals().put(statusAdapter, new Boolean(modal));
        boolean shouldBeModal = this.shouldBeModal();
        if (shouldBeModal ^ this.dialog.isModal()) {
            this.dialog.getShell().removeDisposeListener(this.disposeListener);
            this.dialogState.put(IStatusDialogConstants.MODALITY_SWITCH, Boolean.TRUE);
            this.dialog.close();
            this.dialog = new InternalDialog(this.dialogState, modal);
            this.dialog.open();
            this.dialog.getShell().addDisposeListener(this.disposeListener);
            this.dialogState.put(IStatusDialogConstants.MODALITY_SWITCH, Boolean.FALSE);
        }
        this.dialog.refresh();
    }

    public void setSelectedStatusAdapter(StatusAdapter statusAdapter) {
        this.dialogState.put(IStatusDialogConstants.CURRENT_STATUS_ADAPTER, statusAdapter);
    }

    public void setStatusListLabelProvider(ITableLabelProvider labelProvider) {
        Assert.isLegal((labelProvider != null ? 1 : 0) != 0, (String)"Label Provider cannot be null");
        this.dialogState.put(IStatusDialogConstants.CUSTOM_LABEL_PROVIDER, labelProvider);
    }

    public boolean shouldBeModal() {
        Map modals = (Map)this.dialogState.get(IStatusDialogConstants.STATUS_MODALS);
        Iterator it = modals.keySet().iterator();
        while (it.hasNext()) {
            Boolean b;
            Object o = it.next();
            Object value = modals.get(o);
            if (!(value instanceof Boolean) || !(b = (Boolean)value).booleanValue()) continue;
            return true;
        }
        return false;
    }

    public boolean shouldPrompt(StatusAdapter statusAdapter) {
        Object noPromptProperty = statusAdapter.getProperty(IProgressConstants.NO_IMMEDIATE_ERROR_PROMPT_PROPERTY);
        boolean prompt = true;
        if (noPromptProperty instanceof Boolean) {
            prompt = (Boolean)noPromptProperty == false;
        }
        return prompt;
    }

    public Shell getShell() {
        if (this.dialog == null) {
            return null;
        }
        return this.dialog.getShell();
    }

    public void setMessageDecorator(ILabelDecorator decorator) {
        this.dialogState.put(IStatusDialogConstants.DECORATOR, decorator);
    }

    public void setProperty(Object key, Object value) {
        this.dialogState.put(key, value);
    }

    public Object getProperty(Object key) {
        if (key == IStatusDialogConstants.SHELL) {
            return this.getShell();
        }
        if (key == IStatusDialogConstants.MANAGER_IMPL) {
            return this;
        }
        return this.dialogState.get(key);
    }

    public void enableErrorDialogCompatibility() {
        this.setProperty(IStatusDialogConstants.ERRORLOG_LINK, Boolean.FALSE);
        this.setProperty(IStatusDialogConstants.HANDLE_OK_STATUSES, Boolean.TRUE);
        this.setProperty(IStatusDialogConstants.SHOW_SUPPORT, Boolean.TRUE);
        this.setProperty(IStatusDialogConstants.HIDE_SUPPORT_BUTTON, Boolean.TRUE);
    }

    public InternalDialog getDialog() {
        return this.dialog;
    }

    public void setDialog(InternalDialog dialog) {
        this.dialog = dialog;
    }

    public Map getDialogState() {
        return this.dialogState;
    }

    private Collection getErrors() {
        return (Collection)this.dialogState.get(IStatusDialogConstants.STATUS_ADAPTERS);
    }

    private Map getModals() {
        return (Map)this.dialogState.get(IStatusDialogConstants.STATUS_MODALS);
    }

    private final class StatusDialogDisposeListener
    implements DisposeListener {
        private StatusDialogDisposeListener() {
        }

        public void widgetDisposed(DisposeEvent e) {
            WorkbenchStatusDialogManagerImpl.this.cleanUp();
        }
    }
}

