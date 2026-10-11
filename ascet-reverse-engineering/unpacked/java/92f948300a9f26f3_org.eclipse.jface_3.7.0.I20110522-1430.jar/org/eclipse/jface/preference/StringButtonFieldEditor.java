/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.preference;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.StringFieldEditor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;

public abstract class StringButtonFieldEditor
extends StringFieldEditor {
    private Button changeButton;
    private String changeButtonText;

    protected StringButtonFieldEditor() {
    }

    protected StringButtonFieldEditor(String name, String labelText, Composite parent) {
        this.init(name, labelText);
        this.createControl(parent);
    }

    protected void adjustForNumColumns(int numColumns) {
        ((GridData)this.getTextControl().getLayoutData()).horizontalSpan = numColumns - 2;
    }

    protected abstract String changePressed();

    protected void doFillIntoGrid(Composite parent, int numColumns) {
        super.doFillIntoGrid(parent, numColumns - 1);
        this.changeButton = this.getChangeControl(parent);
        GridData gd = new GridData();
        gd.horizontalAlignment = 4;
        int widthHint = this.convertHorizontalDLUsToPixels((Control)this.changeButton, 61);
        gd.widthHint = Math.max(widthHint, this.changeButton.computeSize((int)-1, (int)-1, (boolean)true).x);
        this.changeButton.setLayoutData((Object)gd);
    }

    protected Button getChangeControl(Composite parent) {
        if (this.changeButton == null) {
            this.changeButton = new Button(parent, 8);
            if (this.changeButtonText == null) {
                this.changeButtonText = JFaceResources.getString("openChange");
            }
            this.changeButton.setText(this.changeButtonText);
            this.changeButton.setFont(parent.getFont());
            this.changeButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent evt) {
                    String newValue = StringButtonFieldEditor.this.changePressed();
                    if (newValue != null) {
                        StringButtonFieldEditor.this.setStringValue(newValue);
                    }
                }
            });
            this.changeButton.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    StringButtonFieldEditor.this.changeButton = null;
                }
            });
        } else {
            this.checkParent((Control)this.changeButton, parent);
        }
        return this.changeButton;
    }

    public int getNumberOfControls() {
        return 3;
    }

    protected Shell getShell() {
        if (this.changeButton == null) {
            return null;
        }
        return this.changeButton.getShell();
    }

    public void setChangeButtonText(String text) {
        Assert.isNotNull((Object)text);
        this.changeButtonText = text;
        if (this.changeButton != null) {
            this.changeButton.setText(text);
            Point prefSize = this.changeButton.computeSize(-1, -1);
            GridData data = (GridData)this.changeButton.getLayoutData();
            data.widthHint = Math.max(-1, prefSize.x);
        }
    }

    public void setEnabled(boolean enabled, Composite parent) {
        super.setEnabled(enabled, parent);
        if (this.changeButton != null) {
            this.changeButton.setEnabled(enabled);
        }
    }
}

