/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.jface.text.source.IAnnotationMap;

class AnnotationMap
implements IAnnotationMap {
    private Object fLockObject;
    private final Object fInternalLockObject = new Object();
    private Map fInternalMap;

    public AnnotationMap(int capacity) {
        this.fInternalMap = new HashMap(capacity);
    }

    public synchronized void setLockObject(Object lockObject) {
        this.fLockObject = lockObject;
    }

    public synchronized Object getLockObject() {
        if (this.fLockObject == null) {
            return this.fInternalLockObject;
        }
        return this.fLockObject;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Iterator valuesIterator() {
        Object object = this.getLockObject();
        synchronized (object) {
            return new ArrayList(this.fInternalMap.values()).iterator();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Iterator keySetIterator() {
        Object object = this.getLockObject();
        synchronized (object) {
            return new ArrayList(this.fInternalMap.keySet()).iterator();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean containsKey(Object annotation) {
        Object object = this.getLockObject();
        synchronized (object) {
            return this.fInternalMap.containsKey(annotation);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object put(Object annotation, Object position) {
        Object object = this.getLockObject();
        synchronized (object) {
            return this.fInternalMap.put(annotation, position);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object get(Object annotation) {
        Object object = this.getLockObject();
        synchronized (object) {
            return this.fInternalMap.get(annotation);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void clear() {
        Object object = this.getLockObject();
        synchronized (object) {
            this.fInternalMap.clear();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object remove(Object annotation) {
        Object object = this.getLockObject();
        synchronized (object) {
            return this.fInternalMap.remove(annotation);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int size() {
        Object object = this.getLockObject();
        synchronized (object) {
            return this.fInternalMap.size();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean isEmpty() {
        Object object = this.getLockObject();
        synchronized (object) {
            return this.fInternalMap.isEmpty();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean containsValue(Object value) {
        Object object = this.getLockObject();
        synchronized (object) {
            return this.fInternalMap.containsValue(value);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void putAll(Map map) {
        Object object = this.getLockObject();
        synchronized (object) {
            this.fInternalMap.putAll(map);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Set entrySet() {
        Object object = this.getLockObject();
        synchronized (object) {
            return this.fInternalMap.entrySet();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Set keySet() {
        Object object = this.getLockObject();
        synchronized (object) {
            return this.fInternalMap.keySet();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Collection values() {
        Object object = this.getLockObject();
        synchronized (object) {
            return this.fInternalMap.values();
        }
    }
}

