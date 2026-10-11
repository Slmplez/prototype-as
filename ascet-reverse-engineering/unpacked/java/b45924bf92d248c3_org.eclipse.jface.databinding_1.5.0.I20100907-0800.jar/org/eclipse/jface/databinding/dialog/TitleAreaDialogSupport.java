/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.DataBindingContext
 *  org.eclipse.core.databinding.ValidationStatusProvider
 *  org.eclipse.core.databinding.observable.ChangeEvent
 *  org.eclipse.core.databinding.observable.IChangeListener
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.list.IListChangeListener
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListChangeEvent
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.list.ListDiffEntry
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.IValueChangeListener
 *  org.eclipse.core.databinding.observable.value.ValueChangeEvent
 *  org.eclipse.core.databinding.util.Policy
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.dialogs.TitleAreaDialog
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 */
package org.eclipse.jface.databinding.dialog;

import java.util.Iterator;
import org.eclipse.core.databinding.DataBindingContext;
import org.eclipse.core.databinding.ValidationStatusProvider;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.databinding.util.Policy;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.databinding.dialog.IValidationMessageProvider;
import org.eclipse.jface.databinding.dialog.MaxSeverityValidationStatusProvider;
import org.eclipse.jface.databinding.dialog.ValidationMessageProvider;
import org.eclipse.jface.dialogs.TitleAreaDialog;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;

public class TitleAreaDialogSupport {
    private TitleAreaDialog dialog;
    private DataBindingContext dbc;
    private IValidationMessageProvider messageProvider = new ValidationMessageProvider();
    private IObservableValue aggregateStatusProvider;
    private boolean uiChanged = false;
    private IChangeListener uiChangeListener = new IChangeListener(){

        public void handleChange(ChangeEvent event) {
            TitleAreaDialogSupport.this.handleUIChanged();
        }
    };
    private IListChangeListener validationStatusProvidersListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            ListDiff diff = event.diff;
            ListDiffEntry[] differences = diff.getDifferences();
            int i = 0;
            while (i < differences.length) {
                Iterator it;
                ListDiffEntry listDiffEntry = differences[i];
                ValidationStatusProvider validationStatusProvider = (ValidationStatusProvider)listDiffEntry.getElement();
                IObservableList targets = validationStatusProvider.getTargets();
                if (listDiffEntry.isAddition()) {
                    targets.addListChangeListener(TitleAreaDialogSupport.this.validationStatusProviderTargetsListener);
                    it = targets.iterator();
                    while (it.hasNext()) {
                        ((IObservable)it.next()).addChangeListener(TitleAreaDialogSupport.this.uiChangeListener);
                    }
                } else {
                    targets.removeListChangeListener(TitleAreaDialogSupport.this.validationStatusProviderTargetsListener);
                    it = targets.iterator();
                    while (it.hasNext()) {
                        ((IObservable)it.next()).removeChangeListener(TitleAreaDialogSupport.this.uiChangeListener);
                    }
                }
                ++i;
            }
        }
    };
    private IListChangeListener validationStatusProviderTargetsListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            ListDiff diff = event.diff;
            ListDiffEntry[] differences = diff.getDifferences();
            int i = 0;
            while (i < differences.length) {
                ListDiffEntry listDiffEntry = differences[i];
                IObservable target = (IObservable)listDiffEntry.getElement();
                if (listDiffEntry.isAddition()) {
                    target.addChangeListener(TitleAreaDialogSupport.this.uiChangeListener);
                } else {
                    target.removeChangeListener(TitleAreaDialogSupport.this.uiChangeListener);
                }
                ++i;
            }
        }
    };
    private ValidationStatusProvider currentStatusProvider;
    private IStatus currentStatus;

    public static TitleAreaDialogSupport create(TitleAreaDialog dialog, DataBindingContext dbc) {
        return new TitleAreaDialogSupport(dialog, dbc);
    }

    private TitleAreaDialogSupport(TitleAreaDialog dialogPage, DataBindingContext dbc) {
        this.dialog = dialogPage;
        this.dbc = dbc;
        this.init();
    }

    public void setValidationMessageProvider(IValidationMessageProvider messageProvider) {
        this.messageProvider = messageProvider;
        this.handleStatusChanged();
    }

    private void init() {
        ObservableTracker.setIgnore((boolean)true);
        try {
            this.aggregateStatusProvider = new MaxSeverityValidationStatusProvider(this.dbc);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        this.aggregateStatusProvider.addValueChangeListener(new IValueChangeListener(){

            public void handleValueChange(ValueChangeEvent event) {
                TitleAreaDialogSupport.this.statusProviderChanged();
            }
        });
        this.dialog.getShell().addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                TitleAreaDialogSupport.this.dispose();
            }
        });
        this.statusProviderChanged();
        this.dbc.getValidationStatusProviders().addListChangeListener(this.validationStatusProvidersListener);
        Iterator it = this.dbc.getValidationStatusProviders().iterator();
        while (it.hasNext()) {
            ValidationStatusProvider validationStatusProvider = (ValidationStatusProvider)it.next();
            IObservableList targets = validationStatusProvider.getTargets();
            targets.addListChangeListener(this.validationStatusProviderTargetsListener);
            Iterator iter = targets.iterator();
            while (iter.hasNext()) {
                ((IObservable)iter.next()).addChangeListener(this.uiChangeListener);
            }
        }
    }

    private void statusProviderChanged() {
        this.currentStatusProvider = (ValidationStatusProvider)this.aggregateStatusProvider.getValue();
        this.currentStatus = this.currentStatusProvider != null ? (IStatus)this.currentStatusProvider.getValidationStatus().getValue() : null;
        this.handleStatusChanged();
    }

    private void handleUIChanged() {
        this.uiChanged = true;
        if (this.currentStatus != null) {
            this.handleStatusChanged();
        }
        this.dbc.getValidationStatusProviders().removeListChangeListener(this.validationStatusProvidersListener);
        Iterator it = this.dbc.getValidationStatusProviders().iterator();
        while (it.hasNext()) {
            ValidationStatusProvider validationStatusProvider = (ValidationStatusProvider)it.next();
            IObservableList targets = validationStatusProvider.getTargets();
            targets.removeListChangeListener(this.validationStatusProviderTargetsListener);
            Iterator iter = targets.iterator();
            while (iter.hasNext()) {
                ((IObservable)iter.next()).removeChangeListener(this.uiChangeListener);
            }
        }
    }

    private void handleStatusChanged() {
        if (this.dialog.getShell() == null || this.dialog.getShell().isDisposed()) {
            return;
        }
        String message = this.messageProvider.getMessage(this.currentStatusProvider);
        int type = this.messageProvider.getMessageType(this.currentStatusProvider);
        if (type == 3) {
            this.dialog.setMessage(null);
            this.dialog.setErrorMessage(this.uiChanged ? message : null);
            if (this.currentStatus != null && this.currentStatusHasException()) {
                this.handleStatusException();
            }
        } else {
            this.dialog.setErrorMessage(null);
            this.dialog.setMessage(message, type);
        }
    }

    private boolean currentStatusHasException() {
        boolean hasException = false;
        if (this.currentStatus.getException() != null) {
            hasException = true;
        }
        if (this.currentStatus instanceof MultiStatus) {
            MultiStatus multiStatus = (MultiStatus)this.currentStatus;
            int i = 0;
            while (i < multiStatus.getChildren().length) {
                IStatus status = multiStatus.getChildren()[i];
                if (status.getException() != null) {
                    hasException = true;
                    break;
                }
                ++i;
            }
        }
        return hasException;
    }

    private void handleStatusException() {
        if (this.currentStatus.getException() != null) {
            this.logThrowable(this.currentStatus.getException());
        } else if (this.currentStatus instanceof MultiStatus) {
            MultiStatus multiStatus = (MultiStatus)this.currentStatus;
            int i = 0;
            while (i < multiStatus.getChildren().length) {
                IStatus status = multiStatus.getChildren()[i];
                if (status.getException() != null) {
                    this.logThrowable(status.getException());
                }
                ++i;
            }
        }
    }

    private void logThrowable(Throwable throwable) {
        Policy.getLog().log((IStatus)new Status(4, "org.eclipse.core.databinding", 0, "Unhandled exception: " + throwable.getMessage(), throwable));
    }

    public void dispose() {
        if (this.aggregateStatusProvider != null) {
            this.aggregateStatusProvider.dispose();
        }
        if (this.dbc != null && !this.uiChanged) {
            Iterator it = this.dbc.getValidationStatusProviders().iterator();
            while (it.hasNext()) {
                ValidationStatusProvider validationStatusProvider = (ValidationStatusProvider)it.next();
                IObservableList targets = validationStatusProvider.getTargets();
                targets.removeListChangeListener(this.validationStatusProviderTargetsListener);
                Iterator iter = targets.iterator();
                while (iter.hasNext()) {
                    ((IObservable)iter.next()).removeChangeListener(this.uiChangeListener);
                }
            }
            this.dbc.getValidationStatusProviders().removeListChangeListener(this.validationStatusProvidersListener);
        }
        this.aggregateStatusProvider = null;
        this.dbc = null;
        this.uiChangeListener = null;
        this.validationStatusProvidersListener = null;
        this.validationStatusProviderTargetsListener = null;
        this.dialog = null;
    }
}

