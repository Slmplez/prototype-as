/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.events.TypedEvent;

public final class ExtendedModifyEvent
extends TypedEvent {
    public int start;
    public int length;
    public String replacedText;
    static final long serialVersionUID = 3258696507027830832L;

    public ExtendedModifyEvent(StyledTextEvent e) {
        super(e);
        this.start = e.start;
        this.length = e.end - e.start;
        this.replacedText = e.text;
    }
}

