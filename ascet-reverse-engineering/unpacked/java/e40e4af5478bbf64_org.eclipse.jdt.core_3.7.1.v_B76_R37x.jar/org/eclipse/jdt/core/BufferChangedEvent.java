/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import java.util.EventObject;
import org.eclipse.jdt.core.IBuffer;

public class BufferChangedEvent
extends EventObject {
    private int length;
    private int offset;
    private String text;
    private static final long serialVersionUID = 655379473891745999L;

    public BufferChangedEvent(IBuffer buffer, int offset, int length, String text) {
        super(buffer);
        this.offset = offset;
        this.length = length;
        this.text = text;
    }

    public IBuffer getBuffer() {
        return (IBuffer)this.source;
    }

    public int getLength() {
        return this.length;
    }

    public int getOffset() {
        return this.offset;
    }

    public String getText() {
        return this.text;
    }
}

