/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.EventObject;

public class ColumnViewerEditorDeactivationEvent
extends EventObject {
    private static final long serialVersionUID = 1L;
    public int eventType;
    public static final int EDITOR_CANCELED = 1;
    public static final int EDITOR_SAVED = 2;

    public ColumnViewerEditorDeactivationEvent(Object source) {
        super(source);
    }
}

