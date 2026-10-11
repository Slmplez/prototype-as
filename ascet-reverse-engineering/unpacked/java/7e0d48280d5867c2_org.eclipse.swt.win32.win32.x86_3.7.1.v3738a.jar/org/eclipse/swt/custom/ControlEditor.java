/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;

public class ControlEditor {
    public int horizontalAlignment = 0x1000000;
    public boolean grabHorizontal = false;
    public int minimumWidth = 0;
    public int verticalAlignment = 0x1000000;
    public boolean grabVertical = false;
    public int minimumHeight = 0;
    Composite parent;
    Control editor;
    private boolean hadFocus;
    private Listener controlListener;
    private Listener scrollbarListener;
    private static final int[] EVENTS = new int[]{1, 2, 3, 4, 11};

    public ControlEditor(Composite parent) {
        ScrollBar vBar;
        this.parent = parent;
        this.controlListener = new Listener(){

            public void handleEvent(Event e) {
                ControlEditor.this.layout();
            }
        };
        int i = 0;
        while (i < EVENTS.length) {
            parent.addListener(EVENTS[i], this.controlListener);
            ++i;
        }
        this.scrollbarListener = new Listener(){

            public void handleEvent(Event e) {
                ControlEditor.this.scroll(e);
            }
        };
        ScrollBar hBar = parent.getHorizontalBar();
        if (hBar != null) {
            hBar.addListener(13, this.scrollbarListener);
        }
        if ((vBar = parent.getVerticalBar()) != null) {
            vBar.addListener(13, this.scrollbarListener);
        }
    }

    Rectangle computeBounds() {
        Rectangle clientArea = this.parent.getClientArea();
        Rectangle editorRect = new Rectangle(clientArea.x, clientArea.y, this.minimumWidth, this.minimumHeight);
        if (this.grabHorizontal) {
            editorRect.width = Math.max(clientArea.width, this.minimumWidth);
        }
        if (this.grabVertical) {
            editorRect.height = Math.max(clientArea.height, this.minimumHeight);
        }
        switch (this.horizontalAlignment) {
            case 131072: {
                editorRect.x += clientArea.width - editorRect.width;
                break;
            }
            case 16384: {
                break;
            }
            default: {
                editorRect.x += (clientArea.width - editorRect.width) / 2;
            }
        }
        switch (this.verticalAlignment) {
            case 1024: {
                editorRect.y += clientArea.height - editorRect.height;
                break;
            }
            case 128: {
                break;
            }
            default: {
                editorRect.y += (clientArea.height - editorRect.height) / 2;
            }
        }
        return editorRect;
    }

    public void dispose() {
        if (this.parent != null && !this.parent.isDisposed()) {
            ScrollBar vBar;
            int i = 0;
            while (i < EVENTS.length) {
                this.parent.removeListener(EVENTS[i], this.controlListener);
                ++i;
            }
            ScrollBar hBar = this.parent.getHorizontalBar();
            if (hBar != null) {
                hBar.removeListener(13, this.scrollbarListener);
            }
            if ((vBar = this.parent.getVerticalBar()) != null) {
                vBar.removeListener(13, this.scrollbarListener);
            }
        }
        this.parent = null;
        this.editor = null;
        this.hadFocus = false;
        this.controlListener = null;
        this.scrollbarListener = null;
    }

    public Control getEditor() {
        return this.editor;
    }

    public void layout() {
        if (this.editor == null || this.editor.isDisposed()) {
            return;
        }
        if (this.editor.getVisible()) {
            this.hadFocus = this.editor.isFocusControl();
        }
        this.editor.setBounds(this.computeBounds());
        if (this.hadFocus) {
            if (this.editor == null || this.editor.isDisposed()) {
                return;
            }
            this.editor.setFocus();
        }
    }

    void scroll(Event e) {
        if (this.editor == null || this.editor.isDisposed()) {
            return;
        }
        this.layout();
    }

    public void setEditor(Control editor) {
        if (editor == null) {
            this.editor = null;
            return;
        }
        this.editor = editor;
        this.layout();
        if (this.editor == null || this.editor.isDisposed()) {
            return;
        }
        editor.setVisible(true);
    }
}

