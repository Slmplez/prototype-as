/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings;

import org.eclipse.jface.bindings.Trigger;
import org.eclipse.jface.util.Util;

public abstract class TriggerSequence {
    private static final int HASH_CODE_NOT_COMPUTED = -1;
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    protected transient int hashCode = -1;
    protected final Trigger[] triggers;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.bindings.TriggerSequence");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public TriggerSequence(Trigger[] triggers) {
        if (triggers == null) {
            throw new NullPointerException("The triggers cannot be null");
        }
        int i = 0;
        while (i < triggers.length) {
            if (triggers[i] == null) {
                throw new IllegalArgumentException("All triggers in a trigger sequence must be an instance of Trigger");
            }
            ++i;
        }
        int triggerLength = triggers.length;
        this.triggers = new Trigger[triggerLength];
        System.arraycopy(triggers, 0, this.triggers, 0, triggerLength);
    }

    public final boolean endsWith(TriggerSequence triggerSequence, boolean equals) {
        if (triggerSequence == null) {
            throw new NullPointerException("Cannot end with a null trigger sequence");
        }
        return Util.endsWith(this.triggers, triggerSequence.triggers, equals);
    }

    public final boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof TriggerSequence)) {
            return false;
        }
        TriggerSequence triggerSequence = (TriggerSequence)object;
        return Util.equals(this.triggers, triggerSequence.triggers);
    }

    public abstract String format();

    public abstract TriggerSequence[] getPrefixes();

    public final Trigger[] getTriggers() {
        int triggerLength = this.triggers.length;
        Trigger[] triggerCopy = new Trigger[triggerLength];
        System.arraycopy(this.triggers, 0, triggerCopy, 0, triggerLength);
        return triggerCopy;
    }

    public final int hashCode() {
        if (this.hashCode == -1) {
            this.hashCode = HASH_INITIAL;
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.triggers);
            if (this.hashCode == -1) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }

    public final boolean isEmpty() {
        return this.triggers.length == 0;
    }

    public final boolean startsWith(TriggerSequence triggerSequence, boolean equals) {
        if (triggerSequence == null) {
            throw new NullPointerException("A trigger sequence cannot start with null");
        }
        return Util.startsWith(this.triggers, triggerSequence.triggers, equals);
    }
}

