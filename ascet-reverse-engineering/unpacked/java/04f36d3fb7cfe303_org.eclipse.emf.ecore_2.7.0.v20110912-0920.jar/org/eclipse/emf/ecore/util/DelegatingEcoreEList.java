/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.impl.NotificationImpl
 *  org.eclipse.emf.common.util.DelegatingEList$UnmodifiableEList
 */
package org.eclipse.emf.ecore.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.common.util.DelegatingEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.DelegatingNotifyingInternalEListImpl;
import org.eclipse.emf.ecore.util.EcoreEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class DelegatingEcoreEList<E>
extends DelegatingNotifyingInternalEListImpl<E>
implements InternalEList.Unsettable<E>,
EStructuralFeature.Setting {
    private static final long serialVersionUID = 1L;
    protected final InternalEObject owner;

    public DelegatingEcoreEList(InternalEObject owner) {
        this.owner = owner;
    }

    protected boolean canContainNull() {
        EClassifier eClassifier = this.getFeatureType();
        if (eClassifier instanceof EDataType) {
            if (eClassifier instanceof EEnum) {
                return false;
            }
            return !eClassifier.getInstanceClass().isPrimitive();
        }
        return false;
    }

    protected boolean isUnique() {
        return this.getEStructuralFeature().isUnique();
    }

    protected boolean hasInverse() {
        EStructuralFeature eStructuralFeature = this.getEStructuralFeature();
        if (eStructuralFeature instanceof EReference) {
            EReference eReference = (EReference)eStructuralFeature;
            return eReference.isContainment() || ((EReference)eStructuralFeature).getEOpposite() != null;
        }
        return false;
    }

    protected E validate(int index, E object) {
        super.validate(index, object);
        if (object != null && !this.isInstance(object)) {
            throw new ArrayStoreException();
        }
        return object;
    }

    protected boolean isInstance(Object object) {
        return this.getFeatureType().isInstance(object);
    }

    public Object getNotifier() {
        return this.owner;
    }

    public Object getFeature() {
        return this.getEStructuralFeature();
    }

    public int getFeatureID() {
        return this.owner.eClass().getFeatureID(this.getEStructuralFeature());
    }

    @Override
    public EStructuralFeature getEStructuralFeature() {
        return this.owner.eClass().getEStructuralFeature(this.getFeatureID());
    }

    protected EClassifier getFeatureType() {
        return this.getEStructuralFeature().getEType();
    }

    protected EReference getInverseEReference() {
        return ((EReference)this.getEStructuralFeature()).getEOpposite();
    }

    protected int getInverseFeatureID() {
        return this.getInverseEReference().getFeatureID();
    }

    protected Class<?> getInverseFeatureClass() {
        return ((EClass)this.getEStructuralFeature().getEType()).getInstanceClass();
    }

    protected boolean hasManyInverse() {
        EStructuralFeature eStructuralFeature = this.getEStructuralFeature();
        if (eStructuralFeature instanceof EReference) {
            EReference eReference = (EReference)eStructuralFeature;
            EReference oppositeEReference = eReference.getEOpposite();
            return oppositeEReference != null && oppositeEReference.isMany();
        }
        return false;
    }

    protected boolean hasNavigableInverse() {
        EStructuralFeature eStructuralFeature = this.getEStructuralFeature();
        if (eStructuralFeature instanceof EReference) {
            EReference eReference = (EReference)eStructuralFeature;
            EReference oppositeEReference = eReference.getEOpposite();
            return oppositeEReference != null;
        }
        return false;
    }

    protected boolean isEObject() {
        return this.getFeatureType() instanceof EClass;
    }

    protected boolean isContainment() {
        EStructuralFeature eStructuralFeature = this.getEStructuralFeature();
        if (eStructuralFeature instanceof EReference) {
            EReference eReference = (EReference)eStructuralFeature;
            return eReference.isContainment();
        }
        return false;
    }

    protected boolean hasProxies() {
        EStructuralFeature eStructuralFeature = this.getEStructuralFeature();
        if (eStructuralFeature instanceof EReference) {
            EReference eReference = (EReference)eStructuralFeature;
            return eReference.isResolveProxies();
        }
        return false;
    }

    protected boolean hasInstanceClass() {
        return this.getFeatureType().getInstanceClass() != null;
    }

    protected E resolve(int index, E object) {
        EObject resolved;
        if (this.isEObject() && this.hasProxies() && (resolved = this.resolveProxy((EObject)object)) != object) {
            Object oldObject = this.delegateGet(index);
            this.delegateSet(index, this.validate(index, resolved));
            this.didSet(index, resolved, oldObject);
            if (this.isContainment()) {
                NotificationChain notificationChain = this.inverseRemove(object, null);
                if (((InternalEObject)resolved).eInternalContainer() == null) {
                    notificationChain = this.inverseAdd(resolved, notificationChain);
                }
                if (notificationChain != null) {
                    notificationChain.dispatch();
                }
            }
            if (this.isNotificationRequired()) {
                this.dispatchNotification((Notification)this.createNotification(9, object, resolved, index, false));
            }
            return (E)resolved;
        }
        return object;
    }

    protected E resolve(E object) {
        return (E)(this.isEObject() ? this.resolveProxy((EObject)object) : object);
    }

    protected EObject resolveProxy(EObject eObject) {
        return eObject.eIsProxy() ? this.owner.eResolveProxy((InternalEObject)eObject) : eObject;
    }

    public Object[] toArray() {
        if (this.hasProxies()) {
            int i = this.size() - 1;
            while (i >= 0) {
                this.get(i);
                --i;
            }
        }
        return super.toArray();
    }

    public <T> T[] toArray(T[] array) {
        if (this.hasProxies()) {
            int i = this.size() - 1;
            while (i >= 0) {
                this.get(i);
                --i;
            }
        }
        return super.toArray((Object[])array);
    }

    protected NotificationImpl createNotification(int eventType, Object oldObject, Object newObject, int index, boolean wasSet) {
        return new ENotificationImpl(this.owner, eventType, this.getFeatureID(), oldObject, newObject, index, wasSet);
    }

    protected NotificationImpl createNotification(int eventType, boolean oldValue, boolean newValue) {
        return new ENotificationImpl(this.owner, eventType, this.getFeatureID(), oldValue, newValue);
    }

    protected void dispatchNotification(Notification notification) {
        this.owner.eNotify(notification);
    }

    protected boolean isNotificationRequired() {
        return this.owner.eNotificationRequired();
    }

    public NotificationChain inverseAdd(E object, NotificationChain notifications) {
        InternalEObject internalEObject = (InternalEObject)object;
        if (this.hasNavigableInverse()) {
            if (!this.hasInstanceClass()) {
                return internalEObject.eInverseAdd(this.owner, internalEObject.eClass().getFeatureID(this.getInverseEReference()), null, notifications);
            }
            return internalEObject.eInverseAdd(this.owner, this.getInverseFeatureID(), this.getInverseFeatureClass(), notifications);
        }
        return internalEObject.eInverseAdd(this.owner, -1 - this.getFeatureID(), null, notifications);
    }

    public NotificationChain inverseRemove(E object, NotificationChain notifications) {
        InternalEObject internalEObject = (InternalEObject)object;
        if (this.hasNavigableInverse()) {
            if (!this.hasInstanceClass()) {
                return internalEObject.eInverseRemove(this.owner, internalEObject.eClass().getFeatureID(this.getInverseEReference()), null, notifications);
            }
            return internalEObject.eInverseRemove(this.owner, this.getInverseFeatureID(), this.getInverseFeatureClass(), notifications);
        }
        return internalEObject.eInverseRemove(this.owner, -1 - this.getFeatureID(), null, notifications);
    }

    public boolean contains(Object object) {
        if (this.isEObject()) {
            int size = this.size();
            if (size > 4) {
                if (!this.isInstance(object)) {
                    return false;
                }
                if (this.isContainment()) {
                    boolean result;
                    InternalEObject eObject = (InternalEObject)object;
                    EObject eContainer = eObject.eContainer();
                    boolean bl = eContainer == this.owner && (this.hasNavigableInverse() ? eObject.eBaseStructuralFeatureID(eObject.eContainerFeatureID(), this.getInverseFeatureClass()) == this.getInverseFeatureID() : -1 - eObject.eContainerFeatureID() == this.getFeatureID()) ? true : (result = false);
                    if (this.hasProxies() && !result && eContainer == null && eObject.eDirectResource() != null) {
                        int i = 0;
                        while (i < size) {
                            EObject containedEObject = this.resolveProxy((EObject)this.delegateGet(i));
                            if (containedEObject == object) {
                                return true;
                            }
                            ++i;
                        }
                    }
                    return result;
                }
                if (this.hasNavigableInverse() && !this.hasManyInverse()) {
                    return ((EObject)object).eGet(this.getInverseEReference()) == this.owner;
                }
            }
            boolean result = super.contains(object);
            if (this.hasProxies() && !result) {
                int i = 0;
                while (i < size) {
                    EObject eObject = this.resolveProxy((EObject)this.delegateGet(i));
                    if (eObject == object) {
                        return true;
                    }
                    ++i;
                }
            }
            return result;
        }
        return super.contains(object);
    }

    public int indexOf(Object object) {
        int index = super.indexOf(object);
        if (index >= 0) {
            return index;
        }
        if (this.isEObject()) {
            int i = 0;
            int size = this.size();
            while (i < size) {
                EObject eObject = this.resolveProxy((EObject)this.delegateGet(i));
                if (eObject == object) {
                    return i;
                }
                ++i;
            }
        }
        return -1;
    }

    public int lastIndexOf(Object object) {
        int result = super.lastIndexOf(object);
        if (this.isEObject() && result == -1) {
            int i = this.size() - 1;
            while (i >= 0) {
                EObject eObject = this.resolveProxy((EObject)this.delegateGet(i));
                if (eObject == object) {
                    return i;
                }
                --i;
            }
        }
        return result;
    }

    @Override
    public EObject getEObject() {
        return this.owner;
    }

    @Override
    public Object get(boolean resolve) {
        return this;
    }

    @Override
    public void set(Object newValue) {
        this.clear();
        this.addAll((List)newValue);
    }

    @Override
    public boolean isSet() {
        return !this.isEmpty();
    }

    @Override
    public void unset() {
        this.clear();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static abstract class Dynamic<E>
    extends Generic<E> {
        private static final long serialVersionUID = 1L;
        protected EStructuralFeature eStructuralFeature;

        public Dynamic(InternalEObject owner, EStructuralFeature eStructuralFeature) {
            super(Dynamic.kind(eStructuralFeature), owner);
            this.eStructuralFeature = eStructuralFeature;
        }

        public Dynamic(int kind, InternalEObject owner, EStructuralFeature eStructuralFeature) {
            super(kind, owner);
            this.eStructuralFeature = eStructuralFeature;
        }

        @Override
        public EStructuralFeature getEStructuralFeature() {
            return this.eStructuralFeature;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static abstract class Generic<E>
    extends DelegatingEcoreEList<E> {
        private static final long serialVersionUID = 1L;
        public static final int IS_SET = 1;
        public static final int IS_UNSETTABLE = 2;
        public static final int HAS_INSTANCE_CLASS = 4;
        public static final int HAS_NAVIGABLE_INVERSE = 8;
        public static final int HAS_MANY_INVERSE = 16;
        public static final int IS_CONTAINMENT = 32;
        public static final int IS_CONTAINER = 64;
        public static final int IS_UNIQUE = 128;
        public static final int IS_PRIMITIVE = 256;
        public static final int IS_ENUM = 512;
        public static final int IS_EOBJECT = 1024;
        public static final int HAS_PROXIES = 2048;
        protected int kind;

        public static int kind(EStructuralFeature eStructuralFeature) {
            return EcoreEList.Generic.kind(eStructuralFeature);
        }

        public Generic(int kind, InternalEObject owner) {
            super(owner);
            this.kind = kind;
        }

        protected boolean useEquals() {
            return (this.kind & 0x600) == 0;
        }

        @Override
        protected boolean canContainNull() {
            return (this.kind & 0x700) == 0;
        }

        @Override
        protected boolean isUnique() {
            return (this.kind & 0x80) != 0;
        }

        @Override
        protected boolean hasInverse() {
            return (this.kind & 0x28) != 0;
        }

        @Override
        protected boolean hasManyInverse() {
            return (this.kind & 0x10) != 0;
        }

        @Override
        protected boolean hasNavigableInverse() {
            return (this.kind & 8) != 0;
        }

        @Override
        protected boolean isEObject() {
            return (this.kind & 0x400) != 0;
        }

        @Override
        protected boolean isContainment() {
            return (this.kind & 0x20) != 0;
        }

        @Override
        protected boolean hasProxies() {
            return (this.kind & 0x800) != 0;
        }

        @Override
        protected boolean hasInstanceClass() {
            return (this.kind & 4) != 0;
        }

        protected boolean isContainer() {
            return (this.kind & 0x40) != 0;
        }

        protected boolean isUnsettable() {
            return (this.kind & 2) != 0;
        }

        @Override
        public boolean isSet() {
            return this.isUnsettable() ? (this.kind & 1) != 0 : !this.isEmpty();
        }

        @Override
        public void unset() {
            super.unset();
            if (this.isUnsettable()) {
                if (this.isNotificationRequired()) {
                    boolean oldIsSet = (this.kind & 1) != 0;
                    this.kind &= 0xFFFFFFFE;
                    this.dispatchNotification((Notification)this.createNotification(2, oldIsSet, false));
                } else {
                    this.kind &= 0xFFFFFFFE;
                }
            }
        }

        protected void didChange() {
            this.kind |= 1;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class UnmodifiableEList<E>
    extends DelegatingEList.UnmodifiableEList<E>
    implements InternalEList.Unsettable<E>,
    EStructuralFeature.Setting {
        private static final long serialVersionUID = 1L;
        protected final InternalEObject owner;
        protected final EStructuralFeature eStructuralFeature;

        public UnmodifiableEList(InternalEObject owner, EStructuralFeature eStructuralFeature, List<E> underlyingList) {
            super(underlyingList);
            this.owner = owner;
            this.eStructuralFeature = eStructuralFeature;
        }

        @Override
        public E basicGet(int index) {
            return (E)super.basicGet(index);
        }

        @Override
        public List<E> basicList() {
            return super.basicList();
        }

        @Override
        public Iterator<E> basicIterator() {
            return super.basicIterator();
        }

        @Override
        public ListIterator<E> basicListIterator() {
            return super.basicListIterator();
        }

        @Override
        public ListIterator<E> basicListIterator(int index) {
            return super.basicListIterator(index);
        }

        @Override
        public Object[] basicToArray() {
            return super.toArray();
        }

        @Override
        public <T> T[] basicToArray(T[] array) {
            return super.toArray((Object[])array);
        }

        @Override
        public boolean basicContains(Object object) {
            return super.contains(object);
        }

        @Override
        public boolean basicContainsAll(Collection<?> collection) {
            return super.containsAll(collection);
        }

        @Override
        public int basicIndexOf(Object object) {
            return super.indexOf(object);
        }

        @Override
        public int basicLastIndexOf(Object object) {
            return super.lastIndexOf(object);
        }

        @Override
        public EObject getEObject() {
            return this.owner;
        }

        @Override
        public EStructuralFeature getEStructuralFeature() {
            return this.eStructuralFeature;
        }

        @Override
        public Object get(boolean resolve) {
            return this;
        }

        @Override
        public void set(Object newValue) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean isSet() {
            return !this.isEmpty();
        }

        @Override
        public void unset() {
            throw new UnsupportedOperationException();
        }

        @Override
        public NotificationChain basicRemove(Object object, NotificationChain notifications) {
            throw new UnsupportedOperationException();
        }

        @Override
        public NotificationChain basicAdd(E object, NotificationChain notifications) {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static abstract class Unsettable<E>
    extends DelegatingEcoreEList<E> {
        private static final long serialVersionUID = 1L;
        protected boolean isSet;

        public Unsettable(InternalEObject owner) {
            super(owner);
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
                this.dispatchNotification((Notification)this.createNotification(2, oldIsSet, false));
            } else {
                this.isSet = false;
            }
        }
    }
}

