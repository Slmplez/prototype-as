/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.custom.CCombo
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.viewers;

import java.text.MessageFormat;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.AbstractComboBoxCellEditor;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public class ComboBoxCellEditor
extends AbstractComboBoxCellEditor {
    private String[] items;
    int selection;
    CCombo comboBox;
    private static final int defaultStyle = 0;

    public ComboBoxCellEditor() {
        this.setStyle(0);
    }

    public ComboBoxCellEditor(Composite parent, String[] items) {
        this(parent, items, 0);
    }

    public ComboBoxCellEditor(Composite parent, String[] items, int style) {
        super(parent, style);
        this.setItems(items);
    }

    public String[] getItems() {
        return this.items;
    }

    public void setItems(String[] items) {
        Assert.isNotNull((Object)items);
        this.items = items;
        this.populateComboBoxItems();
    }

    protected Control createControl(Composite parent) {
        this.comboBox = new CCombo(parent, this.getStyle());
        this.comboBox.setFont(parent.getFont());
        this.populateComboBoxItems();
        this.comboBox.addKeyListener((KeyListener)new KeyAdapter(){

            public void keyPressed(KeyEvent e) {
                ComboBoxCellEditor.this.keyReleaseOccured(e);
            }
        });
        this.comboBox.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetDefaultSelected(SelectionEvent event) {
                ComboBoxCellEditor.this.applyEditorValueAndDeactivate();
            }

            public void widgetSelected(SelectionEvent event) {
                ComboBoxCellEditor.this.selection = ComboBoxCellEditor.this.comboBox.getSelectionIndex();
            }
        });
        this.comboBox.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                if (e.detail == 2 || e.detail == 4) {
                    e.doit = false;
                }
            }
        });
        this.comboBox.addFocusListener((FocusListener)new FocusAdapter(){

            public void focusLost(FocusEvent e) {
                ComboBoxCellEditor.this.focusLost();
            }
        });
        return this.comboBox;
    }

    protected Object doGetValue() {
        return new Integer(this.selection);
    }

    protected void doSetFocus() {
        this.comboBox.setFocus();
    }

    public CellEditor.LayoutData getLayoutData() {
        CellEditor.LayoutData layoutData = super.getLayoutData();
        if (this.comboBox == null || this.comboBox.isDisposed()) {
            layoutData.minimumWidth = 60;
        } else {
            GC gc = new GC((Drawable)this.comboBox);
            layoutData.minimumWidth = gc.getFontMetrics().getAverageCharWidth() * 10 + 10;
            gc.dispose();
        }
        return layoutData;
    }

    protected void doSetValue(Object value) {
        Assert.isTrue((this.comboBox != null && value instanceof Integer ? 1 : 0) != 0);
        this.selection = (Integer)value;
        this.comboBox.select(this.selection);
    }

    private void populateComboBoxItems() {
        if (this.comboBox != null && this.items != null) {
            this.comboBox.removeAll();
            int i = 0;
            while (i < this.items.length) {
                this.comboBox.add(this.items[i], i);
                ++i;
            }
            this.setValueValid(true);
            this.selection = 0;
        }
    }

    void applyEditorValueAndDeactivate() {
        this.selection = this.comboBox.getSelectionIndex();
        Object newValue = this.doGetValue();
        this.markDirty();
        boolean isValid = this.isCorrect(newValue);
        this.setValueValid(isValid);
        if (!isValid) {
            if (this.items.length > 0 && this.selection >= 0 && this.selection < this.items.length) {
                this.setErrorMessage(MessageFormat.format(this.getErrorMessage(), this.items[this.selection]));
            } else {
                this.setErrorMessage(MessageFormat.format(this.getErrorMessage(), this.comboBox.getText()));
            }
        }
        this.fireApplyEditorValue();
        this.deactivate();
    }

    protected void focusLost() {
        if (this.isActivated()) {
            this.applyEditorValueAndDeactivate();
        }
    }

    protected void keyReleaseOccured(KeyEvent keyEvent) {
        if (keyEvent.character == '\u001b') {
            this.fireCancelEditor();
        } else if (keyEvent.character == '\t') {
            this.applyEditorValueAndDeactivate();
        }
    }
}

