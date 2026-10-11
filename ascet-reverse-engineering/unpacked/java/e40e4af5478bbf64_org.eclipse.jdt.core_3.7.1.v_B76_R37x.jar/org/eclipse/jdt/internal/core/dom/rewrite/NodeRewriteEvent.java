/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEvent;

public class NodeRewriteEvent
extends RewriteEvent {
    private Object originalValue;
    private Object newValue;

    public NodeRewriteEvent(Object originalValue, Object newValue) {
        this.originalValue = originalValue;
        this.newValue = newValue;
    }

    public Object getNewValue() {
        return this.newValue;
    }

    public Object getOriginalValue() {
        return this.originalValue;
    }

    public int getChangeKind() {
        if (this.originalValue == this.newValue) {
            return 0;
        }
        if (this.originalValue == null) {
            return 1;
        }
        if (this.newValue == null) {
            return 2;
        }
        if (this.originalValue.equals(this.newValue)) {
            return 0;
        }
        return 4;
    }

    public boolean isListRewrite() {
        return false;
    }

    public void setNewValue(Object newValue) {
        this.newValue = newValue;
    }

    public RewriteEvent[] getChildren() {
        return null;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        switch (this.getChangeKind()) {
            case 1: {
                buf.append(" [inserted: ");
                buf.append(this.getNewValue());
                buf.append(']');
                break;
            }
            case 4: {
                buf.append(" [replaced: ");
                buf.append(this.getOriginalValue());
                buf.append(" -> ");
                buf.append(this.getNewValue());
                buf.append(']');
                break;
            }
            case 2: {
                buf.append(" [removed: ");
                buf.append(this.getOriginalValue());
                buf.append(']');
                break;
            }
            default: {
                buf.append(" [unchanged]");
            }
        }
        return buf.toString();
    }
}

