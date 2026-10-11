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
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.List
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.preference;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;

public abstract class ListEditor
extends FieldEditor {
    private List list;
    private Composite buttonBox;
    private Button addButton;
    private Button removeButton;
    private Button upButton;
    private Button downButton;
    private SelectionListener selectionListener;

    protected ListEditor() {
    }

    protected ListEditor(String name, String labelText, Composite parent) {
        this.init(name, labelText);
        this.createControl(parent);
    }

    private void addPressed() {
        this.setPresentsDefaultValue(false);
        String input = this.getNewInputObject();
        if (input != null) {
            int index = this.list.getSelectionIndex();
            if (index >= 0) {
                this.list.add(input, index + 1);
            } else {
                this.list.add(input, 0);
            }
            this.selectionChanged();
        }
    }

    protected void adjustForNumColumns(int numColumns) {
        Label control = this.getLabelControl();
        ((GridData)control.getLayoutData()).horizontalSpan = numColumns;
        ((GridData)this.list.getLayoutData()).horizontalSpan = numColumns - 1;
    }

    private void createButtons(Composite box) {
        this.addButton = this.createPushButton(box, "ListEditor.add");
        this.removeButton = this.createPushButton(box, "ListEditor.remove");
        this.upButton = this.createPushButton(box, "ListEditor.up");
        this.downButton = this.createPushButton(box, "ListEditor.down");
    }

    protected abstract String createList(String[] var1);

    private Button createPushButton(Composite parent, String key) {
        Button button = new Button(parent, 8);
        button.setText(JFaceResources.getString(key));
        button.setFont(parent.getFont());
        GridData data = new GridData(768);
        int widthHint = this.convertHorizontalDLUsToPixels((Control)button, 61);
        data.widthHint = Math.max(widthHint, button.computeSize((int)-1, (int)-1, (boolean)true).x);
        button.setLayoutData((Object)data);
        button.addSelectionListener(this.getSelectionListener());
        return button;
    }

    public void createSelectionListener() {
        this.selectionListener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                Widget widget = event.widget;
                if (widget == ListEditor.this.addButton) {
                    ListEditor.this.addPressed();
                } else if (widget == ListEditor.this.removeButton) {
                    ListEditor.this.removePressed();
                } else if (widget == ListEditor.this.upButton) {
                    ListEditor.this.upPressed();
                } else if (widget == ListEditor.this.downButton) {
                    ListEditor.this.downPressed();
                } else if (widget == ListEditor.this.list) {
                    ListEditor.this.selectionChanged();
                }
            }
        };
    }

    protected void doFillIntoGrid(Composite parent, int numColumns) {
        Label control = this.getLabelControl(parent);
        GridData gd = new GridData();
        gd.horizontalSpan = numColumns;
        control.setLayoutData((Object)gd);
        this.list = this.getListControl(parent);
        gd = new GridData(768);
        gd.verticalAlignment = 4;
        gd.horizontalSpan = numColumns - 1;
        gd.grabExcessHorizontalSpace = true;
        this.list.setLayoutData((Object)gd);
        this.buttonBox = this.getButtonBoxControl(parent);
        gd = new GridData();
        gd.verticalAlignment = 1;
        this.buttonBox.setLayoutData((Object)gd);
    }

    protected void doLoad() {
        if (this.list != null) {
            String s = this.getPreferenceStore().getString(this.getPreferenceName());
            String[] array = this.parseString(s);
            int i = 0;
            while (i < array.length) {
                this.list.add(array[i]);
                ++i;
            }
        }
    }

    protected void doLoadDefault() {
        if (this.list != null) {
            this.list.removeAll();
            String s = this.getPreferenceStore().getDefaultString(this.getPreferenceName());
            String[] array = this.parseString(s);
            int i = 0;
            while (i < array.length) {
                this.list.add(array[i]);
                ++i;
            }
        }
    }

    protected void doStore() {
        String s = this.createList(this.list.getItems());
        if (s != null) {
            this.getPreferenceStore().setValue(this.getPreferenceName(), s);
        }
    }

    private void downPressed() {
        this.swap(false);
    }

    public Composite getButtonBoxControl(Composite parent) {
        if (this.buttonBox == null) {
            this.buttonBox = new Composite(parent, 0);
            GridLayout layout = new GridLayout();
            layout.marginWidth = 0;
            this.buttonBox.setLayout((Layout)layout);
            this.createButtons(this.buttonBox);
            this.buttonBox.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    ListEditor.this.addButton = null;
                    ListEditor.this.removeButton = null;
                    ListEditor.this.upButton = null;
                    ListEditor.this.downButton = null;
                    ListEditor.this.buttonBox = null;
                }
            });
        } else {
            this.checkParent((Control)this.buttonBox, parent);
        }
        this.selectionChanged();
        return this.buttonBox;
    }

    public List getListControl(Composite parent) {
        if (this.list == null) {
            this.list = new List(parent, 2820);
            this.list.setFont(parent.getFont());
            this.list.addSelectionListener(this.getSelectionListener());
            this.list.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    ListEditor.this.list = null;
                }
            });
        } else {
            this.checkParent((Control)this.list, parent);
        }
        return this.list;
    }

    protected abstract String getNewInputObject();

    public int getNumberOfControls() {
        return 2;
    }

    private SelectionListener getSelectionListener() {
        if (this.selectionListener == null) {
            this.createSelectionListener();
        }
        return this.selectionListener;
    }

    protected Shell getShell() {
        if (this.addButton == null) {
            return null;
        }
        return this.addButton.getShell();
    }

    protected abstract String[] parseString(String var1);

    private void removePressed() {
        this.setPresentsDefaultValue(false);
        int index = this.list.getSelectionIndex();
        if (index >= 0) {
            this.list.remove(index);
            this.selectionChanged();
        }
    }

    protected void selectionChanged() {
        int index = this.list.getSelectionIndex();
        int size = this.list.getItemCount();
        this.removeButton.setEnabled(index >= 0);
        this.upButton.setEnabled(size > 1 && index > 0);
        this.downButton.setEnabled(size > 1 && index >= 0 && index < size - 1);
    }

    public void setFocus() {
        if (this.list != null) {
            this.list.setFocus();
        }
    }

    private void swap(boolean up) {
        int target;
        this.setPresentsDefaultValue(false);
        int index = this.list.getSelectionIndex();
        int n = target = up ? index - 1 : index + 1;
        if (index >= 0) {
            String[] selection = this.list.getSelection();
            Assert.isTrue((selection.length == 1 ? 1 : 0) != 0);
            this.list.remove(index);
            this.list.add(selection[0], target);
            this.list.setSelection(target);
        }
        this.selectionChanged();
    }

    private void upPressed() {
        this.swap(true);
    }

    public void setEnabled(boolean enabled, Composite parent) {
        super.setEnabled(enabled, parent);
        this.getListControl(parent).setEnabled(enabled);
        this.addButton.setEnabled(enabled);
        this.removeButton.setEnabled(enabled);
        this.upButton.setEnabled(enabled);
        this.downButton.setEnabled(enabled);
    }

    protected Button getAddButton() {
        return this.addButton;
    }

    protected Button getRemoveButton() {
        return this.removeButton;
    }

    protected Button getUpButton() {
        return this.upButton;
    }

    protected Button getDownButton() {
        return this.downButton;
    }

    protected List getList() {
        return this.list;
    }
}

