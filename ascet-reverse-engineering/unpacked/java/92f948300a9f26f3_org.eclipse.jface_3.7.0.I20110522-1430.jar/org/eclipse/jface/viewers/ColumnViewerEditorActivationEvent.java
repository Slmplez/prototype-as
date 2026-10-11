/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.TraverseEvent
 */
package org.eclipse.jface.viewers;

import java.util.EventObject;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.TraverseEvent;

public class ColumnViewerEditorActivationEvent
extends EventObject {
    private static final long serialVersionUID = 1L;
    public static final int KEY_PRESSED = 1;
    public static final int MOUSE_CLICK_SELECTION = 2;
    public static final int MOUSE_DOUBLE_CLICK_SELECTION = 3;
    public static final int PROGRAMMATIC = 4;
    public static final int TRAVERSAL = 5;
    public EventObject sourceEvent;
    public int time;
    public int eventType;
    public int keyCode;
    public char character;
    public int stateMask;
    public boolean cancel = false;

    public ColumnViewerEditorActivationEvent(ViewerCell cell) {
        super(cell);
        this.eventType = 4;
    }

    public ColumnViewerEditorActivationEvent(ViewerCell cell, MouseEvent event) {
        super(cell);
        this.eventType = event.count >= 2 ? 3 : 2;
        this.sourceEvent = event;
        this.time = event.time;
    }

    public ColumnViewerEditorActivationEvent(ViewerCell cell, KeyEvent event) {
        super(cell);
        this.eventType = 1;
        this.sourceEvent = event;
        this.time = event.time;
        this.keyCode = event.keyCode;
        this.character = event.character;
        this.stateMask = event.stateMask;
    }

    public ColumnViewerEditorActivationEvent(ViewerCell cell, TraverseEvent event) {
        super(cell);
        this.eventType = 5;
        this.sourceEvent = event;
    }
}

