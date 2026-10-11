/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.custom.StackLayout
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.IEditorInput
 */
package org.eclipse.ui.texteditor;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.swt.custom.StackLayout;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.texteditor.AbstractTextEditor;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.IDocumentProviderExtension;
import org.eclipse.ui.texteditor.IStatusField;
import org.eclipse.ui.texteditor.InfoForm;

public class StatusTextEditor
extends AbstractTextEditor {
    private Composite fParent;
    private StackLayout fStackLayout;
    private Composite fDefaultComposite;
    private Control fStatusControl;

    public void createPartControl(Composite parent) {
        this.fParent = new Composite(parent, 0);
        this.fStackLayout = new StackLayout();
        this.fParent.setLayout((Layout)this.fStackLayout);
        this.fDefaultComposite = new Composite(this.fParent, 0);
        this.fDefaultComposite.setLayout((Layout)new FillLayout());
        super.createPartControl(this.fDefaultComposite);
        this.updatePartControl(this.getEditorInput());
    }

    public void updatePartControl(IEditorInput input) {
        boolean restoreFocus = false;
        if (this.fStatusControl != null) {
            if (!this.fStatusControl.isDisposed()) {
                restoreFocus = this.containsFocus(this.fStatusControl);
            }
            this.fStatusControl.dispose();
            this.fStatusControl = null;
        }
        Composite front = null;
        if (this.fParent != null && input != null && this.getDocumentProvider() instanceof IDocumentProviderExtension) {
            IDocumentProviderExtension extension = (IDocumentProviderExtension)((Object)this.getDocumentProvider());
            IStatus status = extension.getStatus(input);
            if (!this.isErrorStatus(status)) {
                front = this.fDefaultComposite;
            } else {
                this.fStatusControl = this.createStatusControl(this.fParent, status);
                front = this.fStatusControl;
            }
        }
        if (this.fStackLayout.topControl != front) {
            this.fStackLayout.topControl = front;
            this.fParent.layout();
            this.updateStatusFields();
        }
        if (restoreFocus && this.fStatusControl != null && !this.containsFocus(this.fStatusControl)) {
            this.fParent.setFocus();
        }
    }

    private boolean containsFocus(Control control) {
        Control focusControl = control.getDisplay().getFocusControl();
        if (focusControl != null) {
            focusControl = focusControl.getParent();
            while (focusControl != this.fParent && focusControl != null && !(focusControl instanceof Shell)) {
                focusControl = focusControl.getParent();
            }
        }
        return focusControl == this.fParent;
    }

    public void setFocus() {
        if (this.fStatusControl != null && !this.fStatusControl.isDisposed()) {
            this.fStatusControl.setFocus();
        } else {
            super.setFocus();
        }
    }

    public boolean validateEditorInputState() {
        if (!super.validateEditorInputState()) {
            return false;
        }
        if (this.getDocumentProvider() instanceof IDocumentProviderExtension) {
            IDocumentProviderExtension extension = (IDocumentProviderExtension)((Object)this.getDocumentProvider());
            IStatus status = extension.getStatus(this.getEditorInput());
            return !this.isErrorStatus(status) && status.getSeverity() != 8;
        }
        return true;
    }

    protected boolean isErrorStatus(IStatus status) {
        return status != null && status.getSeverity() == 4;
    }

    protected Control createStatusControl(Composite parent, IStatus status) {
        return this.createInfoForm(parent, status);
    }

    private Control createInfoForm(Composite parent, IStatus status) {
        InfoForm infoForm = new InfoForm(parent);
        infoForm.setHeaderText(this.getStatusHeader(status));
        infoForm.setBannerText(this.getStatusBanner(status));
        infoForm.setInfo(this.getStatusMessage(status));
        return infoForm.getControl();
    }

    protected String getStatusHeader(IStatus status) {
        return "";
    }

    protected String getStatusBanner(IStatus status) {
        return "";
    }

    protected String getStatusMessage(IStatus status) {
        return status.getMessage();
    }

    protected void updateStatusField(String category) {
        IStatusField field;
        IDocumentProviderExtension extension;
        IStatus status;
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider instanceof IDocumentProviderExtension && this.isErrorStatus(status = (extension = (IDocumentProviderExtension)((Object)provider)).getStatus(this.getEditorInput())) && (field = this.getStatusField(category)) != null) {
            field.setText(this.fErrorLabel);
            return;
        }
        super.updateStatusField(category);
    }

    protected void doSetInput(IEditorInput input) throws CoreException {
        super.doSetInput(input);
        if (this.fParent != null && !this.fParent.isDisposed()) {
            this.updatePartControl(this.getEditorInput());
        }
    }

    public void doRevertToSaved() {
        super.doRevertToSaved();
        if (this.fParent != null && !this.fParent.isDisposed()) {
            this.updatePartControl(this.getEditorInput());
        }
    }

    protected void sanityCheckState(IEditorInput input) {
        super.sanityCheckState(input);
        if (this.fParent != null && !this.fParent.isDisposed()) {
            this.updatePartControl(this.getEditorInput());
        }
    }

    protected void handleEditorInputChanged() {
        super.handleEditorInputChanged();
        if (this.fParent != null && !this.fParent.isDisposed()) {
            this.updatePartControl(this.getEditorInput());
        }
    }

    protected void handleElementContentReplaced() {
        super.handleElementContentReplaced();
        if (this.fParent != null && !this.fParent.isDisposed()) {
            this.updatePartControl(this.getEditorInput());
        }
    }
}

