/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

public class SimpleDelta {
    protected int kind = 0;
    protected int changeFlags = 0;

    public void added() {
        this.kind = 1;
    }

    public void changed(int flags) {
        this.kind = 4;
        this.changeFlags |= flags;
    }

    public int getFlags() {
        return this.changeFlags;
    }

    public int getKind() {
        return this.kind;
    }

    public void modifiers() {
        this.changed(2);
    }

    public void removed() {
        this.kind = 2;
        this.changeFlags = 0;
    }

    public void superTypes() {
        this.changed(2048);
    }

    protected void toDebugString(StringBuffer buffer) {
        buffer.append("[");
        switch (this.getKind()) {
            case 1: {
                buffer.append('+');
                break;
            }
            case 2: {
                buffer.append('-');
                break;
            }
            case 4: {
                buffer.append('*');
                break;
            }
            default: {
                buffer.append('?');
            }
        }
        buffer.append("]: {");
        this.toDebugString(buffer, this.getFlags());
        buffer.append("}");
    }

    protected boolean toDebugString(StringBuffer buffer, int flags) {
        boolean prev = false;
        if ((flags & 2) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("MODIFIERS CHANGED");
            prev = true;
        }
        if ((flags & 0x800) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("SUPER TYPES CHANGED");
            prev = true;
        }
        return prev;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        this.toDebugString(buffer);
        return buffer.toString();
    }
}

