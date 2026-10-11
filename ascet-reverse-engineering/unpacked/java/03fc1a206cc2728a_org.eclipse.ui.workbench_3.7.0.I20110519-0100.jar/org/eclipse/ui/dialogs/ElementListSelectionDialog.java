/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.dialogs;

import java.util.Arrays;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.dialogs.AbstractElementListSelectionDialog;

public class ElementListSelectionDialog
extends AbstractElementListSelectionDialog {
    private Object[] fElements;

    public ElementListSelectionDialog(Shell parent, ILabelProvider renderer) {
        super(parent, renderer);
    }

    public void setElements(Object[] elements) {
        this.fElements = elements;
    }

    protected void computeResult() {
        this.setResult(Arrays.asList(this.getSelectedElements()));
    }

    protected Control createDialogArea(Composite parent) {
        Composite contents = (Composite)super.createDialogArea(parent);
        this.createMessageArea(contents);
        this.createFilterText(contents);
        this.createFilteredList(contents);
        this.setListElements(this.fElements);
        this.setSelection(this.getInitialElementSelections().toArray());
        return contents;
    }
}

