/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.jface.preference;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;

public abstract class FieldEditorPreferencePage
extends PreferencePage
implements IPropertyChangeListener {
    public static final int FLAT = 0;
    public static final int GRID = 1;
    protected static final int VERTICAL_SPACING = 10;
    protected static final int MARGIN_WIDTH = 0;
    protected static final int MARGIN_HEIGHT = 0;
    private List fields = null;
    private int style;
    private FieldEditor invalidFieldEditor = null;
    private Composite fieldEditorParent;

    public FieldEditorPreferencePage() {
        this(0);
    }

    protected FieldEditorPreferencePage(int style) {
        this.style = style;
    }

    protected FieldEditorPreferencePage(String title, int style) {
        super(title);
        this.style = style;
    }

    protected FieldEditorPreferencePage(String title, ImageDescriptor image, int style) {
        super(title, image);
        this.style = style;
    }

    protected void addField(FieldEditor editor) {
        if (this.fields == null) {
            this.fields = new ArrayList();
        }
        this.fields.add(editor);
    }

    protected void adjustGridLayout() {
        int numColumns;
        ((GridLayout)this.fieldEditorParent.getLayout()).numColumns = numColumns = this.calcNumberOfColumns();
        if (this.fields != null) {
            int i = 0;
            while (i < this.fields.size()) {
                FieldEditor fieldEditor = (FieldEditor)this.fields.get(i);
                fieldEditor.adjustForNumColumns(numColumns);
                ++i;
            }
        }
    }

    protected void applyFont() {
        if (this.fields != null) {
            Iterator e = this.fields.iterator();
            while (e.hasNext()) {
                FieldEditor pe = (FieldEditor)e.next();
                pe.applyFont();
            }
        }
    }

    private int calcNumberOfColumns() {
        int result = 0;
        if (this.fields != null) {
            Iterator e = this.fields.iterator();
            while (e.hasNext()) {
                FieldEditor pe = (FieldEditor)e.next();
                result = Math.max(result, pe.getNumberOfControls());
            }
        }
        return result;
    }

    protected void checkState() {
        boolean valid = true;
        this.invalidFieldEditor = null;
        if (this.fields != null) {
            int size = this.fields.size();
            int i = 0;
            while (i < size) {
                FieldEditor editor = (FieldEditor)this.fields.get(i);
                boolean bl = valid = valid && editor.isValid();
                if (!valid) {
                    this.invalidFieldEditor = editor;
                    break;
                }
                ++i;
            }
        }
        this.setValid(valid);
    }

    protected Control createContents(Composite parent) {
        this.fieldEditorParent = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 1;
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        this.fieldEditorParent.setLayout((Layout)layout);
        this.fieldEditorParent.setFont(parent.getFont());
        this.createFieldEditors();
        if (this.style == 1) {
            this.adjustGridLayout();
        }
        this.initialize();
        this.checkState();
        return this.fieldEditorParent;
    }

    protected abstract void createFieldEditors();

    public void dispose() {
        super.dispose();
        if (this.fields != null) {
            Iterator e = this.fields.iterator();
            while (e.hasNext()) {
                FieldEditor pe = (FieldEditor)e.next();
                pe.setPage(null);
                pe.setPropertyChangeListener(null);
                pe.setPreferenceStore(null);
            }
        }
    }

    protected Composite getFieldEditorParent() {
        if (this.style == 0) {
            Composite parent = new Composite(this.fieldEditorParent, 0);
            parent.setLayoutData((Object)new GridData(768));
            return parent;
        }
        return this.fieldEditorParent;
    }

    protected void initialize() {
        if (this.fields != null) {
            Iterator e = this.fields.iterator();
            while (e.hasNext()) {
                FieldEditor pe = (FieldEditor)e.next();
                pe.setPage(this);
                pe.setPropertyChangeListener(this);
                pe.setPreferenceStore(this.getPreferenceStore());
                pe.load();
            }
        }
    }

    protected void performDefaults() {
        if (this.fields != null) {
            Iterator e = this.fields.iterator();
            while (e.hasNext()) {
                FieldEditor pe = (FieldEditor)e.next();
                pe.loadDefault();
            }
        }
        this.checkState();
        super.performDefaults();
    }

    public boolean performOk() {
        if (this.fields != null) {
            Iterator e = this.fields.iterator();
            while (e.hasNext()) {
                FieldEditor pe = (FieldEditor)e.next();
                pe.store();
                pe.setPresentsDefaultValue(false);
            }
        }
        return true;
    }

    public void propertyChange(PropertyChangeEvent event) {
        if (event.getProperty().equals("field_editor_is_valid")) {
            boolean newValue = (Boolean)event.getNewValue();
            if (newValue) {
                this.checkState();
            } else {
                this.invalidFieldEditor = (FieldEditor)event.getSource();
                this.setValid(newValue);
            }
        }
    }

    public void setVisible(boolean visible) {
        super.setVisible(visible);
        if (visible && this.invalidFieldEditor != null) {
            this.invalidFieldEditor.setFocus();
        }
    }
}

