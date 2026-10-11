/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys;

import org.eclipse.ui.commands.IKeySequenceBinding;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.keys.KeySequence;

public final class KeySequenceBinding
implements IKeySequenceBinding {
    public static final String DEFAULT_CONTEXT_ID = "org.eclipse.ui.contexts.window";
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private transient int hashCode;
    private transient boolean hashCodeComputed;
    private KeySequence keySequence;
    private int match;
    private transient String string;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.KeySequenceBinding");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public KeySequenceBinding(KeySequence keySequence, int match) {
        if (keySequence == null) {
            throw new NullPointerException();
        }
        if (match < 0) {
            throw new IllegalArgumentException();
        }
        this.keySequence = keySequence;
        this.match = match;
    }

    public int compareTo(Object object) {
        KeySequenceBinding castedObject = (KeySequenceBinding)object;
        int compareTo = Util.compare(this.match, castedObject.match);
        if (compareTo == 0) {
            compareTo = Util.compare(this.keySequence, castedObject.keySequence);
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof KeySequenceBinding)) {
            return false;
        }
        KeySequenceBinding castedObject = (KeySequenceBinding)object;
        if (!Util.equals(this.keySequence, castedObject.keySequence)) {
            return false;
        }
        return Util.equals(this.match, castedObject.match);
    }

    public KeySequence getKeySequence() {
        return this.keySequence;
    }

    public int getMatch() {
        return this.match;
    }

    public int hashCode() {
        if (!this.hashCodeComputed) {
            this.hashCode = HASH_INITIAL;
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.keySequence);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.match);
            this.hashCodeComputed = true;
        }
        return this.hashCode;
    }

    public String toString() {
        if (this.string == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('[');
            stringBuffer.append(this.keySequence);
            stringBuffer.append(',');
            stringBuffer.append(this.match);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }
}

