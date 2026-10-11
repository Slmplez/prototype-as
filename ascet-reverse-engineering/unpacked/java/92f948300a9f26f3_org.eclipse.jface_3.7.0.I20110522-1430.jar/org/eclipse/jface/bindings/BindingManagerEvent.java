/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.AbstractBitSetEvent
 */
package org.eclipse.jface.bindings;

import java.util.Collection;
import java.util.Map;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.AbstractBitSetEvent;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.util.Util;

public final class BindingManagerEvent
extends AbstractBitSetEvent {
    private static final int CHANGED_ACTIVE_BINDINGS = 1;
    private static final int CHANGED_ACTIVE_SCHEME = 2;
    private static final int CHANGED_LOCALE = 4;
    private static final int CHANGED_PLATFORM = 8;
    private static final int CHANGED_SCHEME_DEFINED = 16;
    private final BindingManager manager;
    private final Map previousTriggersByParameterizedCommand;
    private final Scheme scheme;

    public BindingManagerEvent(BindingManager manager, boolean activeBindingsChanged, Map previousTriggersByParameterizedCommand, boolean activeSchemeChanged, Scheme scheme, boolean schemeDefined, boolean localeChanged, boolean platformChanged) {
        if (manager == null) {
            throw new NullPointerException("A binding manager event needs a binding manager");
        }
        this.manager = manager;
        if (schemeDefined && scheme == null) {
            throw new NullPointerException("If a scheme changed defined state, then there should be a scheme identifier");
        }
        this.scheme = scheme;
        this.previousTriggersByParameterizedCommand = previousTriggersByParameterizedCommand;
        if (activeBindingsChanged) {
            this.changedValues |= 1;
        }
        if (activeSchemeChanged) {
            this.changedValues |= 2;
        }
        if (localeChanged) {
            this.changedValues |= 4;
        }
        if (platformChanged) {
            this.changedValues |= 8;
        }
        if (schemeDefined) {
            this.changedValues |= 0x10;
        }
    }

    public final BindingManager getManager() {
        return this.manager;
    }

    public final Scheme getScheme() {
        return this.scheme;
    }

    public final boolean isActiveBindingsChanged() {
        return (this.changedValues & 1) != 0;
    }

    public final boolean isActiveBindingsChangedFor(ParameterizedCommand parameterizedCommand) {
        Collection previousBindingCollection;
        Object[] currentBindings = this.manager.getActiveBindingsFor(parameterizedCommand);
        Object[] previousBindings = this.previousTriggersByParameterizedCommand != null ? ((previousBindingCollection = (Collection)this.previousTriggersByParameterizedCommand.get(parameterizedCommand)) == null ? (TriggerSequence[])null : previousBindingCollection.toArray(new TriggerSequence[previousBindingCollection.size()])) : (TriggerSequence[])null;
        return !Util.equals(currentBindings, previousBindings);
    }

    public final boolean isActiveSchemeChanged() {
        return (this.changedValues & 2) != 0;
    }

    public boolean isLocaleChanged() {
        return (this.changedValues & 4) != 0;
    }

    public boolean isPlatformChanged() {
        return (this.changedValues & 8) != 0;
    }

    public final boolean isSchemeChanged() {
        return this.scheme != null;
    }

    public final boolean isSchemeDefined() {
        return (this.changedValues & 0x10) != 0 && this.scheme != null;
    }
}

