/*
 * Decompiled with CFR 0.152.
 */
package de.etas.types;

import java.util.Vector;

public class Set
extends Vector {
    public Set() {
    }

    public Set(Object[] obj) {
        this(obj.length);
        int i = 0;
        while (i < obj.length) {
            this.addElement(obj[i]);
            ++i;
        }
    }

    public Set(int cap) {
        super(cap);
    }

    public void add(Set s) {
        if (s == null) {
            return;
        }
        int n = s.size();
        int i = 0;
        while (i < n) {
            Object x = s.elementAt(i);
            if (!this.contains(x)) {
                this.addElement(x);
            }
            ++i;
        }
    }

    public boolean add(Object x) {
        if (x == null) {
            return false;
        }
        if (this.contains(x)) {
            return false;
        }
        this.addElement(x);
        return true;
    }

    public boolean contains(Vector v) {
        if (v == null) {
            return true;
        }
        int n = v.size();
        int i = 0;
        boolean ergeb = true;
        while (ergeb && i < n) {
            ergeb = this.contains(v.elementAt(i++));
        }
        return ergeb;
    }

    public boolean containsOneElement(Vector v) {
        if (v == null) {
            return true;
        }
        int n = v.size();
        int i = 0;
        boolean ergeb = v.isEmpty();
        while (!ergeb && i < n) {
            ergeb = this.contains(v.elementAt(i++));
        }
        return ergeb;
    }

    public Set minus(Set s) {
        if (s == null) {
            return this;
        }
        Set ergeb = (Set)this.clone();
        int n = s.size();
        int i = 0;
        while (i < n) {
            Object x = s.elementAt(i);
            ergeb.removeElement(x);
            ++i;
        }
        return ergeb;
    }
}

