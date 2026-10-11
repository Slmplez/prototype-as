/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.preference.StringFieldEditor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Text;

public class IntegerFieldEditor
extends StringFieldEditor {
    private int minValidValue = 0;
    private int maxValidValue = Integer.MAX_VALUE;
    private static final int DEFAULT_TEXT_LIMIT = 10;

    protected IntegerFieldEditor() {
    }

    public IntegerFieldEditor(String name, String labelText, Composite parent) {
        this(name, labelText, parent, 10);
    }

    public IntegerFieldEditor(String name, String labelText, Composite parent, int textLimit) {
        this.init(name, labelText);
        this.setTextLimit(textLimit);
        this.setEmptyStringAllowed(false);
        this.setErrorMessage(JFaceResources.getString("IntegerFieldEditor.errorMessage"));
        this.createControl(parent);
    }

    public void setValidRange(int min, int max) {
        this.minValidValue = min;
        this.maxValidValue = max;
        this.setErrorMessage(JFaceResources.format("IntegerFieldEditor.errorMessageRange", new Object[]{new Integer(min), new Integer(max)}));
    }

    protected boolean checkState() {
        block4: {
            Text text = this.getTextControl();
            if (text == null) {
                return false;
            }
            String numberString = text.getText();
            try {
                int number = Integer.valueOf(numberString);
                if (number < this.minValidValue || number > this.maxValidValue) break block4;
                this.clearErrorMessage();
                return true;
            }
            catch (NumberFormatException numberFormatException) {
                this.showErrorMessage();
                return false;
            }
        }
        this.showErrorMessage();
        return false;
    }

    protected void doLoad() {
        Text text = this.getTextControl();
        if (text != null) {
            int value = this.getPreferenceStore().getInt(this.getPreferenceName());
            text.setText("" + value);
            this.oldValue = "" + value;
        }
    }

    protected void doLoadDefault() {
        Text text = this.getTextControl();
        if (text != null) {
            int value = this.getPreferenceStore().getDefaultInt(this.getPreferenceName());
            text.setText("" + value);
        }
        this.valueChanged();
    }

    protected void doStore() {
        Text text = this.getTextControl();
        if (text != null) {
            Integer i = new Integer(text.getText());
            this.getPreferenceStore().setValue(this.getPreferenceName(), i);
        }
    }

    public int getIntValue() throws NumberFormatException {
        return new Integer(this.getStringValue());
    }
}

