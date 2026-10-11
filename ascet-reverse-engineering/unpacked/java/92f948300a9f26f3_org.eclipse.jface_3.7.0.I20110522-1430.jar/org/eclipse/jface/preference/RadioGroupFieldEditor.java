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
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Group
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.jface.preference;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;

public class RadioGroupFieldEditor
extends FieldEditor {
    private String[][] labelsAndValues;
    private int numColumns;
    private int indent = 8;
    private String value;
    private Composite radioBox;
    private Button[] radioButtons;
    private boolean useGroup;

    protected RadioGroupFieldEditor() {
    }

    public RadioGroupFieldEditor(String name, String labelText, int numColumns, String[][] labelAndValues, Composite parent) {
        this(name, labelText, numColumns, labelAndValues, parent, false);
    }

    public RadioGroupFieldEditor(String name, String labelText, int numColumns, String[][] labelAndValues, Composite parent, boolean useGroup) {
        this.init(name, labelText);
        Assert.isTrue((boolean)this.checkArray(labelAndValues));
        this.labelsAndValues = labelAndValues;
        this.numColumns = numColumns;
        this.useGroup = useGroup;
        this.createControl(parent);
    }

    protected void adjustForNumColumns(int numColumns) {
        Label control = this.getLabelControl();
        if (control != null) {
            ((GridData)control.getLayoutData()).horizontalSpan = numColumns;
        }
        ((GridData)this.radioBox.getLayoutData()).horizontalSpan = numColumns;
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

    protected void doFillIntoGrid(Composite parent, int numColumns) {
        if (this.useGroup) {
            Composite control = this.getRadioBoxControl(parent);
            GridData gd = new GridData(768);
            control.setLayoutData((Object)gd);
        } else {
            Label control = this.getLabelControl(parent);
            GridData gd = new GridData();
            gd.horizontalSpan = numColumns;
            control.setLayoutData((Object)gd);
            control = this.getRadioBoxControl(parent);
            gd = new GridData();
            gd.horizontalSpan = numColumns;
            gd.horizontalIndent = this.indent;
            control.setLayoutData((Object)gd);
        }
    }

    protected void doLoad() {
        this.updateValue(this.getPreferenceStore().getString(this.getPreferenceName()));
    }

    protected void doLoadDefault() {
        this.updateValue(this.getPreferenceStore().getDefaultString(this.getPreferenceName()));
    }

    protected void doStore() {
        if (this.value == null) {
            this.getPreferenceStore().setToDefault(this.getPreferenceName());
            return;
        }
        this.getPreferenceStore().setValue(this.getPreferenceName(), this.value);
    }

    public int getNumberOfControls() {
        return 1;
    }

    public Composite getRadioBoxControl(Composite parent) {
        if (this.radioBox == null) {
            Font font = parent.getFont();
            if (this.useGroup) {
                Group group = new Group(parent, 0);
                group.setFont(font);
                String text = this.getLabelText();
                if (text != null) {
                    group.setText(text);
                }
                this.radioBox = group;
                GridLayout layout = new GridLayout();
                layout.horizontalSpacing = 8;
                layout.numColumns = this.numColumns;
                this.radioBox.setLayout((Layout)layout);
            } else {
                this.radioBox = new Composite(parent, 0);
                GridLayout layout = new GridLayout();
                layout.marginWidth = 0;
                layout.marginHeight = 0;
                layout.horizontalSpacing = 8;
                layout.numColumns = this.numColumns;
                this.radioBox.setLayout((Layout)layout);
                this.radioBox.setFont(font);
            }
            this.radioButtons = new Button[this.labelsAndValues.length];
            int i = 0;
            while (i < this.labelsAndValues.length) {
                Button radio;
                this.radioButtons[i] = radio = new Button(this.radioBox, 16400);
                String[] labelAndValue = this.labelsAndValues[i];
                radio.setText(labelAndValue[0]);
                radio.setData((Object)labelAndValue[1]);
                radio.setFont(font);
                radio.addSelectionListener((SelectionListener)new SelectionAdapter(){

                    public void widgetSelected(SelectionEvent event) {
                        String oldValue = RadioGroupFieldEditor.this.value;
                        RadioGroupFieldEditor.this.value = (String)event.widget.getData();
                        RadioGroupFieldEditor.this.setPresentsDefaultValue(false);
                        RadioGroupFieldEditor.this.fireValueChanged("field_editor_value", oldValue, RadioGroupFieldEditor.this.value);
                    }
                });
                ++i;
            }
            this.radioBox.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    RadioGroupFieldEditor.this.radioBox = null;
                    RadioGroupFieldEditor.this.radioButtons = null;
                }
            });
        } else {
            this.checkParent((Control)this.radioBox, parent);
        }
        return this.radioBox;
    }

    public void setIndent(int indent) {
        this.indent = indent < 0 ? 0 : indent;
    }

    private void updateValue(String selectedValue) {
        this.value = selectedValue;
        if (this.radioButtons == null) {
            return;
        }
        if (this.value != null) {
            boolean found = false;
            int i = 0;
            while (i < this.radioButtons.length) {
                Button radio = this.radioButtons[i];
                boolean selection = false;
                if (((String)radio.getData()).equals(this.value)) {
                    selection = true;
                    found = true;
                }
                radio.setSelection(selection);
                ++i;
            }
            if (found) {
                return;
            }
        }
        if (this.radioButtons.length > 0) {
            this.radioButtons[0].setSelection(true);
            this.value = (String)this.radioButtons[0].getData();
        }
    }

    public void setEnabled(boolean enabled, Composite parent) {
        if (!this.useGroup) {
            super.setEnabled(enabled, parent);
        }
        int i = 0;
        while (i < this.radioButtons.length) {
            this.radioButtons[i].setEnabled(enabled);
            ++i;
        }
    }
}

