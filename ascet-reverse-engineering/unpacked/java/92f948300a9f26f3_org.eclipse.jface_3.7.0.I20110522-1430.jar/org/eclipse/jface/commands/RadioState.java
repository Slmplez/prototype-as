/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IStateListener
 *  org.eclipse.core.commands.State
 */
package org.eclipse.jface.commands;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.IStateListener;
import org.eclipse.core.commands.State;
import org.eclipse.jface.commands.ToggleState;

public class RadioState
extends ToggleState {
    private String radioGroupIdentifier = null;

    public void dispose() {
        this.setRadioGroupIdentifier(null);
    }

    public final void setRadioGroupIdentifier(String identifier) {
        if (identifier == null) {
            RadioStateManager.unregisterState(this.radioGroupIdentifier, this);
            this.radioGroupIdentifier = null;
        } else {
            this.radioGroupIdentifier = identifier;
            RadioStateManager.registerState(identifier, this);
        }
    }

    public void setValue(Object value) {
        if (!(value instanceof Boolean)) {
            throw new IllegalArgumentException("RadioState takes a Boolean as a value");
        }
        if (((Boolean)value).booleanValue() && this.radioGroupIdentifier != null) {
            RadioStateManager.activateGroup(this.radioGroupIdentifier, this);
        }
        super.setValue(value);
    }

    private static final class RadioStateManager {
        private static Map radioStatesById = null;

        private RadioStateManager() {
        }

        private static final void activateGroup(String identifier, RadioState state) {
            if (radioStatesById == null) {
                return;
            }
            Object currentValue = radioStatesById.get(identifier);
            if (currentValue instanceof RadioGroup) {
                RadioGroup radioGroup = (RadioGroup)currentValue;
                radioGroup.activateMember(state);
            }
        }

        private static final void registerState(String identifier, RadioState state) {
            RadioGroup radioGroup;
            Object currentValue;
            if (radioStatesById == null) {
                radioStatesById = new HashMap();
            }
            if ((currentValue = radioStatesById.get(identifier)) instanceof RadioGroup) {
                radioGroup = (RadioGroup)currentValue;
            } else {
                radioGroup = new RadioGroup();
                radioStatesById.put(identifier, radioGroup);
            }
            radioGroup.addMember(state);
        }

        private static final void unregisterState(String identifier, RadioState state) {
            if (radioStatesById == null) {
                return;
            }
            Object currentValue = radioStatesById.get(identifier);
            if (currentValue instanceof RadioGroup) {
                RadioGroup radioGroup = (RadioGroup)currentValue;
                radioGroup.removeMember(state);
            }
        }

        private static final class RadioGroup
        implements IStateListener {
            private RadioState active = null;
            private Set members = null;

            private RadioGroup() {
            }

            private final void activateMember(RadioState state) {
                if (this.active != null && this.active != state) {
                    this.active.setValue(Boolean.FALSE);
                }
                this.active = state;
            }

            private final void addMember(RadioState state) {
                if (this.members == null) {
                    this.members = new HashSet(5);
                }
                this.members.add(state);
                state.addListener(this);
                Object value = state.getValue();
                if (value instanceof Boolean && ((Boolean)value).booleanValue()) {
                    this.activateMember(state);
                }
            }

            public final void handleStateChange(State state, Object oldValue) {
                Object newValue = state.getValue();
                if (newValue instanceof Boolean && ((Boolean)newValue).booleanValue()) {
                    this.activateMember((RadioState)state);
                }
            }

            private final void removeMember(RadioState state) {
                state.removeListener(this);
                if (this.active == state) {
                    this.active = null;
                }
                if (this.members == null) {
                    return;
                }
                this.members.remove((Object)state);
            }
        }
    }
}

