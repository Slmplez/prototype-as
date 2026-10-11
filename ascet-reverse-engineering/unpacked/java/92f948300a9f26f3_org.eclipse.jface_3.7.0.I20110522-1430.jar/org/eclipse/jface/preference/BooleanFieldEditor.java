/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;

public class BooleanFieldEditor
extends FieldEditor {
    public static final int DEFAULT = 0;
    public static final int SEPARATE_LABEL = 1;
    private int style;
    private boolean wasSelected;
    private Button checkBox = null;

    protected BooleanFieldEditor() {
    }

    public BooleanFieldEditor(String name, String labelText, int style, Composite parent) {
        this.init(name, labelText);
        this.style = style;
        this.createControl(parent);
    }

    public BooleanFieldEditor(String name, String label, Composite parent) {
        this(name, label, 0, parent);
    }

    protected void adjustForNumColumns(int numColumns) {
        if (this.style == 1) {
            --numColumns;
        }
        ((GridData)this.checkBox.getLayoutData()).horizontalSpan = numColumns;
    }

    protected void doFillIntoGrid(Composite parent, int numColumns) {
        String text = this.getLabelText();
        switch (this.style) {
            case 1: {
                this.getLabelControl(parent);
                --numColumns;
                text = null;
            }
        }
        this.checkBox = this.getChangeControl(parent);
        GridData gd = new GridData();
        gd.horizontalSpan = numColumns;
        this.checkBox.setLayoutData((Object)gd);
        if (text != null) {
            this.checkBox.setText(text);
        }
    }

    public Control getDescriptionControl(Composite parent) {
        if (this.style == 1) {
            return this.getLabelControl(parent);
        }
        return this.getChangeControl(parent);
    }

    protected void doLoad() {
        if (this.checkBox != null) {
            boolean value = this.getPreferenceStore().getBoolean(this.getPreferenceName());
            this.checkBox.setSelection(value);
            this.wasSelected = value;
        }
    }

    protected void doLoadDefault() {
        if (this.checkBox != null) {
            boolean value = this.getPreferenceStore().getDefaultBoolean(this.getPreferenceName());
            this.checkBox.setSelection(value);
            this.wasSelected = value;
        }
    }

    protected void doStore() {
        this.getPreferenceStore().setValue(this.getPreferenceName(), this.checkBox.getSelection());
    }

    public boolean getBooleanValue() {
        return this.checkBox.getSelection();
    }

    protected Button getChangeControl(Composite parent) {
        if (this.checkBox == null) {
            this.checkBox = new Button(parent, 16416);
            this.checkBox.setFont(parent.getFont());
            this.checkBox.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    boolean isSelected = BooleanFieldEditor.this.checkBox.getSelection();
                    BooleanFieldEditor.this.valueChanged(BooleanFieldEditor.this.wasSelected, isSelected);
                    BooleanFieldEditor.this.wasSelected = isSelected;
                }
            });
            this.checkBox.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    BooleanFieldEditor.this.checkBox = null;
                }
            });
        } else {
            this.checkParent((Control)this.checkBox, parent);
        }
        return this.checkBox;
    }

    public int getNumberOfControls() {
        switch (this.style) {
            case 1: {
                return 2;
            }
        }
        return 1;
    }

    public void setFocus() {
        if (this.checkBox != null) {
            this.checkBox.setFocus();
        }
    }

    public void setLabelText(String text) {
        super.setLabelText(text);
        Label label = this.getLabelControl();
        if (label == null && this.checkBox != null) {
            this.checkBox.setText(text);
        }
    }

    protected void valueChanged(boolean oldValue, boolean newValue) {
        this.setPresentsDefaultValue(false);
        if (oldValue != newValue) {
            this.fireStateChanged("field_editor_value", oldValue, newValue);
        }
    }

    public void setEnabled(boolean enabled, Composite parent) {
        if (this.style == 1) {
            super.setEnabled(enabled, parent);
        }
        this.getChangeControl(parent).setEnabled(enabled);
    }
}

