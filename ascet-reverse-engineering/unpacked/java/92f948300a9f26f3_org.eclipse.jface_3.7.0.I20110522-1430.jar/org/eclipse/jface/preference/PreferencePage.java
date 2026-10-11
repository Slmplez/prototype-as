/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.DialogPage;
import org.eclipse.jface.preference.IPreferencePage;
import org.eclipse.jface.preference.IPreferencePageContainer;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;

public abstract class PreferencePage
extends DialogPage
implements IPreferencePage {
    private IPreferenceStore preferenceStore;
    private boolean isValid = true;
    private Control body;
    private boolean createDefaultAndApplyButton = true;
    private Button defaultsButton = null;
    private IPreferencePageContainer container = null;
    private Button applyButton = null;
    private Label descriptionLabel;
    private Point size = null;

    protected PreferencePage() {
        this("");
    }

    protected PreferencePage(String title) {
        super(title);
    }

    protected PreferencePage(String title, ImageDescriptor image) {
        super(title, image);
    }

    public Point computeSize() {
        if (this.size != null) {
            return this.size;
        }
        Control control = this.getControl();
        if (control != null) {
            this.size = this.doComputeSize();
            return this.size;
        }
        return new Point(0, 0);
    }

    protected void contributeButtons(Composite parent) {
    }

    protected abstract Control createContents(Composite var1);

    public void createControl(Composite parent) {
        Composite content = new Composite(parent, 0);
        this.setControl((Control)content);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        content.setLayout((Layout)layout);
        this.applyDialogFont(content);
        this.initializeDialogUnits((Control)content);
        this.descriptionLabel = this.createDescriptionLabel(content);
        if (this.descriptionLabel != null) {
            this.descriptionLabel.setLayoutData((Object)new GridData(768));
        }
        this.body = this.createContents(content);
        if (this.body != null) {
            this.body.setLayoutData((Object)new GridData(1808));
        }
        Composite buttonBar = new Composite(content, 0);
        layout = new GridLayout();
        layout.numColumns = 0;
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.makeColumnsEqualWidth = false;
        buttonBar.setLayout((Layout)layout);
        GridData gd = new GridData(128);
        buttonBar.setLayoutData((Object)gd);
        this.contributeButtons(buttonBar);
        if (this.createDefaultAndApplyButton) {
            layout.numColumns += 2;
            String[] labels = JFaceResources.getStrings(new String[]{"defaults", "apply"});
            int widthHint = this.convertHorizontalDLUsToPixels(61);
            this.defaultsButton = new Button(buttonBar, 8);
            this.defaultsButton.setText(labels[0]);
            Dialog.applyDialogFont((Control)this.defaultsButton);
            GridData data = new GridData(256);
            Point minButtonSize = this.defaultsButton.computeSize(-1, -1, true);
            data.widthHint = Math.max(widthHint, minButtonSize.x);
            this.defaultsButton.setLayoutData((Object)data);
            this.defaultsButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    PreferencePage.this.performDefaults();
                }
            });
            this.applyButton = new Button(buttonBar, 8);
            this.applyButton.setText(labels[1]);
            Dialog.applyDialogFont((Control)this.applyButton);
            data = new GridData(256);
            minButtonSize = this.applyButton.computeSize(-1, -1, true);
            data.widthHint = Math.max(widthHint, minButtonSize.x);
            this.applyButton.setLayoutData((Object)data);
            this.applyButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    PreferencePage.this.performApply();
                }
            });
            this.applyButton.setEnabled(this.isValid());
            this.applyDialogFont(buttonBar);
        } else if (buttonBar.getChildren().length < 1) {
            buttonBar.dispose();
        }
    }

    protected void applyDialogFont(Composite composite) {
        Dialog.applyDialogFont((Control)composite);
    }

    protected Label createDescriptionLabel(Composite parent) {
        Label result = null;
        String description = this.getDescription();
        if (description != null) {
            result = new Label(parent, 64);
            result.setFont(parent.getFont());
            result.setText(description);
        }
        return result;
    }

    protected Point doComputeSize() {
        if (this.descriptionLabel != null && this.body != null) {
            Point bodySize = this.body.computeSize(-1, -1, true);
            GridData gd = (GridData)this.descriptionLabel.getLayoutData();
            gd.widthHint = bodySize.x;
        }
        return this.getControl().computeSize(-1, -1, true);
    }

    protected IPreferenceStore doGetPreferenceStore() {
        return null;
    }

    public IPreferencePageContainer getContainer() {
        return this.container;
    }

    public IPreferenceStore getPreferenceStore() {
        if (this.preferenceStore == null) {
            this.preferenceStore = this.doGetPreferenceStore();
        }
        if (this.preferenceStore != null) {
            return this.preferenceStore;
        }
        if (this.container != null) {
            return this.container.getPreferenceStore();
        }
        return null;
    }

    public boolean isValid() {
        return this.isValid;
    }

    protected void noDefaultAndApplyButton() {
        this.createDefaultAndApplyButton = false;
    }

    public boolean okToLeave() {
        return this.isValid();
    }

    protected void performApply() {
        this.performOk();
    }

    public boolean performCancel() {
        return true;
    }

    protected void performDefaults() {
        this.updateApplyButton();
    }

    public boolean performOk() {
        return true;
    }

    public void setContainer(IPreferencePageContainer container) {
        this.container = container;
    }

    public void setPreferenceStore(IPreferenceStore store) {
        this.preferenceStore = store;
    }

    public void setSize(Point uiSize) {
        Control control = this.getControl();
        if (control != null) {
            control.setSize(uiSize);
            this.size = uiSize;
        }
    }

    public void setTitle(String title) {
        super.setTitle(title);
        if (this.getContainer() != null) {
            this.getContainer().updateTitle();
        }
    }

    public void setValid(boolean b) {
        boolean oldValue = this.isValid;
        this.isValid = b;
        if (oldValue != this.isValid) {
            if (this.getContainer() != null) {
                this.getContainer().updateButtons();
            }
            this.updateApplyButton();
        }
    }

    public String toString() {
        return this.getTitle();
    }

    protected void updateApplyButton() {
        if (this.applyButton != null) {
            this.applyButton.setEnabled(this.isValid());
        }
    }

    protected Composite createNoteComposite(Font font, Composite composite, String title, String message) {
        Composite messageComposite = new Composite(composite, 0);
        GridLayout messageLayout = new GridLayout();
        messageLayout.numColumns = 2;
        messageLayout.marginWidth = 0;
        messageLayout.marginHeight = 0;
        messageComposite.setLayout((Layout)messageLayout);
        messageComposite.setLayoutData((Object)new GridData(256));
        messageComposite.setFont(font);
        Label noteLabel = new Label(messageComposite, 1);
        noteLabel.setText(title);
        noteLabel.setFont(JFaceResources.getFontRegistry().getBold("org.eclipse.jface.dialogfont"));
        noteLabel.setLayoutData((Object)new GridData(2));
        Label messageLabel = new Label(messageComposite, 64);
        messageLabel.setText(message);
        messageLabel.setFont(font);
        return messageComposite;
    }

    protected Button getApplyButton() {
        return this.applyButton;
    }

    protected Button getDefaultsButton() {
        return this.defaultsButton;
    }

    public void performHelp() {
        this.getControl().notifyListeners(28, new Event());
    }

    public void applyData(Object data) {
    }

    public void setErrorMessage(String newMessage) {
        super.setErrorMessage(newMessage);
        if (this.getContainer() != null) {
            this.getContainer().updateMessage();
        }
    }

    public void setMessage(String newMessage, int newType) {
        super.setMessage(newMessage, newType);
        if (this.getContainer() != null) {
            this.getContainer().updateMessage();
        }
    }
}

