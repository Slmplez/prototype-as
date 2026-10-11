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
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Scale
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Scale;

public class ScaleFieldEditor
extends FieldEditor {
    private int incrementValue;
    private int maxValue;
    private int minValue;
    private int oldValue;
    private int pageIncrementValue;
    protected Scale scale;

    public ScaleFieldEditor(String name, String labelText, Composite parent) {
        super(name, labelText, parent);
        this.setDefaultValues();
    }

    public ScaleFieldEditor(String name, String labelText, Composite parent, int min, int max, int increment, int pageIncrement) {
        super(name, labelText, parent);
        this.setValues(min, max, increment, pageIncrement);
    }

    protected void adjustForNumColumns(int numColumns) {
        ((GridData)this.scale.getLayoutData()).horizontalSpan = numColumns - 1;
    }

    protected void doFillIntoGrid(Composite parent, int numColumns) {
        Label control = this.getLabelControl(parent);
        GridData gd = new GridData();
        control.setLayoutData((Object)gd);
        this.scale = this.getScaleControl(parent);
        gd = new GridData(768);
        gd.verticalAlignment = 4;
        gd.horizontalSpan = numColumns - 1;
        gd.grabExcessHorizontalSpace = true;
        this.scale.setLayoutData((Object)gd);
        this.updateScale();
    }

    protected void doLoad() {
        if (this.scale != null) {
            int value = this.getPreferenceStore().getInt(this.getPreferenceName());
            this.scale.setSelection(value);
            this.oldValue = value;
        }
    }

    protected void doLoadDefault() {
        if (this.scale != null) {
            int value = this.getPreferenceStore().getDefaultInt(this.getPreferenceName());
            this.scale.setSelection(value);
        }
        this.valueChanged();
    }

    protected void doStore() {
        this.getPreferenceStore().setValue(this.getPreferenceName(), this.scale.getSelection());
    }

    public int getIncrement() {
        return this.incrementValue;
    }

    public int getMaximum() {
        return this.maxValue;
    }

    public int getMinimum() {
        return this.minValue;
    }

    public int getNumberOfControls() {
        return 2;
    }

    public int getPageIncrement() {
        return this.pageIncrementValue;
    }

    public Scale getScaleControl() {
        return this.scale;
    }

    private Scale getScaleControl(Composite parent) {
        if (this.scale == null) {
            this.scale = new Scale(parent, 256);
            this.scale.setFont(parent.getFont());
            this.scale.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent event) {
                    ScaleFieldEditor.this.valueChanged();
                }
            });
            this.scale.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    ScaleFieldEditor.this.scale = null;
                }
            });
        } else {
            this.checkParent((Control)this.scale, parent);
        }
        return this.scale;
    }

    private void setDefaultValues() {
        this.setValues(0, 10, 1, 1);
    }

    public void setFocus() {
        if (this.scale != null && !this.scale.isDisposed()) {
            this.scale.setFocus();
        }
    }

    public void setIncrement(int increment) {
        this.incrementValue = increment;
        this.updateScale();
    }

    public void setMaximum(int max) {
        this.maxValue = max;
        this.updateScale();
    }

    public void setMinimum(int min) {
        this.minValue = min;
        this.updateScale();
    }

    public void setPageIncrement(int pageIncrement) {
        this.pageIncrementValue = pageIncrement;
        this.updateScale();
    }

    private void setValues(int min, int max, int increment, int pageIncrement) {
        this.incrementValue = increment;
        this.maxValue = max;
        this.minValue = min;
        this.pageIncrementValue = pageIncrement;
        this.updateScale();
    }

    private void updateScale() {
        if (this.scale != null && !this.scale.isDisposed()) {
            this.scale.setMinimum(this.getMinimum());
            this.scale.setMaximum(this.getMaximum());
            this.scale.setIncrement(this.getIncrement());
            this.scale.setPageIncrement(this.getPageIncrement());
        }
    }

    protected void valueChanged() {
        this.setPresentsDefaultValue(false);
        int newValue = this.scale.getSelection();
        if (newValue != this.oldValue) {
            this.fireStateChanged("field_editor_is_valid", false, true);
            this.fireValueChanged("field_editor_value", new Integer(this.oldValue), new Integer(newValue));
            this.oldValue = newValue;
        }
    }
}

