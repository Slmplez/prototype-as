/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.traversers;

import org.apache.xerces.impl.xs.traversers.Container;
import org.apache.xerces.impl.xs.traversers.OneAttr;

class SmallContainer
extends Container {
    String[] keys;

    SmallContainer(int n) {
        this.keys = new String[n];
        this.values = new OneAttr[n];
    }

    void put(String string, OneAttr oneAttr) {
        this.keys[this.pos] = string;
        this.values[this.pos++] = oneAttr;
    }

    OneAttr get(String string) {
        int n = 0;
        while (n < this.pos) {
            if (this.keys[n].equals(string)) {
                return this.values[n];
            }
            ++n;
        }
        return null;
    }
}

