/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.dialogs;

import java.util.Arrays;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.dialogs.SelectionDialog;
import org.eclipse.ui.internal.MessageLine;

public abstract class SelectionStatusDialog
extends SelectionDialog {
    private MessageLine fStatusLine;
    private IStatus fLastStatus;
    private Image fImage;
    private boolean fStatusLineAboveButtons = false;

    public SelectionStatusDialog(Shell parent) {
        super(parent);
    }

    public void setStatusLineAboveButtons(boolean aboveButtons) {
        this.fStatusLineAboveButtons = aboveButtons;
    }

    public void setImage(Image image) {
        this.fImage = image;
    }

    public Object getFirstResult() {
        Object[] result = this.getResult();
        if (result == null || result.length == 0) {
            return null;
        }
        return result[0];
    }

    protected void setResult(int position, Object element) {
        Object[] result = this.getResult();
        result[position] = element;
        this.setResult(Arrays.asList(result));
    }

    protected abstract void computeResult();

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        if (this.fImage != null) {
            shell.setImage(this.fImage);
        }
    }

    protected void updateStatus(IStatus status) {
        this.fLastStatus = status;
        if (this.fStatusLine != null && !this.fStatusLine.isDisposed()) {
            this.updateButtonsEnableState(status);
            this.fStatusLine.setErrorStatus(status);
        }
    }

    protected void updateButtonsEnableState(IStatus status) {
        Button okButton = this.getOkButton();
        if (okButton != null && !okButton.isDisposed()) {
            okButton.setEnabled(!status.matches(4));
        }
    }

    protected void okPressed() {
        this.computeResult();
        super.okPressed();
    }

    public void create() {
        super.create();
        if (this.fLastStatus != null) {
            this.updateStatus(this.fLastStatus);
        }
    }

    protected Control createButtonBar(Composite parent) {
        Font font = parent.getFont();
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        if (!this.fStatusLineAboveButtons) {
            layout.numColumns = 2;
        }
        layout.marginHeight = 0;
        layout.marginLeft = this.convertHorizontalDLUsToPixels(7);
        layout.marginWidth = 0;
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(768));
        composite.setFont(font);
        if (!this.fStatusLineAboveButtons && this.isHelpAvailable()) {
            this.createHelpControl(composite);
        }
        this.fStatusLine = new MessageLine(composite);
        this.fStatusLine.setAlignment(16384);
        GridData statusData = new GridData(768);
        this.fStatusLine.setErrorStatus(null);
        this.fStatusLine.setFont(font);
        if (this.fStatusLineAboveButtons && this.isHelpAvailable()) {
            statusData.horizontalSpan = 2;
            this.createHelpControl(composite);
        }
        this.fStatusLine.setLayoutData(statusData);
        boolean helpAvailable = this.isHelpAvailable();
        this.setHelpAvailable(false);
        super.createButtonBar(composite);
        this.setHelpAvailable(helpAvailable);
        return composite;
    }
}

