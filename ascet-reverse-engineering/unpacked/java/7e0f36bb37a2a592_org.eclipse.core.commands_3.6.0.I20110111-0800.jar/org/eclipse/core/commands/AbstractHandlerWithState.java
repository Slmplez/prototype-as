/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.IObjectWithState;
import org.eclipse.core.commands.IStateListener;
import org.eclipse.core.commands.State;

public abstract class AbstractHandlerWithState
extends AbstractHandler
implements IObjectWithState,
IStateListener {
    private Map states = null;

    public void addState(String stateId, State state) {
        if (state == null) {
            throw new NullPointerException("Cannot add a null state");
        }
        if (this.states == null) {
            this.states = new HashMap(3);
        }
        this.states.put(stateId, state);
        state.addListener(this);
        this.handleStateChange(state, null);
    }

    public final State getState(String stateId) {
        if (this.states == null || this.states.isEmpty()) {
            return null;
        }
        return (State)this.states.get(stateId);
    }

    public final String[] getStateIds() {
        if (this.states == null || this.states.isEmpty()) {
            return null;
        }
        Set stateIds = this.states.keySet();
        return stateIds.toArray(new String[stateIds.size()]);
    }

    public void removeState(String stateId) {
        if (stateId == null) {
            throw new NullPointerException("Cannot remove a null state");
        }
        State state = (State)this.states.get(stateId);
        if (state != null) {
            state.removeListener(this);
            if (this.states != null) {
                this.states.remove(state);
                if (this.states.isEmpty()) {
                    this.states = null;
                }
            }
        }
    }

    public abstract /* synthetic */ void handleStateChange(State var1, Object var2);
}

