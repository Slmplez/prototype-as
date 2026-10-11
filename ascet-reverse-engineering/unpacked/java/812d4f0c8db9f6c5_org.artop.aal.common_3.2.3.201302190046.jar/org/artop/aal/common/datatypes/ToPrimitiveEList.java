/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.AbstractEList
 *  org.eclipse.emf.common.util.AbstractEList$EIterator
 *  org.eclipse.emf.common.util.AbstractEList$EListIterator
 *  org.eclipse.emf.common.util.DelegatingEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package org.artop.aal.common.datatypes;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.artop.aal.common.datatypes.AbstractNumericalDatatype;
import org.artop.aal.common.datatypes.INumericalDataTypeEList;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.AbstractEList;
import org.eclipse.emf.common.util.DelegatingEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ToPrimitiveEList<P, T extends AbstractNumericalDatatype>
extends DelegatingEList<P>
implements InternalEList.Unsettable<P>,
INumericalDataTypeEList<P, T> {
    private final EList<T> delegation;
    private static final long serialVersionUID = 1L;

    public ToPrimitiveEList(EList<T> delegation) {
        this.delegation = delegation;
    }

    public EList<T> getDelegationList() {
        return this.delegation;
    }

    protected List<P> delegateList() {
        return this;
    }

    public abstract T newDelegationElement(P var1);

    public abstract T newDelegationElement(String var1);

    protected abstract Class<P> getDataClass();

    protected int delegateSize() {
        return this.delegation.size();
    }

    protected boolean delegateIsEmpty() {
        return this.delegation.isEmpty();
    }

    protected boolean delegateContains(Object object) {
        for (AbstractNumericalDatatype t : this.delegation) {
            if (!t.basicGetValue().equals(object)) continue;
            return true;
        }
        return false;
    }

    protected boolean delegateContainsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (this.delegateContains(obj)) continue;
            return false;
        }
        return true;
    }

    protected int delegateIndexOf(Object object) {
        int i = 0;
        while (i < this.delegation.size()) {
            AbstractNumericalDatatype t = (AbstractNumericalDatatype)this.delegation.get(i);
            if (t.basicGetValue().equals(object)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    protected int delegateLastIndexOf(Object object) {
        int i = this.delegation.size() - 1;
        while (i > -1) {
            AbstractNumericalDatatype t = (AbstractNumericalDatatype)this.delegation.get(i);
            if (t.basicGetValue().equals(object)) {
                return i;
            }
            --i;
        }
        return -1;
    }

    protected Object[] delegateToArray() {
        return this.delegateToArray((Object[])Array.newInstance(this.getDataClass(), this.delegation.size()));
    }

    protected <R> R[] delegateToArray(R[] array) {
        if (array.length < this.delegation.size()) {
            array = (Object[])Array.newInstance(this.getDataClass(), this.delegation.size());
        }
        int i = 0;
        while (i < this.delegation.size()) {
            array[i] = ((AbstractNumericalDatatype)this.delegation.get(i)).basicGetValue();
            ++i;
        }
        return array;
    }

    protected P delegateGet(int index) {
        return (P)((AbstractNumericalDatatype)this.delegation.get(index)).basicGetValue();
    }

    protected P delegateSet(int index, P object) {
        AbstractNumericalDatatype t = (AbstractNumericalDatatype)this.delegation.get(index);
        Object result = t.basicGetValue();
        t.basicSetValue(object);
        this.delegation.set(index, (Object)t);
        return (P)result;
    }

    protected void delegateAdd(P object) {
        T element = this.newDelegationElement(object);
        this.delegation.add(element);
    }

    protected void delegateAdd(int index, P object) {
        T element = this.newDelegationElement(object);
        this.delegation.add(index, element);
    }

    protected P delegateRemove(int index) {
        AbstractNumericalDatatype remove = (AbstractNumericalDatatype)this.delegation.remove(index);
        return (P)remove.basicGetValue();
    }

    protected void delegateClear() {
        this.delegation.clear();
    }

    protected P delegateMove(int targetIndex, int sourceIndex) {
        AbstractNumericalDatatype move = (AbstractNumericalDatatype)this.delegation.move(targetIndex, sourceIndex);
        return (P)move.basicGetValue();
    }

    protected boolean delegateEquals(Object object) {
        if (object instanceof List) {
            List otherList = (List)object;
            int thisSize = this.size();
            if (otherList.size() != thisSize) {
                return false;
            }
            int i = 0;
            while (i < thisSize) {
                if (!this.get(i).equals(otherList.get(i))) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    protected int delegateHashCode() {
        int hashCode = 1;
        int i = 0;
        int size = this.size();
        while (i < size) {
            Object object = this.primitiveGet(i);
            hashCode = 31 * hashCode + (object == null ? 0 : object.hashCode());
            ++i;
        }
        return hashCode;
    }

    protected String delegateToString() {
        return this.delegation.toString();
    }

    protected Iterator<P> delegateIterator() {
        return new EIterator();
    }

    protected ListIterator<P> delegateListIterator() {
        return new EListIterator();
    }

    protected List<P> delegateBasicList() {
        return this;
    }

    public List<P> basicList() {
        return this;
    }

    public Iterator<P> basicIterator() {
        return super.basicIterator();
    }

    public P basicGet(int index) {
        return (P)super.basicGet(index);
    }

    public ListIterator<P> basicListIterator() {
        return super.basicListIterator();
    }

    public ListIterator<P> basicListIterator(int index) {
        return super.basicListIterator(index);
    }

    public Object[] basicToArray() {
        return this.delegateToArray();
    }

    public <R> R[] basicToArray(R[] array) {
        return this.delegateToArray(array);
    }

    public boolean basicContainsAll(Collection<?> collection) {
        return this.containsAll(collection);
    }

    public int basicLastIndexOf(Object object) {
        return this.lastIndexOf(object);
    }

    public NotificationChain basicRemove(Object object, NotificationChain notifications) {
        this.remove(object);
        return notifications;
    }

    public NotificationChain basicAdd(P object, NotificationChain notifications) {
        this.add(object);
        return notifications;
    }

    public int basicIndexOf(Object object) {
        return this.indexOf(object);
    }

    public boolean basicContains(Object object) {
        return this.contains(object);
    }

    public void unset() {
        this.clear();
    }

    public boolean isSet() {
        return !this.isEmpty();
    }

    @Override
    public T getNumericalData(int index) {
        AbstractNumericalDatatype clone = (AbstractNumericalDatatype)((AbstractNumericalDatatype)this.getDelegationList().get(index)).clone();
        return (T)clone;
    }

    @Override
    public void setNumericalData(int index, T data) {
        AbstractNumericalDatatype existingData = (AbstractNumericalDatatype)this.getDelegationList().get(index);
        existingData.setRadix(((AbstractNumericalDatatype)data).getRadix());
        existingData.setNoOfDigits(existingData.getNoOfDigits());
        this.getDelegationList().set(index, (Object)existingData);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class EIterator<P>
    extends AbstractEList.EIterator<P> {
        protected EIterator() {
            super((AbstractEList)ToPrimitiveEList.this);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class EListIterator<P>
    extends AbstractEList.EListIterator<P> {
        protected EListIterator() {
            super((AbstractEList)ToPrimitiveEList.this);
        }
    }
}

