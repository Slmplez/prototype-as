/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.util;

import java.util.Vector;
import org.apache.xerces.xs.StringList;

public class StringListImpl
implements StringList {
    public static final StringList EMPTY_LIST = new StringList(){

        public int getLength() {
            return 0;
        }

        public boolean contains(String string) {
            return false;
        }

        public String item(int n) {
            return null;
        }
    };
    private String[] fArray = null;
    private int fLength = 0;
    private Vector fVector;

    public StringListImpl(Vector vector) {
        this.fVector = vector;
        this.fLength = vector == null ? 0 : vector.size();
    }

    public StringListImpl(String[] stringArray, int n) {
        this.fArray = stringArray;
        this.fLength = n;
    }

    public int getLength() {
        return this.fLength;
    }

    public boolean contains(String string) {
        if (this.fVector != null) {
            return this.fVector.contains(string);
        }
        if (string == null) {
            int n = 0;
            while (n < this.fLength) {
                if (this.fArray[n] == null) {
                    return true;
                }
                ++n;
            }
        } else {
            int n = 0;
            while (n < this.fLength) {
                if (string.equals(this.fArray[n])) {
                    return true;
                }
                ++n;
            }
        }
        return false;
    }

    public String item(int n) {
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        if (this.fVector != null) {
            return (String)this.fVector.elementAt(n);
        }
        return this.fArray[n];
    }
}

