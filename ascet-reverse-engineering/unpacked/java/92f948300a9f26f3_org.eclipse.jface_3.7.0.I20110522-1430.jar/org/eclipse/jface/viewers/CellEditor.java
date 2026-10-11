/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.jface.viewers.ColumnViewerEditorDeactivationEvent;
import org.eclipse.jface.viewers.ICellEditorListener;
import org.eclipse.jface.viewers.ICellEditorValidator;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;

public abstract class CellEditor {
    private ListenerList listeners = new ListenerList();
    private ListenerList propertyChangeListeners = new ListenerList();
    private boolean valid = false;
    private ICellEditorValidator validator = null;
    private String errorMessage = null;
    private boolean dirty = false;
    private Control control = null;
    private static final int defaultStyle = 0;
    private int style = 0;
    public static final String COPY = "copy";
    public static final String CUT = "cut";
    public static final String DELETE = "delete";
    public static final String FIND = "find";
    public static final String PASTE = "paste";
    public static final String REDO = "redo";
    public static final String SELECT_ALL = "selectall";
    public static final String UNDO = "undo";

    protected CellEditor() {
    }

    protected CellEditor(Composite parent) {
        this(parent, 0);
    }

    protected CellEditor(Composite parent, int style) {
        this.style = style;
        this.create(parent);
    }

    public void activate() {
    }

    public void addListener(ICellEditorListener listener) {
        this.listeners.add((Object)listener);
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.propertyChangeListeners.add((Object)listener);
    }

    protected abstract Control createControl(Composite var1);

    public void create(Composite parent) {
        Assert.isTrue((this.control == null ? 1 : 0) != 0);
        this.control = this.createControl(parent);
        this.deactivate();
    }

    public void deactivate() {
        if (this.control != null && !this.control.isDisposed()) {
            this.control.setVisible(false);
        }
    }

    public void dispose() {
        if (this.control != null && !this.control.isDisposed()) {
            this.control.dispose();
        }
        this.control = null;
    }

    protected abstract Object doGetValue();

    protected abstract void doSetFocus();

    protected abstract void doSetValue(Object var1);

    protected void fireApplyEditorValue() {
        Object[] array = this.listeners.getListeners();
        int i = 0;
        while (i < array.length) {
            final ICellEditorListener l = (ICellEditorListener)array[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.applyEditorValue();
                }
            });
            ++i;
        }
    }

    protected void fireCancelEditor() {
        Object[] array = this.listeners.getListeners();
        int i = 0;
        while (i < array.length) {
            final ICellEditorListener l = (ICellEditorListener)array[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.cancelEditor();
                }
            });
            ++i;
        }
    }

    protected void fireEditorValueChanged(final boolean oldValidState, final boolean newValidState) {
        Object[] array = this.listeners.getListeners();
        int i = 0;
        while (i < array.length) {
            final ICellEditorListener l = (ICellEditorListener)array[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.editorValueChanged(oldValidState, newValidState);
                }
            });
            ++i;
        }
    }

    protected void fireEnablementChanged(final String actionId) {
        Object[] array = this.propertyChangeListeners.getListeners();
        int i = 0;
        while (i < array.length) {
            final IPropertyChangeListener l = (IPropertyChangeListener)array[i];
            SafeRunnable.run(new SafeRunnable(){

                public void run() {
                    l.propertyChange(new PropertyChangeEvent(this, actionId, null, null));
                }
            });
            ++i;
        }
    }

    public void setStyle(int style) {
        this.style = style;
    }

    public int getStyle() {
        return this.style;
    }

    public Control getControl() {
        return this.control;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public LayoutData getLayoutData() {
        LayoutData result = new LayoutData();
        Control control = this.getControl();
        if (control != null) {
            result.minimumWidth = control.computeSize((int)-1, (int)-1, (boolean)true).x;
        }
        return result;
    }

    public ICellEditorValidator getValidator() {
        return this.validator;
    }

    public final Object getValue() {
        if (!this.valid) {
            return null;
        }
        return this.doGetValue();
    }

    public boolean isActivated() {
        return this.control != null && this.control.getVisible();
    }

    public boolean isCopyEnabled() {
        return false;
    }

    protected boolean isCorrect(Object value) {
        this.errorMessage = null;
        if (this.validator == null) {
            return true;
        }
        this.errorMessage = this.validator.isValid(value);
        return this.errorMessage == null || this.errorMessage.equals("");
    }

    public boolean isCutEnabled() {
        return false;
    }

    public boolean isDeleteEnabled() {
        return false;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    protected void markDirty() {
        this.dirty = true;
    }

    public boolean isFindEnabled() {
        return false;
    }

    public boolean isPasteEnabled() {
        return false;
    }

    public boolean isRedoEnabled() {
        return false;
    }

    public boolean isSelectAllEnabled() {
        return false;
    }

    public boolean isUndoEnabled() {
        return false;
    }

    public boolean isValueValid() {
        return this.valid;
    }

    protected void keyReleaseOccured(KeyEvent keyEvent) {
        if (keyEvent.character == '\u001b') {
            this.fireCancelEditor();
        } else if (keyEvent.character == '\r') {
            this.fireApplyEditorValue();
            this.deactivate();
        }
    }

    protected void focusLost() {
        if (this.isActivated()) {
            this.fireApplyEditorValue();
            this.deactivate();
        }
    }

    public void performCopy() {
    }

    public void performCut() {
    }

    public void performDelete() {
    }

    public void performFind() {
    }

    public void performPaste() {
    }

    public void performRedo() {
    }

    public void performSelectAll() {
    }

    public void performUndo() {
    }

    public void removeListener(ICellEditorListener listener) {
        this.listeners.remove((Object)listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.propertyChangeListeners.remove((Object)listener);
    }

    protected void setErrorMessage(String message) {
        this.errorMessage = message;
    }

    public void setFocus() {
        this.doSetFocus();
    }

    public void setValidator(ICellEditorValidator validator) {
        this.validator = validator;
    }

    public final void setValue(Object value) {
        this.valid = this.isCorrect(value);
        this.dirty = false;
        this.doSetValue(value);
    }

    protected void setValueValid(boolean valid) {
        this.valid = valid;
    }

    protected void valueChanged(boolean oldValidState, boolean newValidState) {
        this.valid = newValidState;
        this.dirty = true;
        this.fireEditorValueChanged(oldValidState, newValidState);
    }

    public void activate(ColumnViewerEditorActivationEvent activationEvent) {
        this.activate();
    }

    protected boolean dependsOnExternalFocusListener() {
        return true;
    }

    protected void deactivate(ColumnViewerEditorDeactivationEvent event) {
        this.deactivate();
    }

    protected int getDoubleClickTimeout() {
        return Display.getCurrent().getDoubleClickTime();
    }

    public static class LayoutData {
        public int horizontalAlignment = 16384;
        public boolean grabHorizontal = true;
        public int minimumWidth = 50;
        public int minimumHeight = -1;
        public int verticalAlignment = 0x1000000;
    }
}

