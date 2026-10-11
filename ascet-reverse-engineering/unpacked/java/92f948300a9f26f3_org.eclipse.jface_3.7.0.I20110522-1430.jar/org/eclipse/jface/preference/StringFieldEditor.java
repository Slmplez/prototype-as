/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.preference;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Text;

public class StringFieldEditor
extends FieldEditor {
    public static final int VALIDATE_ON_KEY_STROKE = 0;
    public static final int VALIDATE_ON_FOCUS_LOST = 1;
    public static int UNLIMITED = -1;
    private boolean isValid;
    protected String oldValue;
    Text textField;
    private int widthInChars = UNLIMITED;
    private int textLimit = UNLIMITED;
    private String errorMessage;
    private boolean emptyStringAllowed = true;
    private int validateStrategy = 0;

    protected StringFieldEditor() {
    }

    public StringFieldEditor(String name, String labelText, int width, int strategy, Composite parent) {
        this.init(name, labelText);
        this.widthInChars = width;
        this.setValidateStrategy(strategy);
        this.isValid = false;
        this.errorMessage = JFaceResources.getString("StringFieldEditor.errorMessage");
        this.createControl(parent);
    }

    public StringFieldEditor(String name, String labelText, int width, Composite parent) {
        this(name, labelText, width, 0, parent);
    }

    public StringFieldEditor(String name, String labelText, Composite parent) {
        this(name, labelText, UNLIMITED, parent);
    }

    protected void adjustForNumColumns(int numColumns) {
        GridData gd = (GridData)this.textField.getLayoutData();
        gd.horizontalSpan = numColumns - 1;
        gd.grabExcessHorizontalSpace = gd.horizontalSpan == 1;
    }

    protected boolean checkState() {
        String txt;
        boolean result = false;
        if (this.emptyStringAllowed) {
            result = true;
        }
        if (this.textField == null) {
            result = false;
        }
        result = (txt = this.textField.getText()).trim().length() > 0 || this.emptyStringAllowed;
        boolean bl = result = result && this.doCheckState();
        if (result) {
            this.clearErrorMessage();
        } else {
            this.showErrorMessage(this.errorMessage);
        }
        return result;
    }

    protected boolean doCheckState() {
        return true;
    }

    protected void doFillIntoGrid(Composite parent, int numColumns) {
        this.getLabelControl(parent);
        this.textField = this.getTextControl(parent);
        GridData gd = new GridData();
        gd.horizontalSpan = numColumns - 1;
        if (this.widthInChars != UNLIMITED) {
            GC gc = new GC((Drawable)this.textField);
            try {
                Point extent = gc.textExtent("X");
                gd.widthHint = this.widthInChars * extent.x;
            }
            finally {
                gc.dispose();
            }
        } else {
            gd.horizontalAlignment = 4;
            gd.grabExcessHorizontalSpace = true;
        }
        this.textField.setLayoutData((Object)gd);
    }

    protected void doLoad() {
        if (this.textField != null) {
            String value = this.getPreferenceStore().getString(this.getPreferenceName());
            this.textField.setText(value);
            this.oldValue = value;
        }
    }

    protected void doLoadDefault() {
        if (this.textField != null) {
            String value = this.getPreferenceStore().getDefaultString(this.getPreferenceName());
            this.textField.setText(value);
        }
        this.valueChanged();
    }

    protected void doStore() {
        this.getPreferenceStore().setValue(this.getPreferenceName(), this.textField.getText());
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public int getNumberOfControls() {
        return 2;
    }

    public String getStringValue() {
        if (this.textField != null) {
            return this.textField.getText();
        }
        return this.getPreferenceStore().getString(this.getPreferenceName());
    }

    protected Text getTextControl() {
        return this.textField;
    }

    public Text getTextControl(Composite parent) {
        if (this.textField == null) {
            this.textField = new Text(parent, 2052);
            this.textField.setFont(parent.getFont());
            switch (this.validateStrategy) {
                case 0: {
                    this.textField.addKeyListener((KeyListener)new KeyAdapter(){

                        public void keyReleased(KeyEvent e) {
                            StringFieldEditor.this.valueChanged();
                        }
                    });
                    this.textField.addFocusListener((FocusListener)new FocusAdapter(){

                        public void focusLost(FocusEvent e) {
                            StringFieldEditor.this.valueChanged();
                        }
                    });
                    break;
                }
                case 1: {
                    this.textField.addKeyListener((KeyListener)new KeyAdapter(){

                        public void keyPressed(KeyEvent e) {
                            StringFieldEditor.this.clearErrorMessage();
                        }
                    });
                    this.textField.addFocusListener((FocusListener)new FocusAdapter(){

                        public void focusGained(FocusEvent e) {
                            StringFieldEditor.this.refreshValidState();
                        }

                        public void focusLost(FocusEvent e) {
                            StringFieldEditor.this.valueChanged();
                            StringFieldEditor.this.clearErrorMessage();
                        }
                    });
                    break;
                }
                default: {
                    Assert.isTrue((boolean)false, (String)"Unknown validate strategy");
                }
            }
            this.textField.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    StringFieldEditor.this.textField = null;
                }
            });
            if (this.textLimit > 0) {
                this.textField.setTextLimit(this.textLimit);
            }
        } else {
            this.checkParent((Control)this.textField, parent);
        }
        return this.textField;
    }

    public boolean isEmptyStringAllowed() {
        return this.emptyStringAllowed;
    }

    public boolean isValid() {
        return this.isValid;
    }

    protected void refreshValidState() {
        this.isValid = this.checkState();
    }

    public void setEmptyStringAllowed(boolean b) {
        this.emptyStringAllowed = b;
    }

    public void setErrorMessage(String message) {
        this.errorMessage = message;
    }

    public void setFocus() {
        if (this.textField != null) {
            this.textField.setFocus();
        }
    }

    public void setStringValue(String value) {
        if (this.textField != null) {
            if (value == null) {
                value = "";
            }
            this.oldValue = this.textField.getText();
            if (!this.oldValue.equals(value)) {
                this.textField.setText(value);
                this.valueChanged();
            }
        }
    }

    public void setTextLimit(int limit) {
        this.textLimit = limit;
        if (this.textField != null) {
            this.textField.setTextLimit(limit);
        }
    }

    public void setValidateStrategy(int value) {
        Assert.isTrue((value == 1 || value == 0 ? 1 : 0) != 0);
        this.validateStrategy = value;
    }

    public void showErrorMessage() {
        this.showErrorMessage(this.errorMessage);
    }

    protected void valueChanged() {
        String newValue;
        this.setPresentsDefaultValue(false);
        boolean oldState = this.isValid;
        this.refreshValidState();
        if (this.isValid != oldState) {
            this.fireStateChanged("field_editor_is_valid", oldState, this.isValid);
        }
        if (!(newValue = this.textField.getText()).equals(this.oldValue)) {
            this.fireValueChanged("field_editor_value", this.oldValue, newValue);
            this.oldValue = newValue;
        }
    }

    public void setEnabled(boolean enabled, Composite parent) {
        super.setEnabled(enabled, parent);
        this.getTextControl(parent).setEnabled(enabled);
    }
}

