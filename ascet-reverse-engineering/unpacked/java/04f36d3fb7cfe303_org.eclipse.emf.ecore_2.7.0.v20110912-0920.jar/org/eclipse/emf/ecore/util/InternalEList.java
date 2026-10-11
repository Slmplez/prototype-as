/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InternalEList<E>
extends EList<E> {
    public E basicGet(int var1);

    public List<E> basicList();

    public Iterator<E> basicIterator();

    public ListIterator<E> basicListIterator();

    public ListIterator<E> basicListIterator(int var1);

    public Object[] basicToArray();

    public <T> T[] basicToArray(T[] var1);

    public int basicIndexOf(Object var1);

    public int basicLastIndexOf(Object var1);

    public boolean basicContains(Object var1);

    public boolean basicContainsAll(Collection<?> var1);

    public NotificationChain basicRemove(Object var1, NotificationChain var2);

    public NotificationChain basicAdd(E var1, NotificationChain var2);

    public void addUnique(E var1);

    public void addUnique(int var1, E var2);

    public boolean addAllUnique(Collection<? extends E> var1);

    public boolean addAllUnique(int var1, Collection<? extends E> var2);

    public E setUnique(int var1, E var2);

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface Unsettable<E>
    extends InternalEList<E> {
        public boolean isSet();

        public void unset();
    }
}

