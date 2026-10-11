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
import org.eclipse.jface.viewers.ComboViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
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

public class ComboBoxViewerCellEditor
extends AbstractComboBoxCellEditor {
    ComboViewer viewer;
    Object selectedValue;
    private static final int defaultStyle = 0;

    public ComboBoxViewerCellEditor(Composite parent) {
        this(parent, 0);
    }

    public ComboBoxViewerCellEditor(Composite parent, int style) {
        super(parent, style);
        this.setValueValid(true);
    }

    protected Control createControl(Composite parent) {
        CCombo comboBox = new CCombo(parent, this.getStyle());
        comboBox.setFont(parent.getFont());
        this.viewer = new ComboViewer(comboBox);
        comboBox.addKeyListener((KeyListener)new KeyAdapter(){

            public void keyPressed(KeyEvent e) {
                ComboBoxViewerCellEditor.this.keyReleaseOccured(e);
            }
        });
        comboBox.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetDefaultSelected(SelectionEvent event) {
                ComboBoxViewerCellEditor.this.applyEditorValueAndDeactivate();
            }

            public void widgetSelected(SelectionEvent event) {
                ISelection selection = ComboBoxViewerCellEditor.this.viewer.getSelection();
                ComboBoxViewerCellEditor.this.selectedValue = selection.isEmpty() ? null : ((IStructuredSelection)selection).getFirstElement();
            }
        });
        comboBox.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                if (e.detail == 2 || e.detail == 4) {
                    e.doit = false;
                }
            }
        });
        comboBox.addFocusListener((FocusListener)new FocusAdapter(){

            public void focusLost(FocusEvent e) {
                ComboBoxViewerCellEditor.this.focusLost();
            }
        });
        return comboBox;
    }

    protected Object doGetValue() {
        return this.selectedValue;
    }

    protected void doSetFocus() {
        this.viewer.getControl().setFocus();
    }

    public CellEditor.LayoutData getLayoutData() {
        CellEditor.LayoutData layoutData = super.getLayoutData();
        if (this.viewer.getControl() == null || this.viewer.getControl().isDisposed()) {
            layoutData.minimumWidth = 60;
        } else {
            GC gc = new GC((Drawable)this.viewer.getControl());
            layoutData.minimumWidth = gc.getFontMetrics().getAverageCharWidth() * 10 + 10;
            gc.dispose();
        }
        return layoutData;
    }

    protected void doSetValue(Object value) {
        Assert.isTrue((this.viewer != null ? 1 : 0) != 0);
        this.selectedValue = value;
        if (value == null) {
            this.viewer.setSelection(StructuredSelection.EMPTY);
        } else {
            this.viewer.setSelection(new StructuredSelection(value));
        }
    }

    public void setLabelProvider(IBaseLabelProvider labelProvider) {
        this.viewer.setLabelProvider(labelProvider);
    }

    public void setContentProvider(IStructuredContentProvider provider) {
        this.viewer.setContentProvider(provider);
    }

    public void setContenProvider(IStructuredContentProvider provider) {
        this.viewer.setContentProvider(provider);
    }

    public void setInput(Object input) {
        this.viewer.setInput(input);
    }

    public ComboViewer getViewer() {
        return this.viewer;
    }

    void applyEditorValueAndDeactivate() {
        ISelection selection = this.viewer.getSelection();
        this.selectedValue = selection.isEmpty() ? null : ((IStructuredSelection)selection).getFirstElement();
        Object newValue = this.doGetValue();
        this.markDirty();
        boolean isValid = this.isCorrect(newValue);
        this.setValueValid(isValid);
        if (!isValid) {
            MessageFormat.format(this.getErrorMessage(), this.selectedValue);
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

