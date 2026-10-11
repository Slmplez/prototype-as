/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.viewers;

import java.text.MessageFormat;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Text;

public class TextCellEditor
extends CellEditor {
    protected Text text;
    private ModifyListener modifyListener;
    private boolean isSelection = false;
    private boolean isDeleteable = false;
    private boolean isSelectable = false;
    private static final int defaultStyle = 4;
    static /* synthetic */ Class class$0;

    public TextCellEditor() {
        this.setStyle(4);
    }

    public TextCellEditor(Composite parent) {
        this(parent, 4);
    }

    public TextCellEditor(Composite parent, int style) {
        super(parent, style);
    }

    private void checkDeleteable() {
        boolean oldIsDeleteable = this.isDeleteable;
        this.isDeleteable = this.isDeleteEnabled();
        if (oldIsDeleteable != this.isDeleteable) {
            this.fireEnablementChanged("delete");
        }
    }

    private void checkSelectable() {
        boolean oldIsSelectable = this.isSelectable;
        this.isSelectable = this.isSelectAllEnabled();
        if (oldIsSelectable != this.isSelectable) {
            this.fireEnablementChanged("selectall");
        }
    }

    private void checkSelection() {
        boolean oldIsSelection = this.isSelection;
        boolean bl = this.isSelection = this.text.getSelectionCount() > 0;
        if (oldIsSelection != this.isSelection) {
            this.fireEnablementChanged("copy");
            this.fireEnablementChanged("cut");
        }
    }

    protected Control createControl(Composite parent) {
        this.text = new Text(parent, this.getStyle());
        this.text.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetDefaultSelected(SelectionEvent e) {
                TextCellEditor.this.handleDefaultSelection(e);
            }
        });
        this.text.addKeyListener((KeyListener)new KeyAdapter(){

            public void keyPressed(KeyEvent e) {
                TextCellEditor.this.keyReleaseOccured(e);
                if (TextCellEditor.this.getControl() == null || TextCellEditor.this.getControl().isDisposed()) {
                    return;
                }
                TextCellEditor.this.checkSelection();
                TextCellEditor.this.checkDeleteable();
                TextCellEditor.this.checkSelectable();
            }
        });
        this.text.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                if (e.detail == 2 || e.detail == 4) {
                    e.doit = false;
                }
            }
        });
        this.text.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseUp(MouseEvent e) {
                TextCellEditor.this.checkSelection();
                TextCellEditor.this.checkDeleteable();
                TextCellEditor.this.checkSelectable();
            }
        });
        this.text.addFocusListener((FocusListener)new FocusAdapter(){

            public void focusLost(FocusEvent e) {
                TextCellEditor.this.focusLost();
            }
        });
        this.text.setFont(parent.getFont());
        this.text.setBackground(parent.getBackground());
        this.text.setText("");
        this.text.addModifyListener(this.getModifyListener());
        return this.text;
    }

    protected Object doGetValue() {
        return this.text.getText();
    }

    protected void doSetFocus() {
        if (this.text != null) {
            this.text.selectAll();
            this.text.setFocus();
            this.checkSelection();
            this.checkDeleteable();
            this.checkSelectable();
        }
    }

    protected void doSetValue(Object value) {
        Assert.isTrue((this.text != null && value instanceof String ? 1 : 0) != 0);
        this.text.removeModifyListener(this.getModifyListener());
        this.text.setText((String)value);
        this.text.addModifyListener(this.getModifyListener());
    }

    protected void editOccured(ModifyEvent e) {
        String value = this.text.getText();
        if (value == null) {
            value = "";
        }
        String typedValue = value;
        boolean oldValidState = this.isValueValid();
        boolean newValidState = this.isCorrect(typedValue);
        if (!newValidState) {
            this.setErrorMessage(MessageFormat.format(this.getErrorMessage(), value));
        }
        this.valueChanged(oldValidState, newValidState);
    }

    public CellEditor.LayoutData getLayoutData() {
        CellEditor.LayoutData data = new CellEditor.LayoutData();
        data.minimumWidth = 0;
        return data;
    }

    private ModifyListener getModifyListener() {
        if (this.modifyListener == null) {
            this.modifyListener = new ModifyListener(){

                public void modifyText(ModifyEvent e) {
                    TextCellEditor.this.editOccured(e);
                }
            };
        }
        return this.modifyListener;
    }

    protected void handleDefaultSelection(SelectionEvent event) {
        this.fireApplyEditorValue();
        this.deactivate();
    }

    public boolean isCopyEnabled() {
        if (this.text == null || this.text.isDisposed()) {
            return false;
        }
        return this.text.getSelectionCount() > 0;
    }

    public boolean isCutEnabled() {
        if (this.text == null || this.text.isDisposed()) {
            return false;
        }
        return this.text.getSelectionCount() > 0;
    }

    public boolean isDeleteEnabled() {
        if (this.text == null || this.text.isDisposed()) {
            return false;
        }
        return this.text.getSelectionCount() > 0 || this.text.getCaretPosition() < this.text.getCharCount();
    }

    public boolean isPasteEnabled() {
        return this.text != null && !this.text.isDisposed();
    }

    public boolean isSaveAllEnabled() {
        return this.text != null && !this.text.isDisposed();
    }

    public boolean isSelectAllEnabled() {
        if (this.text == null || this.text.isDisposed()) {
            return false;
        }
        return this.text.getCharCount() > 0;
    }

    protected void keyReleaseOccured(KeyEvent keyEvent) {
        if (keyEvent.character == '\r') {
            if (this.text != null && !this.text.isDisposed() && (this.text.getStyle() & 2) != 0 && (keyEvent.stateMask & 0x40000) != 0) {
                super.keyReleaseOccured(keyEvent);
            }
            return;
        }
        super.keyReleaseOccured(keyEvent);
    }

    public void performCopy() {
        this.text.copy();
    }

    public void performCut() {
        this.text.cut();
        this.checkSelection();
        this.checkDeleteable();
        this.checkSelectable();
    }

    public void performDelete() {
        if (this.text.getSelectionCount() > 0) {
            this.text.insert("");
        } else {
            int pos = this.text.getCaretPosition();
            if (pos < this.text.getCharCount()) {
                this.text.setSelection(pos, pos + 1);
                this.text.insert("");
            }
        }
        this.checkSelection();
        this.checkDeleteable();
        this.checkSelectable();
    }

    public void performPaste() {
        this.text.paste();
        this.checkSelection();
        this.checkDeleteable();
        this.checkSelectable();
    }

    public void performSelectAll() {
        this.text.selectAll();
        this.checkSelection();
        this.checkDeleteable();
    }

    protected boolean dependsOnExternalFocusListener() {
        Class<?> clazz = this.getClass();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jface.viewers.TextCellEditor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz != clazz2;
    }
}

