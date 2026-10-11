/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.jface.text.ISynchronizable;

public interface IAnnotationMap
extends Map,
ISynchronizable {
    public Iterator valuesIterator();

    public Iterator keySetIterator();

    public Set entrySet();

    public Set keySet();

    public Collection values();
}

