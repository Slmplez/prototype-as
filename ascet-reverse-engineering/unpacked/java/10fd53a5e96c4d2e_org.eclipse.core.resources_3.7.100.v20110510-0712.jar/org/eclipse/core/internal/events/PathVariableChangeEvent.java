/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.events;

import java.util.EventObject;
import org.eclipse.core.resources.IPathVariableChangeEvent;
import org.eclipse.core.resources.IPathVariableManager;
import org.eclipse.core.runtime.IPath;

public class PathVariableChangeEvent
extends EventObject
implements IPathVariableChangeEvent {
    private static final long serialVersionUID = 1L;
    private String variableName;
    private IPath value;
    private int type;

    public PathVariableChangeEvent(IPathVariableManager source, String variableName, IPath value, int type) {
        super(source);
        if (type < 1 || type > 3) {
            throw new IllegalArgumentException("Invalid event type: " + type);
        }
        this.variableName = variableName;
        this.value = value;
        this.type = type;
    }

    public IPath getValue() {
        return this.value;
    }

    public String getVariableName() {
        return this.variableName;
    }

    public int getType() {
        return this.type;
    }

    public String toString() {
        String[] typeStrings = new String[]{"VARIABLE_CHANGED", "VARIABLE_CREATED", "VARIABLE_DELETED"};
        StringBuffer sb = new StringBuffer(this.getClass().getName());
        sb.append("[variable = ");
        sb.append(this.variableName);
        sb.append(", type = ");
        sb.append(typeStrings[this.type - 1]);
        if (this.type != 3) {
            sb.append(", value = ");
            sb.append(this.value);
        }
        sb.append("]");
        return sb.toString();
    }
}

