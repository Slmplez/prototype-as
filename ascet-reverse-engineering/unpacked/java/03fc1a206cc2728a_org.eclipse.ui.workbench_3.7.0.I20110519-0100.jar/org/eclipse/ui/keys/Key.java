/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.bindings.keys.IKeyLookup
 *  org.eclipse.jface.bindings.keys.KeyLookupFactory
 */
package org.eclipse.ui.keys;

import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.ui.internal.util.Util;

public abstract class Key
implements Comparable {
    protected final int key;

    Key(int key) {
        this.key = key;
    }

    public final int compareTo(Object object) {
        return Util.compare(this.key, ((Key)object).key);
    }

    public final boolean equals(Object object) {
        if (!(object instanceof Key)) {
            return false;
        }
        return this.key == ((Key)object).key;
    }

    public final int hashCode() {
        return Util.hashCode(this.key);
    }

    public final String toString() {
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        return lookup.formalNameLookup(this.key);
    }
}

