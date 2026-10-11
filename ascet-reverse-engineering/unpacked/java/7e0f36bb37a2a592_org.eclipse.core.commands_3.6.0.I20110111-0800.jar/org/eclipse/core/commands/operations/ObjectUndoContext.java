/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.operations;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.UndoContext;

public final class ObjectUndoContext
extends UndoContext {
    private Object object;
    private String label;
    private List children = new ArrayList();

    public ObjectUndoContext(Object object) {
        this(object, null);
    }

    public ObjectUndoContext(Object object, String label) {
        this.object = object;
        this.label = label;
    }

    public String getLabel() {
        if (this.label != null) {
            return this.label;
        }
        if (this.object != null) {
            return this.object.toString();
        }
        return super.getLabel();
    }

    public Object getObject() {
        return this.object;
    }

    public void addMatch(IUndoContext context) {
        this.children.add(context);
    }

    public void removeMatch(IUndoContext context) {
        this.children.remove(context);
    }

    public boolean matches(IUndoContext context) {
        if (this.children.contains(context)) {
            return true;
        }
        if (context instanceof ObjectUndoContext && this.getObject() != null) {
            return this.getObject().equals(((ObjectUndoContext)context).getObject());
        }
        return super.matches(context);
    }

    public String toString() {
        return this.getLabel();
    }
}

