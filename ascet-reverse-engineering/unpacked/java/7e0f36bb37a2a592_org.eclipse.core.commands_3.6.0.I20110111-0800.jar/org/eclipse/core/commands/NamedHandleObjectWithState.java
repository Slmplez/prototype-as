/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.IObjectWithState;
import org.eclipse.core.commands.State;
import org.eclipse.core.commands.common.NamedHandleObject;
import org.eclipse.core.commands.common.NotDefinedException;

abstract class NamedHandleObjectWithState
extends NamedHandleObject
implements IObjectWithState {
    private static final String[] NO_STATE = new String[0];
    private Map states = null;

    protected NamedHandleObjectWithState(String id) {
        super(id);
    }

    public void addState(String stateId, State state) {
        if (state == null) {
            throw new NullPointerException("Cannot add a null state");
        }
        if (this.states == null) {
            this.states = new HashMap(3);
        }
        this.states.put(stateId, state);
    }

    public final String getDescription() throws NotDefinedException {
        Object value;
        String description = super.getDescription();
        State descriptionState = this.getState("DESCRIPTION");
        if (descriptionState != null && (value = descriptionState.getValue()) != null) {
            return value.toString();
        }
        return description;
    }

    public final String getName() throws NotDefinedException {
        Object value;
        String name = super.getName();
        State nameState = this.getState("NAME");
        if (nameState != null && (value = nameState.getValue()) != null) {
            return value.toString();
        }
        return name;
    }

    public final State getState(String stateId) {
        if (this.states == null || this.states.isEmpty()) {
            return null;
        }
        return (State)this.states.get(stateId);
    }

    public final String[] getStateIds() {
        if (this.states == null || this.states.isEmpty()) {
            return NO_STATE;
        }
        Set stateIds = this.states.keySet();
        return stateIds.toArray(new String[stateIds.size()]);
    }

    public void removeState(String id) {
        if (id == null) {
            throw new NullPointerException("Cannot remove a null id");
        }
        if (this.states != null) {
            this.states.remove(id);
            if (this.states.isEmpty()) {
                this.states = null;
            }
        }
    }
}

