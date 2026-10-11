/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.jface.preference;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.DialogPage;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;

public abstract class FieldEditor {
    public static final String IS_VALID = "field_editor_is_valid";
    public static final String VALUE = "field_editor_value";
    protected static final int HORIZONTAL_GAP = 8;
    private IPreferenceStore preferenceStore = null;
    private String preferenceName;
    private boolean isDefaultPresented = false;
    private String labelText;
    private Label label;
    private IPropertyChangeListener propertyChangeListener;
    private DialogPage page;

    protected FieldEditor() {
    }

    protected FieldEditor(String name, String labelText, Composite parent) {
        this.init(name, labelText);
        this.createControl(parent);
    }

    protected abstract void adjustForNumColumns(int var1);

    protected void applyFont() {
    }

    protected void checkParent(Control control, Composite parent) {
        Assert.isTrue((control.getParent() == parent ? 1 : 0) != 0, (String)"Different parents");
    }

    protected void clearErrorMessage() {
        if (this.page != null) {
            this.page.setErrorMessage(null);
        }
    }

    protected void clearMessage() {
        if (this.page != null) {
            this.page.setMessage(null);
        }
    }

    protected int convertHorizontalDLUsToPixels(Control control, int dlus) {
        GC gc = new GC((Drawable)control);
        gc.setFont(control.getFont());
        int averageWidth = gc.getFontMetrics().getAverageCharWidth();
        gc.dispose();
        double horizontalDialogUnitSize = (double)averageWidth * 0.25;
        return (int)Math.round((double)dlus * horizontalDialogUnitSize);
    }

    protected int convertVerticalDLUsToPixels(Control control, int dlus) {
        GC gc = new GC((Drawable)control);
        gc.setFont(control.getFont());
        int height = gc.getFontMetrics().getHeight();
        gc.dispose();
        double verticalDialogUnitSize = (double)height * 0.125;
        return (int)Math.round((double)dlus * verticalDialogUnitSize);
    }

    protected void createControl(Composite parent) {
        GridLayout layout = new GridLayout();
        layout.numColumns = this.getNumberOfControls();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.horizontalSpacing = 8;
        parent.setLayout((Layout)layout);
        this.doFillIntoGrid(parent, layout.numColumns);
    }

    public void dispose() {
    }

    protected abstract void doFillIntoGrid(Composite var1, int var2);

    protected abstract void doLoad();

    protected abstract void doLoadDefault();

    protected abstract void doStore();

    public void fillIntoGrid(Composite parent, int numColumns) {
        Assert.isTrue((numColumns >= this.getNumberOfControls() ? 1 : 0) != 0);
        Assert.isTrue((boolean)(parent.getLayout() instanceof GridLayout));
        this.doFillIntoGrid(parent, numColumns);
    }

    protected void fireStateChanged(String property, boolean oldValue, boolean newValue) {
        if (oldValue == newValue) {
            return;
        }
        this.fireValueChanged(property, oldValue ? Boolean.TRUE : Boolean.FALSE, newValue ? Boolean.TRUE : Boolean.FALSE);
    }

    protected void fireValueChanged(String property, Object oldValue, Object newValue) {
        if (this.propertyChangeListener == null) {
            return;
        }
        this.propertyChangeListener.propertyChange(new PropertyChangeEvent(this, property, oldValue, newValue));
    }

    public String getFieldEditorFontName() {
        return "org.eclipse.jface.dialogfont";
    }

    protected Label getLabelControl() {
        return this.label;
    }

    public Label getLabelControl(Composite parent) {
        if (this.label == null) {
            this.label = new Label(parent, 16384);
            this.label.setFont(parent.getFont());
            String text = this.getLabelText();
            if (text != null) {
                this.label.setText(text);
            }
            this.label.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    FieldEditor.this.label = null;
                }
            });
        } else {
            this.checkParent((Control)this.label, parent);
        }
        return this.label;
    }

    public String getLabelText() {
        return this.labelText;
    }

    public abstract int getNumberOfControls();

    public String getPreferenceName() {
        return this.preferenceName;
    }

    protected PreferencePage getPreferencePage() {
        if (this.page != null && this.page instanceof PreferencePage) {
            return (PreferencePage)this.page;
        }
        return null;
    }

    protected DialogPage getPage() {
        return this.page;
    }

    public IPreferenceStore getPreferenceStore() {
        return this.preferenceStore;
    }

    protected void init(String name, String text) {
        Assert.isNotNull((Object)name);
        Assert.isNotNull((Object)text);
        this.preferenceName = name;
        this.labelText = text;
    }

    public boolean isValid() {
        return true;
    }

    public void load() {
        if (this.preferenceStore != null) {
            this.isDefaultPresented = false;
            this.doLoad();
            this.refreshValidState();
        }
    }

    public void loadDefault() {
        if (this.preferenceStore != null) {
            this.isDefaultPresented = true;
            this.doLoadDefault();
            this.refreshValidState();
        }
    }

    public boolean presentsDefaultValue() {
        return this.isDefaultPresented;
    }

    protected void refreshValidState() {
    }

    public void setFocus() {
    }

    public void setLabelText(String text) {
        Assert.isNotNull((Object)text);
        this.labelText = text;
        if (this.label != null) {
            this.label.setText(text);
        }
    }

    public void setPreferenceName(String name) {
        this.preferenceName = name;
    }

    public void setPreferencePage(PreferencePage preferencePage) {
        this.setPage(preferencePage);
    }

    public void setPage(DialogPage dialogPage) {
        this.page = dialogPage;
    }

    public void setPreferenceStore(IPreferenceStore store) {
        this.preferenceStore = store;
    }

    protected void setPresentsDefaultValue(boolean booleanValue) {
        this.isDefaultPresented = booleanValue;
    }

    public void setPropertyChangeListener(IPropertyChangeListener listener) {
        this.propertyChangeListener = listener;
    }

    protected void showErrorMessage(String msg) {
        if (this.page != null) {
            this.page.setErrorMessage(msg);
        }
    }

    protected void showMessage(String msg) {
        if (this.page != null) {
            this.page.setErrorMessage(msg);
        }
    }

    public void store() {
        if (this.preferenceStore == null) {
            return;
        }
        if (this.isDefaultPresented) {
            this.preferenceStore.setToDefault(this.preferenceName);
        } else {
            this.doStore();
        }
    }

    protected void setButtonLayoutData(Button button) {
        GridData data = new GridData(256);
        GC gc = new GC((Drawable)button);
        gc.setFont(button.getFont());
        FontMetrics fontMetrics = gc.getFontMetrics();
        gc.dispose();
        int widthHint = Dialog.convertVerticalDLUsToPixels(fontMetrics, 61);
        data.widthHint = Math.max(widthHint, button.computeSize((int)-1, (int)-1, (boolean)true).x);
        button.setLayoutData((Object)data);
    }

    public void setEnabled(boolean enabled, Composite parent) {
        this.getLabelControl(parent).setEnabled(enabled);
    }
}

