/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.ui.IMemento
 *  org.eclipse.ui.actions.SelectionProviderAction
 */
package org.eclipse.ui.internal.views.log;

import java.util.Comparator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.actions.SelectionProviderAction;
import org.eclipse.ui.internal.views.log.EventDetailsDialog;
import org.eclipse.ui.internal.views.log.LogEntry;
import org.eclipse.ui.internal.views.log.Messages;

public class EventDetailsDialogAction
extends SelectionProviderAction {
    private Control control;
    private ISelectionProvider provider;
    private EventDetailsDialog propertyDialog;
    private Comparator comparator;
    private IMemento memento;

    public EventDetailsDialogAction(Control control, ISelectionProvider provider, IMemento memento) {
        super(provider, Messages.EventDetailsDialog_title);
        Assert.isNotNull((Object)control);
        this.control = control;
        this.provider = provider;
        this.memento = memento;
    }

    public boolean resetSelection(byte sortType, int sortOrder) {
        IAdaptable element = (IAdaptable)this.getStructuredSelection().getFirstElement();
        if (element == null) {
            return false;
        }
        if (this.propertyDialog != null && this.propertyDialog.isOpen()) {
            this.propertyDialog.resetSelection(element, sortType, sortOrder);
            return true;
        }
        return false;
    }

    public void resetSelection() {
        IAdaptable element = (IAdaptable)this.getStructuredSelection().getFirstElement();
        if (element == null || !(element instanceof LogEntry)) {
            return;
        }
        if (this.propertyDialog != null && this.propertyDialog.isOpen()) {
            this.propertyDialog.resetSelection(element);
        }
    }

    public void resetDialogButtons() {
        if (this.propertyDialog != null && this.propertyDialog.isOpen()) {
            this.propertyDialog.resetButtons();
        }
    }

    public void setComparator(Comparator comparator) {
        this.comparator = comparator;
        if (this.propertyDialog != null && this.propertyDialog.isOpen()) {
            this.propertyDialog.setComparator(comparator);
        }
    }

    public void run() {
        if (this.propertyDialog != null && this.propertyDialog.isOpen()) {
            this.resetSelection();
            return;
        }
        IAdaptable element = (IAdaptable)this.getStructuredSelection().getFirstElement();
        if (element == null || !(element instanceof LogEntry)) {
            return;
        }
        this.propertyDialog = new EventDetailsDialog(this.control.getShell(), element, this.provider, this.comparator, this.memento);
        this.propertyDialog.create();
        this.propertyDialog.getShell().setText(Messages.EventDetailsDialog_title);
        this.propertyDialog.open();
    }
}

