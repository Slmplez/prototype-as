/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ParameterizedCommand
 */
package org.eclipse.jface.bindings.keys;

import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeySequence;

public final class KeyBinding
extends Binding {
    private final KeySequence keySequence;

    public KeyBinding(KeySequence keySequence, ParameterizedCommand command, String schemeId, String contextId, String locale, String platform, String windowManager, int type) {
        super(command, schemeId, contextId, locale, platform, windowManager, type);
        if (keySequence == null) {
            throw new NullPointerException("The key sequence cannot be null");
        }
        if (!keySequence.isComplete()) {
            throw new IllegalArgumentException("Cannot bind to an incomplete key sequence");
        }
        if (keySequence.isEmpty()) {
            throw new IllegalArgumentException("Cannot bind to an empty key sequence");
        }
        this.keySequence = keySequence;
    }

    public final KeySequence getKeySequence() {
        return this.keySequence;
    }

    public TriggerSequence getTriggerSequence() {
        return this.getKeySequence();
    }
}

