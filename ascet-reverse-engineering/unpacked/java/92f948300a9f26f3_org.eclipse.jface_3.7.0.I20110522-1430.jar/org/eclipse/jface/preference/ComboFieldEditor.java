/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Label
 */
package org.eclipse.jface.preference;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;

public class ComboFieldEditor
extends FieldEditor {
    private Combo fCombo;
    private String fValue;
    private String[][] fEntryNamesAndValues;

    public ComboFieldEditor(String name, String labelText, String[][] entryNamesAndValues, Composite parent) {
        this.init(name, labelText);
        Assert.isTrue((boolean)this.checkArray(entryNamesAndValues));
        this.fEntryNamesAndValues = entryNamesAndValues;
        this.createControl(parent);
    }

    private boolean checkArray(String[][] table) {
        if (table == null) {
            return false;
        }
        int i = 0;
        while (i < table.length) {
            String[] array = table[i];
            if (array == null || array.length != 2) {
                return false;
            }
            ++i;
        }
        return true;
    }

    protected void adjustForNumColumns(int numColumns) {
        if (numColumns > 1) {
            Label control = this.getLabelControl();
            int left = numColumns;
            if (control != null) {
                ((GridData)control.getLayoutData()).horizontalSpan = 1;
                --left;
            }
            ((GridData)this.fCombo.getLayoutData()).horizontalSpan = left;
        } else {
            Label control = this.getLabelControl();
            if (control != null) {
                ((GridData)control.getLayoutData()).horizontalSpan = 1;
            }
            ((GridData)this.fCombo.getLayoutData()).horizontalSpan = 1;
        }
    }

    protected void doFillIntoGrid(Composite parent, int numColumns) {
        int comboC = 1;
        if (numColumns > 1) {
            comboC = numColumns - 1;
        }
        Label control = this.getLabelControl(parent);
        GridData gd = new GridData();
        gd.horizontalSpan = 1;
        control.setLayoutData((Object)gd);
        control = this.getComboBoxControl(parent);
        gd = new GridData();
        gd.horizontalSpan = comboC;
        gd.horizontalAlignment = 4;
        control.setLayoutData((Object)gd);
        control.setFont(parent.getFont());
    }

    protected void doLoad() {
        this.updateComboForValue(this.getPreferenceStore().getString(this.getPreferenceName()));
    }

    protected void doLoadDefault() {
        this.updateComboForValue(this.getPreferenceStore().getDefaultString(this.getPreferenceName()));
    }

    protected void doStore() {
        if (this.fValue == null) {
            this.getPreferenceStore().setToDefault(this.getPreferenceName());
            return;
        }
        this.getPreferenceStore().setValue(this.getPreferenceName(), this.fValue);
    }

    public int getNumberOfControls() {
        return 2;
    }

    private Combo getComboBoxControl(Composite parent) {
        if (this.fCombo == null) {
            this.fCombo = new Combo(parent, 8);
            this.fCombo.setFont(parent.getFont());
            int i = 0;
            while (i < this.fEntryNamesAndValues.length) {
                this.fCombo.add(this.fEntryNamesAndValues[i][0], i);
                ++i;
            }
            this.fCombo.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent evt) {
                    String oldValue = ComboFieldEditor.this.fValue;
                    String name = ComboFieldEditor.this.fCombo.getText();
                    ComboFieldEditor.this.fValue = ComboFieldEditor.this.getValueForName(name);
                    ComboFieldEditor.this.setPresentsDefaultValue(false);
                    ComboFieldEditor.this.fireValueChanged("field_editor_value", oldValue, ComboFieldEditor.this.fValue);
                }
            });
        }
        return this.fCombo;
    }

    private String getValueForName(String name) {
        int i = 0;
        while (i < this.fEntryNamesAndValues.length) {
            String[] entry = this.fEntryNamesAndValues[i];
            if (name.equals(entry[0])) {
                return entry[1];
            }
            ++i;
        }
        return this.fEntryNamesAndValues[0][0];
    }

    private void updateComboForValue(String value) {
        this.fValue = value;
        int i = 0;
        while (i < this.fEntryNamesAndValues.length) {
            if (value.equals(this.fEntryNamesAndValues[i][1])) {
                this.fCombo.setText(this.fEntryNamesAndValues[i][0]);
                return;
            }
            ++i;
        }
        if (this.fEntryNamesAndValues.length > 0) {
            this.fValue = this.fEntryNamesAndValues[0][1];
            this.fCombo.setText(this.fEntryNamesAndValues[0][0]);
        }
    }

    public void setEnabled(boolean enabled, Composite parent) {
        super.setEnabled(enabled, parent);
        this.getComboBoxControl(parent).setEnabled(enabled);
    }
}

