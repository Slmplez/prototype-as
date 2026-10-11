/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEMap
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.util;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcoreEMap<K, V>
extends BasicEMap<K, V>
implements InternalEList.Unsettable<Map.Entry<K, V>>,
EStructuralFeature.Setting {
    private static final long serialVersionUID = 1L;
    protected EClass entryEClass;
    protected Class<?> entryClass;

    public EcoreEMap(EClass entryEClass, Class<?> entryClass, InternalEObject owner, int featureID) {
        this.entryClass = entryClass;
        assert (entryClass != null && BasicEMap.Entry.class.isAssignableFrom(entryClass)) : "A class derived from org.eclipse.emf.common.util.BasicEMap.Entry is required: " + entryClass;
        this.entryEClass = entryEClass;
        this.delegateEList = new DelegateEObjectContainmentEList(entryClass, owner, featureID);
    }

    public EcoreEMap(EClass entryEClass, Class<?> entryClass, InternalEObject owner, int featureID, int inverseFeatureID) {
        this.entryClass = entryClass;
        assert (entryClass != null && BasicEMap.Entry.class.isAssignableFrom(entryClass)) : "A class derived from org.eclipse.emf.common.util.BasicEMap.Entry is required: " + entryClass;
        this.entryEClass = entryEClass;
        this.delegateEList = new DelegateEObjectContainmentWithInverseEList(entryClass, owner, featureID, inverseFeatureID);
    }

    public EcoreEMap(EClass entryEClass, Class<?> entryClass, EList<BasicEMap.Entry<K, V>> delegateEList) {
        this.entryClass = entryClass;
        assert (entryClass != null && BasicEMap.Entry.class.isAssignableFrom(entryClass)) : "A class derived from org.eclipse.emf.common.util.BasicEMap.Entry is required: " + entryClass;
        this.entryEClass = entryEClass;
        this.delegateEList = delegateEList;
    }

    protected void initializeDelegateEList() {
    }

    protected BasicEList<BasicEMap.Entry<K, V>> newList() {
        return new BasicEList<BasicEMap.Entry<K, V>>(){
            private static final long serialVersionUID = 1L;

            public Object[] newData(int listCapacity) {
                return (Object[])Array.newInstance(EcoreEMap.this.entryClass, listCapacity);
            }
        };
    }

    protected BasicEMap.Entry<K, V> newEntry(int hash, K key, V value) {
        BasicEMap.Entry entry = (BasicEMap.Entry)this.entryEClass.getEPackage().getEFactoryInstance().create(this.entryEClass);
        entry.setHash(hash);
        entry.setKey(key);
        entry.setValue(value);
        return entry;
    }

    @Override
    public BasicEMap.Entry<K, V> basicGet(int index) {
        return (BasicEMap.Entry)((InternalEList)this.delegateEList).basicGet(index);
    }

    @Override
    public List<Map.Entry<K, V>> basicList() {
        return ((InternalEList)this.delegateEList).basicList();
    }

    @Override
    public Iterator<Map.Entry<K, V>> basicIterator() {
        return ((InternalEList)this.delegateEList).basicIterator();
    }

    @Override
    public ListIterator<Map.Entry<K, V>> basicListIterator() {
        return ((InternalEList)this.delegateEList).basicListIterator();
    }

    @Override
    public ListIterator<Map.Entry<K, V>> basicListIterator(int index) {
        return ((InternalEList)this.delegateEList).basicListIterator(index);
    }

    @Override
    public boolean basicContains(Object object) {
        return ((InternalEList)this.delegateEList).basicContains(object);
    }

    @Override
    public boolean basicContainsAll(Collection<?> collection) {
        return ((InternalEList)this.delegateEList).basicContainsAll(collection);
    }

    @Override
    public int basicIndexOf(Object object) {
        return ((InternalEList)this.delegateEList).basicIndexOf(object);
    }

    @Override
    public int basicLastIndexOf(Object object) {
        return ((InternalEList)this.delegateEList).basicLastIndexOf(object);
    }

    @Override
    public Object[] basicToArray() {
        return ((InternalEList)this.delegateEList).basicToArray();
    }

    @Override
    public <T> T[] basicToArray(T[] array) {
        return ((InternalEList)this.delegateEList).basicToArray(array);
    }

    @Override
    public NotificationChain basicRemove(Object object, NotificationChain notifications) {
        return ((InternalEList)this.delegateEList).basicRemove(object, notifications);
    }

    @Override
    public NotificationChain basicAdd(Map.Entry<K, V> object, NotificationChain notifications) {
        return ((InternalEList)this.delegateEList).basicAdd(object, notifications);
    }

    @Override
    public void addUnique(Map.Entry<K, V> object) {
        ((InternalEList)this.delegateEList).addUnique(object);
    }

    @Override
    public void addUnique(int index, Map.Entry<K, V> object) {
        ((InternalEList)this.delegateEList).addUnique(index, object);
    }

    @Override
    public boolean addAllUnique(Collection<? extends Map.Entry<K, V>> collection) {
        return ((InternalEList)this.delegateEList).addAllUnique(collection);
    }

    @Override
    public boolean addAllUnique(int index, Collection<? extends Map.Entry<K, V>> collection) {
        return ((InternalEList)this.delegateEList).addAllUnique(collection);
    }

    @Override
    public Map.Entry<K, V> setUnique(int index, Map.Entry<K, V> object) {
        return ((InternalEList)this.delegateEList).setUnique(index, object);
    }

    @Override
    public EObject getEObject() {
        return ((EStructuralFeature.Setting)this.delegateEList).getEObject();
    }

    @Override
    public EStructuralFeature getEStructuralFeature() {
        return ((EStructuralFeature.Setting)this.delegateEList).getEStructuralFeature();
    }

    @Override
    public Object get(boolean resolve) {
        return ((EStructuralFeature.Setting)this.delegateEList).get(resolve);
    }

    @Override
    public void set(Object value) {
        if (value instanceof Map) {
            ((EStructuralFeature.Setting)this.delegateEList).unset();
            Map mapValue = (Map)value;
            this.putAll(mapValue);
        } else {
            ((EStructuralFeature.Setting)this.delegateEList).set(value);
        }
    }

    @Override
    public boolean isSet() {
        return ((EStructuralFeature.Setting)this.delegateEList).isSet();
    }

    @Override
    public void unset() {
        ((EStructuralFeature.Setting)this.delegateEList).unset();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class DelegateEObjectContainmentEList<E>
    extends EObjectContainmentEList<E> {
        private static final long serialVersionUID = 1L;

        public DelegateEObjectContainmentEList(Class<?> entryClass, InternalEObject owner, int featureID) {
            super(entryClass, owner, featureID);
        }

        protected void didAdd(int index, E newObject) {
            EcoreEMap.this.doPut(newObject);
        }

        protected void didSet(int index, E newObject, E oldObject) {
            this.didRemove(index, oldObject);
            if (oldObject == newObject) {
                ((BasicEMap.Entry)oldObject).setHash(EcoreEMap.this.hashOf(((BasicEMap.Entry)newObject).getKey()));
            }
            this.didAdd(index, newObject);
        }

        protected void didRemove(int index, E oldObject) {
            EcoreEMap.this.doRemove(oldObject);
        }

        protected void didClear(int size, Object[] oldObjects) {
            EcoreEMap.this.doClear();
        }

        protected void didMove(int index, E movedObject, int oldIndex) {
            EcoreEMap.this.doMove(movedObject);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class DelegateEObjectContainmentWithInverseEList<E>
    extends DelegateEObjectContainmentEList<E> {
        private static final long serialVersionUID = 1L;
        protected final int inverseFeatureID;

        public DelegateEObjectContainmentWithInverseEList(Class<?> entryClass, InternalEObject owner, int featureID, int inverseFeatureID) {
            super(entryClass, owner, featureID);
            this.inverseFeatureID = inverseFeatureID;
        }

        @Override
        protected boolean hasNavigableInverse() {
            return true;
        }

        @Override
        public int getInverseFeatureID() {
            return this.inverseFeatureID;
        }

        @Override
        public Class<?> getInverseFeatureClass() {
            return this.dataClass;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Unsettable<K, V>
    extends EcoreEMap<K, V> {
        private static final long serialVersionUID = 1L;

        public Unsettable(EClass entryEClass, Class<?> entryClass, InternalEObject owner, int featureID) {
            super(entryEClass, entryClass, null);
            this.delegateEList = new UnsettableDelegateEObjectContainmentEList(entryClass, owner, featureID);
        }

        public Unsettable(EClass entryEClass, Class<?> entryClass, InternalEObject owner, int featureID, int inverseFeatureID) {
            super(entryEClass, entryClass, null);
            this.delegateEList = new UnsettableDelegateEObjectContainmentWithInverseEList(entryClass, owner, featureID, inverseFeatureID);
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        protected class UnsettableDelegateEObjectContainmentEList<E>
        extends DelegateEObjectContainmentEList<E> {
            private static final long serialVersionUID = 1L;
            protected boolean isSet;

            public UnsettableDelegateEObjectContainmentEList(Class<?> dataClass, InternalEObject owner, int featureID) {
                super(dataClass, owner, featureID);
            }

            protected void didChange() {
                this.isSet = true;
            }

            @Override
            public boolean isSet() {
                return this.isSet;
            }

            @Override
            public void unset() {
                super.unset();
                if (this.isNotificationRequired()) {
                    boolean oldIsSet = this.isSet;
                    this.isSet = false;
                    this.owner.eNotify((Notification)this.createNotification(2, oldIsSet, false));
                } else {
                    this.isSet = false;
                }
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        protected class UnsettableDelegateEObjectContainmentWithInverseEList<E>
        extends DelegateEObjectContainmentWithInverseEList<E> {
            private static final long serialVersionUID = 1L;
            protected boolean isSet;

            public UnsettableDelegateEObjectContainmentWithInverseEList(Class<?> dataClass, InternalEObject owner, int featureID, int inverseFeatureID) {
                super(dataClass, owner, featureID, inverseFeatureID);
            }

            protected void didChange() {
                this.isSet = true;
            }

            @Override
            public boolean isSet() {
                return this.isSet;
            }

            @Override
            public void unset() {
                super.unset();
                if (this.isNotificationRequired()) {
                    boolean oldIsSet = this.isSet;
                    this.isSet = false;
                    this.owner.eNotify((Notification)this.createNotification(2, oldIsSet, false));
                } else {
                    this.isSet = false;
                }
            }
        }
    }
}

