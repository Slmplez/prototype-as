/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.impl.NotificationImpl
 *  org.eclipse.emf.common.util.BasicEList$UnmodifiableEList
 */
package org.eclipse.emf.ecore.util;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.util.NotifyingInternalEListImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class EcoreEList<E>
extends NotifyingInternalEListImpl<E>
implements InternalEList.Unsettable<E>,
EStructuralFeature.Setting {
    private static final long serialVersionUID = 1L;
    protected final Class<?> dataClass;
    protected final InternalEObject owner;

    public EcoreEList(Class<?> dataClass, InternalEObject owner) {
        this.dataClass = dataClass;
        this.owner = owner;
    }

    protected Object[] newData(int capacity) {
        return (Object[])Array.newInstance(this.dataClass, capacity);
    }

    protected E validate(int index, E object) {
        super.validate(index, object);
        if (!this.hasInstanceClass() && object != null && !this.isInstance(object)) {
            throw new ArrayStoreException();
        }
        return object;
    }

    protected boolean isInstance(Object object) {
        return this.dataClass.isInstance(object);
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
        return false;
    }

    protected boolean hasNavigableInverse() {
        return false;
    }

    protected boolean isEObject() {
        return true;
    }

    protected boolean isContainment() {
        return false;
    }

    protected boolean hasProxies() {
        return false;
    }

    protected boolean hasInstanceClass() {
        return true;
    }

    protected E resolve(int index, E object) {
        return (E)(this.isEObject() && this.hasProxies() ? this.resolve(index, (EObject)object) : object);
    }

    protected EObject resolve(int index, EObject eObject) {
        EObject resolved = this.resolveProxy(eObject);
        if (resolved != eObject) {
            Object oldObject = this.data[index];
            EObject resolvedElement = resolved;
            this.assign(index, this.validate(index, resolvedElement));
            Object oldElement = oldObject;
            this.didSet(index, resolvedElement, oldElement);
            if (this.isContainment()) {
                EObject element = eObject;
                NotificationChain notificationChain = this.inverseRemove(element, null);
                if (((InternalEObject)resolved).eInternalContainer() == null) {
                    notificationChain = this.inverseAdd(resolvedElement, notificationChain);
                }
                if (notificationChain != null) {
                    notificationChain.dispatch();
                }
            }
            if (this.isNotificationRequired()) {
                this.dispatchNotification((Notification)this.createNotification(9, eObject, resolved, index, false));
            }
            return resolved;
        }
        return eObject;
    }

    protected E resolve(E object) {
        return (E)(this.isEObject() ? this.resolveProxy((EObject)object) : object);
    }

    protected EObject resolveProxy(EObject eObject) {
        return eObject.eIsProxy() ? this.owner.eResolveProxy((InternalEObject)eObject) : eObject;
    }

    public Object[] toArray() {
        if (this.hasProxies()) {
            int i = this.size - 1;
            while (i >= 0) {
                this.get(i);
                --i;
            }
        }
        return super.toArray();
    }

    public <T> T[] toArray(T[] array) {
        if (this.hasProxies()) {
            int i = this.size - 1;
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
            if (this.size > 4) {
                if (!this.isInstance(object)) {
                    return false;
                }
                if (this.isContainment()) {
                    boolean result;
                    InternalEObject eObject = (InternalEObject)object;
                    EObject eContainer = eObject.eContainer();
                    boolean bl = eContainer == this.owner && (this.hasNavigableInverse() ? eObject.eBaseStructuralFeatureID(eObject.eContainerFeatureID(), this.dataClass) == this.getInverseFeatureID() : -1 - eObject.eContainerFeatureID() == this.getFeatureID()) ? true : (result = false);
                    if (this.hasProxies() && !result && eContainer == null && eObject.eDirectResource() != null) {
                        int i = 0;
                        while (i < this.size) {
                            EObject containedEObject = this.resolveProxy((EObject)this.data[i]);
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
                while (i < this.size) {
                    EObject eObject = this.resolveProxy((EObject)this.data[i]);
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
            while (i < this.size) {
                EObject eObject = this.resolveProxy((EObject)this.data[i]);
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
            int i = this.size - 1;
            while (i >= 0) {
                EObject eObject = this.resolveProxy((EObject)this.data[i]);
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
    public static class Dynamic<E>
    extends Generic<E> {
        private static final long serialVersionUID = 1L;
        protected EStructuralFeature eStructuralFeature;

        public Dynamic(InternalEObject owner, EStructuralFeature eStructuralFeature) {
            super(Dynamic.kind(eStructuralFeature), Dynamic.wrapperClassFor(eStructuralFeature.getEType().getInstanceClass()), owner);
            this.eStructuralFeature = eStructuralFeature;
        }

        public Dynamic(int kind, InternalEObject owner, EStructuralFeature eStructuralFeature) {
            super(kind, Dynamic.wrapperClassFor(eStructuralFeature.getEType().getInstanceClass()), owner);
            this.eStructuralFeature = eStructuralFeature;
        }

        public Dynamic(int kind, Class<?> dataClass, InternalEObject owner, EStructuralFeature eStructuralFeature) {
            super(kind, dataClass, owner);
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
    extends EcoreEList<E> {
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

        public static Class<?> wrapperClassFor(Class<?> javaClass) {
            if (javaClass == null) {
                return Object.class;
            }
            return EcoreUtil.wrapperClassFor(javaClass);
        }

        public static int kind(EStructuralFeature eStructuralFeature) {
            int result = 0;
            EClassifier eClassifier = eStructuralFeature.getEType();
            if (eClassifier.getInstanceClass() != null) {
                result |= 4;
            }
            if (eStructuralFeature.isUnsettable()) {
                result |= 2;
            }
            if (eStructuralFeature instanceof EReference) {
                EReference eReference = (EReference)eStructuralFeature;
                EReference inverseEReference = eReference.getEOpposite();
                if (eReference.isContainment()) {
                    result |= 0x20;
                }
                if (inverseEReference != null) {
                    inverseEReference.getEContainingClass().getFeatureCount();
                    result |= 8;
                    if (inverseEReference.isMany()) {
                        result |= 0x10;
                    }
                    if (inverseEReference.isContainment()) {
                        result |= 0x40;
                    }
                }
                if (eReference.isResolveProxies()) {
                    result |= 0x800;
                }
                result |= 0x400;
            } else if (eClassifier instanceof EEnum) {
                result |= 0x200;
            } else {
                Class<?> instanceClass = eClassifier.getInstanceClass();
                if (instanceClass != null && instanceClass.isPrimitive()) {
                    result |= 0x100;
                }
            }
            if (eStructuralFeature.isUnique()) {
                result |= 0x80;
            }
            return result;
        }

        public Generic(int kind, Class<?> dataClass, InternalEObject owner) {
            super(dataClass, owner);
            this.kind = kind;
        }

        protected boolean useEquals() {
            return (this.kind & 0x600) == 0;
        }

        protected boolean canContainNull() {
            return (this.kind & 0x700) == 0;
        }

        protected boolean isUnique() {
            return (this.kind & 0x80) != 0;
        }

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

        @Override
        protected boolean isInstance(Object object) {
            return this.dataClass == null ? this.getFeatureType().isInstance(object) : super.isInstance(object);
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
    extends BasicEList.UnmodifiableEList<E>
    implements InternalEList.Unsettable<E>,
    EStructuralFeature.Setting {
        private static final long serialVersionUID = 1L;
        protected final InternalEObject owner;
        protected final EStructuralFeature eStructuralFeature;

        public UnmodifiableEList(InternalEObject owner, EStructuralFeature eStructuralFeature, int size, Object[] data) {
            super(size, data);
            this.owner = owner;
            this.eStructuralFeature = eStructuralFeature;
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
        public Object[] basicToArray() {
            return super.toArray();
        }

        @Override
        public <T> T[] basicToArray(T[] array) {
            return super.toArray((Object[])array);
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

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static class FastCompare<E>
        extends UnmodifiableEList<E> {
            private static final long serialVersionUID = 1L;

            public FastCompare(InternalEObject owner, EStructuralFeature eStructuralFeature, int size, Object[] data) {
                super(owner, eStructuralFeature, size, data);
            }

            protected boolean useEquals() {
                return false;
            }
        }
    }
}

