/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.jface.viewers;

import java.text.MessageFormat;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;

public abstract class DialogCellEditor
extends CellEditor {
    public static final String CELL_EDITOR_IMG_DOTS_BUTTON = "cell_editor_dots_button_image";
    private Composite editor;
    private Control contents;
    private Label defaultLabel;
    private Button button;
    private FocusListener buttonFocusListener;
    private Object value = null;
    private static final int defaultStyle = 0;
    static /* synthetic */ Class class$0;

    static {
        ImageRegistry reg = JFaceResources.getImageRegistry();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.viewers.DialogCellEditor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        reg.put(CELL_EDITOR_IMG_DOTS_BUTTON, ImageDescriptor.createFromFile(clazz, "images/dots_button.gif"));
    }

    public DialogCellEditor() {
        this.setStyle(0);
    }

    protected DialogCellEditor(Composite parent) {
        this(parent, 0);
    }

    protected DialogCellEditor(Composite parent, int style) {
        super(parent, style);
    }

    protected Button createButton(Composite parent) {
        Button result = new Button(parent, 1024);
        result.setText("...");
        return result;
    }

    protected Control createContents(Composite cell) {
        this.defaultLabel = new Label(cell, 16384);
        this.defaultLabel.setFont(cell.getFont());
        this.defaultLabel.setBackground(cell.getBackground());
        return this.defaultLabel;
    }

    protected Control createControl(Composite parent) {
        Font font = parent.getFont();
        Color bg = parent.getBackground();
        this.editor = new Composite(parent, this.getStyle());
        this.editor.setFont(font);
        this.editor.setBackground(bg);
        this.editor.setLayout((Layout)new DialogCellLayout());
        this.contents = this.createContents(this.editor);
        this.updateContents(this.value);
        this.button = this.createButton(this.editor);
        this.button.setFont(font);
        this.button.addKeyListener((KeyListener)new KeyAdapter(){

            public void keyReleased(KeyEvent e) {
                if (e.character == '\u001b') {
                    DialogCellEditor.this.fireCancelEditor();
                }
            }
        });
        this.button.addFocusListener(this.getButtonFocusListener());
        this.button.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                DialogCellEditor.this.button.removeFocusListener(DialogCellEditor.this.getButtonFocusListener());
                Object newValue = DialogCellEditor.this.openDialogBox((Control)DialogCellEditor.this.editor);
                DialogCellEditor.this.button.addFocusListener(DialogCellEditor.this.getButtonFocusListener());
                if (newValue != null) {
                    boolean newValidState = DialogCellEditor.this.isCorrect(newValue);
                    if (newValidState) {
                        DialogCellEditor.this.markDirty();
                        DialogCellEditor.this.doSetValue(newValue);
                    } else {
                        DialogCellEditor.this.setErrorMessage(MessageFormat.format(DialogCellEditor.this.getErrorMessage(), newValue.toString()));
                    }
                    DialogCellEditor.this.fireApplyEditorValue();
                }
            }
        });
        this.setValueValid(true);
        return this.editor;
    }

    public void deactivate() {
        if (this.button != null && !this.button.isDisposed()) {
            this.button.removeFocusListener(this.getButtonFocusListener());
        }
        super.deactivate();
    }

    protected Object doGetValue() {
        return this.value;
    }

    protected void doSetFocus() {
        this.button.setFocus();
        this.button.addFocusListener(this.getButtonFocusListener());
    }

    private FocusListener getButtonFocusListener() {
        if (this.buttonFocusListener == null) {
            this.buttonFocusListener = new FocusListener(){

                public void focusGained(FocusEvent e) {
                }

                public void focusLost(FocusEvent e) {
                    DialogCellEditor.this.focusLost();
                }
            };
        }
        return this.buttonFocusListener;
    }

    protected void doSetValue(Object value) {
        this.value = value;
        this.updateContents(value);
    }

    protected Label getDefaultLabel() {
        return this.defaultLabel;
    }

    protected abstract Object openDialogBox(Control var1);

    protected void updateContents(Object value) {
        if (this.defaultLabel == null) {
            return;
        }
        String text = "";
        if (value != null) {
            text = value.toString();
        }
        this.defaultLabel.setText(text);
    }

    private class DialogCellLayout
    extends Layout {
        private DialogCellLayout() {
        }

        public void layout(Composite editor, boolean force) {
            Rectangle bounds = editor.getClientArea();
            Point size = DialogCellEditor.this.button.computeSize(-1, -1, force);
            if (DialogCellEditor.this.contents != null) {
                DialogCellEditor.this.contents.setBounds(0, 0, bounds.width - size.x, bounds.height);
            }
            DialogCellEditor.this.button.setBounds(bounds.width - size.x, 0, size.x, bounds.height);
        }

        public Point computeSize(Composite editor, int wHint, int hHint, boolean force) {
            if (wHint != -1 && hHint != -1) {
                return new Point(wHint, hHint);
            }
            Point contentsSize = DialogCellEditor.this.contents.computeSize(-1, -1, force);
            Point buttonSize = DialogCellEditor.this.button.computeSize(-1, -1, force);
            Point result = new Point(buttonSize.x, Math.max(contentsSize.y, buttonSize.y));
            return result;
        }
    }
}

