/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ReferenceCounter {
    private Map mapIdToRec = new HashMap(11);

    public int addRef(Object id) {
        RefRec rec = (RefRec)this.mapIdToRec.get(id);
        if (rec == null) {
            return 0;
        }
        return rec.addRef();
    }

    public Object get(Object id) {
        RefRec rec = (RefRec)this.mapIdToRec.get(id);
        if (rec == null) {
            return null;
        }
        return rec.getValue();
    }

    public Set keySet() {
        return this.mapIdToRec.keySet();
    }

    public void put(Object id, Object value) {
        RefRec rec = new RefRec(id, value);
        this.mapIdToRec.put(id, rec);
    }

    public int getRef(Object id) {
        RefRec rec = (RefRec)this.mapIdToRec.get(id);
        if (rec == null) {
            return 0;
        }
        return rec.refCount;
    }

    public int removeRef(Object id) {
        RefRec rec = (RefRec)this.mapIdToRec.get(id);
        if (rec == null) {
            return 0;
        }
        int newCount = rec.removeRef();
        if (newCount <= 0) {
            this.mapIdToRec.remove(id);
        }
        return newCount;
    }

    public List values() {
        int size = this.mapIdToRec.size();
        ArrayList<Object> list = new ArrayList<Object>(size);
        Iterator iter = this.mapIdToRec.values().iterator();
        while (iter.hasNext()) {
            RefRec rec = (RefRec)iter.next();
            list.add(rec.getValue());
        }
        return list;
    }

    public class RefRec {
        public Object id;
        public Object value;
        private int refCount;

        public RefRec(Object id, Object value) {
            this.id = id;
            this.value = value;
            this.addRef();
        }

        public Object getId() {
            return this.id;
        }

        public Object getValue() {
            return this.value;
        }

        public int addRef() {
            ++this.refCount;
            return this.refCount;
        }

        public int removeRef() {
            --this.refCount;
            return this.refCount;
        }

        public int getRef() {
            return this.refCount;
        }

        public boolean isNotReferenced() {
            return this.refCount <= 0;
        }
    }
}

