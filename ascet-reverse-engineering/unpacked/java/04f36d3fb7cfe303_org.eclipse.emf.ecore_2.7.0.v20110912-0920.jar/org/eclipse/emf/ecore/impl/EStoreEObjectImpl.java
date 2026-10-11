/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.ECollections
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.ECollections;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.BasicEObjectImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.DelegatingEcoreEList;
import org.eclipse.emf.ecore.util.DelegatingFeatureMap;
import org.eclipse.emf.ecore.util.EcoreEList;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EStoreEObjectImpl
extends EObjectImpl
implements EStructuralFeature.Internal.DynamicValueHolder {
    protected static final Object[] ENO_SETTINGS = new Object[0];
    protected static final InternalEObject EUNINITIALIZED_CONTAINER = new EObjectImpl();
    protected Object[] eSettings;
    protected InternalEObject.EStore eStore;

    public EStoreEObjectImpl() {
        this.eContainer = EUNINITIALIZED_CONTAINER;
    }

    public EStoreEObjectImpl(InternalEObject.EStore eStore) {
        this.eSetStore(eStore);
        this.eContainer = EUNINITIALIZED_CONTAINER;
    }

    public EStoreEObjectImpl(EClass eClass) {
        this.eSetClass(eClass);
        this.eContainer = EUNINITIALIZED_CONTAINER;
    }

    public EStoreEObjectImpl(EClass eClass, InternalEObject.EStore eStore) {
        this.eSetClass(eClass);
        this.eSetStore(eStore);
        this.eContainer = EUNINITIALIZED_CONTAINER;
    }

    protected boolean eIsCaching() {
        return true;
    }

    @Override
    public Object dynamicGet(int dynamicFeatureID) {
        EStructuralFeature eStructuralFeature;
        EList<?> result = this.eSettings[dynamicFeatureID];
        if (result == null && !(eStructuralFeature = this.eDynamicFeature(dynamicFeatureID)).isTransient()) {
            if (FeatureMapUtil.isFeatureMap(eStructuralFeature)) {
                result = this.createFeatureMap(eStructuralFeature);
                this.eSettings[dynamicFeatureID] = result;
            } else if (eStructuralFeature.isMany()) {
                this.eSettings[dynamicFeatureID] = result = this.createList(eStructuralFeature);
            } else {
                result = this.eStore().get(this, eStructuralFeature, -1);
                if (this.eIsCaching()) {
                    this.eSettings[dynamicFeatureID] = result;
                }
            }
        }
        return result;
    }

    @Override
    public void dynamicSet(int dynamicFeatureID, Object value) {
        EStructuralFeature eStructuralFeature = this.eDynamicFeature(dynamicFeatureID);
        if (eStructuralFeature.isTransient()) {
            this.eSettings[dynamicFeatureID] = value;
        } else {
            this.eStore().set(this, eStructuralFeature, -1, value);
            if (this.eIsCaching()) {
                this.eSettings[dynamicFeatureID] = value;
            }
        }
    }

    @Override
    public void dynamicUnset(int dynamicFeatureID) {
        EStructuralFeature eStructuralFeature = this.eDynamicFeature(dynamicFeatureID);
        if (eStructuralFeature.isTransient()) {
            this.eSettings[dynamicFeatureID] = null;
        } else {
            this.eStore().unset(this, eStructuralFeature);
            this.eSettings[dynamicFeatureID] = null;
        }
    }

    @Override
    protected boolean eDynamicIsSet(int dynamicFeatureID, EStructuralFeature eFeature) {
        return dynamicFeatureID < 0 ? this.eOpenIsSet(eFeature) : (eFeature.isTransient() ? this.eSettingDelegate(eFeature).dynamicIsSet(this, this.eSettings(), dynamicFeatureID) : this.eStore().isSet(this, eFeature));
    }

    protected EList<?> createList(EStructuralFeature eStructuralFeature) {
        EClassifier eType = eStructuralFeature.getEType();
        if (eType.getInstanceClassName() == "java.util.Map$Entry") {
            /*
             * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
             */
            class EStoreEcoreEMap
            extends EcoreEMap<Object, Object> {
                private static final long serialVersionUID = 1L;

                public EStoreEcoreEMap(EClassifier eClassifier, EStructuralFeature eStructuralFeature) {
                    super((EClass)eClassifier, BasicEMap.Entry.class, null);
                    this.delegateEList = new BasicEStoreEList<BasicEMap.Entry<Object, Object>>((InternalEObject)EStoreEObjectImpl.this, eStructuralFeature){
                        private static final long serialVersionUID = 1L;

                        protected void didAdd(int index, BasicEMap.Entry<Object, Object> newObject) {
                            this.doPut(newObject);
                        }

                        protected void didSet(int index, BasicEMap.Entry<Object, Object> newObject, BasicEMap.Entry<Object, Object> oldObject) {
                            this.didRemove(index, oldObject);
                            this.didAdd(index, newObject);
                        }

                        protected void didRemove(int index, BasicEMap.Entry<Object, Object> oldObject) {
                            this.doRemove(oldObject);
                        }

                        protected void didClear(int size, Object[] oldObjects) {
                            this.doClear();
                        }

                        protected void didMove(int index, BasicEMap.Entry<Object, Object> movedObject, int oldIndex) {
                            this.doMove(movedObject);
                        }
                    };
                    this.size = this.delegateEList.size();
                }
            }
            return new EStoreEcoreEMap(eType, eStructuralFeature);
        }
        return new BasicEStoreEList(this, eStructuralFeature);
    }

    protected FeatureMap createFeatureMap(EStructuralFeature eStructuralFeature) {
        return new EStoreFeatureMap(this, eStructuralFeature, this.eStore());
    }

    @Override
    public InternalEObject eInternalContainer() {
        if (this.eContainer == EUNINITIALIZED_CONTAINER) {
            this.eInitializeContainer();
        }
        return this.eContainer;
    }

    @Override
    public int eContainerFeatureID() {
        if (this.eContainer == EUNINITIALIZED_CONTAINER) {
            this.eInitializeContainer();
        }
        return this.eContainerFeatureID;
    }

    protected void eInitializeContainer() {
        this.eContainer = this.eStore().getContainer(this);
        if (this.eContainer != null) {
            EReference eContainingReference;
            EReference eOpposite;
            EStructuralFeature eContainingFeature = this.eStore().getContainingFeature(this);
            if (eContainingFeature instanceof EReference && (eOpposite = (eContainingReference = (EReference)eContainingFeature).getEOpposite()) != null) {
                this.eContainerFeatureID = this.eClass().getFeatureID(eOpposite);
                return;
            }
            this.eContainerFeatureID = -1 - this.eContainer.eClass().getFeatureID(eContainingFeature);
        }
    }

    @Override
    public InternalEObject.EStore eStore() {
        return this.eStore;
    }

    @Override
    public void eSetStore(InternalEObject.EStore store) {
        this.eStore = store;
    }

    @Override
    protected int eStaticFeatureCount() {
        return 0;
    }

    @Override
    public int eDerivedStructuralFeatureID(EStructuralFeature eStructuralFeature) {
        return this.eClass().getFeatureID(eStructuralFeature);
    }

    @Override
    protected BasicEObjectImpl.EPropertiesHolder eProperties() {
        if (this.eProperties == null) {
            this.eProperties = new EStoreEPropertiesHolderImpl();
        }
        return this.eProperties;
    }

    @Override
    protected boolean eHasSettings() {
        return this.eSettings != null;
    }

    @Override
    protected EStructuralFeature.Internal.DynamicValueHolder eSettings() {
        if (this.eSettings == null) {
            int size = this.eClass().getFeatureCount() - this.eStaticFeatureCount();
            this.eSettings = size == 0 ? ENO_SETTINGS : new Object[size];
        }
        return this;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class BasicEStoreEList<E>
    extends DelegatingEcoreEList.Dynamic<E> {
        private static final long serialVersionUID = 1L;

        public BasicEStoreEList(InternalEObject owner, EStructuralFeature eStructuralFeature) {
            super(owner, eStructuralFeature);
        }

        protected InternalEObject.EStore eStore() {
            return this.owner.eStore();
        }

        @Override
        public boolean isSet() {
            return this.eStore().isSet(this.owner, this.eStructuralFeature);
        }

        @Override
        public void unset() {
            if (this.isUnsettable() && this.isNotificationRequired()) {
                boolean oldIsSet = this.isSet();
                this.eStore().unset(this.owner, this.eStructuralFeature);
                this.dispatchNotification((Notification)this.createNotification(2, oldIsSet, false));
            } else {
                this.eStore().unset(this.owner, this.eStructuralFeature);
            }
        }

        protected List<E> delegateList() {
            throw new UnsupportedOperationException();
        }

        @Override
        public EStructuralFeature getEStructuralFeature() {
            return this.eStructuralFeature;
        }

        protected void delegateAdd(int index, Object object) {
            this.eStore().add(this.owner, this.eStructuralFeature, index, object);
        }

        protected void delegateAdd(Object object) {
            this.delegateAdd(this.delegateSize(), object);
        }

        protected List<E> delegateBasicList() {
            int size = this.delegateSize();
            if (size == 0) {
                return ECollections.emptyEList();
            }
            Object[] data = this.eStore().toArray(this.owner, this.eStructuralFeature);
            return new EcoreEList.UnmodifiableEList(this.owner, this.eStructuralFeature, data.length, data);
        }

        protected void delegateClear() {
            this.eStore().clear(this.owner, this.eStructuralFeature);
        }

        protected boolean delegateContains(Object object) {
            return this.eStore().contains(this.owner, this.eStructuralFeature, object);
        }

        protected boolean delegateContainsAll(Collection<?> collection) {
            for (Object o : collection) {
                if (this.delegateContains(o)) continue;
                return false;
            }
            return true;
        }

        protected E delegateGet(int index) {
            return (E)this.eStore().get(this.owner, this.eStructuralFeature, index);
        }

        protected int delegateHashCode() {
            return this.eStore().hashCode(this.owner, this.eStructuralFeature);
        }

        protected int delegateIndexOf(Object object) {
            return this.eStore().indexOf(this.owner, this.eStructuralFeature, object);
        }

        protected boolean delegateIsEmpty() {
            return this.eStore().isEmpty(this.owner, this.eStructuralFeature);
        }

        protected Iterator<E> delegateIterator() {
            return this.iterator();
        }

        protected int delegateLastIndexOf(Object object) {
            return this.eStore().lastIndexOf(this.owner, this.eStructuralFeature, object);
        }

        protected ListIterator<E> delegateListIterator() {
            return this.listIterator();
        }

        protected E delegateRemove(int index) {
            return (E)this.eStore().remove(this.owner, this.eStructuralFeature, index);
        }

        protected E delegateSet(int index, E object) {
            return (E)this.eStore().set(this.owner, this.eStructuralFeature, index, object);
        }

        protected int delegateSize() {
            return this.eStore().size(this.owner, this.eStructuralFeature);
        }

        protected Object[] delegateToArray() {
            return this.eStore().toArray(this.owner, this.eStructuralFeature);
        }

        protected <T> T[] delegateToArray(T[] array) {
            return this.eStore().toArray(this.owner, this.eStructuralFeature, array);
        }

        protected E delegateMove(int targetIndex, int sourceIndex) {
            return (E)this.eStore().move(this.owner, this.eStructuralFeature, targetIndex, sourceIndex);
        }

        protected boolean delegateEquals(Object object) {
            if (object == this) {
                return true;
            }
            if (!(object instanceof List)) {
                return false;
            }
            List list = (List)object;
            if (list.size() != this.delegateSize()) {
                return false;
            }
            ListIterator i = list.listIterator();
            while (i.hasNext()) {
                Object element = i.next();
                if (!(element == null ? this.get(i.previousIndex()) != null : !element.equals(this.get(i.previousIndex())))) continue;
                return false;
            }
            return true;
        }

        protected String delegateToString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[");
            int i = 0;
            int size = this.size();
            while (i < size) {
                E value = this.delegateGet(i);
                stringBuffer.append(String.valueOf(value));
                if (++i >= size) continue;
                stringBuffer.append(", ");
            }
            stringBuffer.append("]");
            return stringBuffer.toString();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class BasicEStoreFeatureMap
    extends DelegatingFeatureMap {
        private static final long serialVersionUID = 1L;

        public BasicEStoreFeatureMap(InternalEObject owner, EStructuralFeature eStructuralFeature) {
            super(owner, eStructuralFeature);
        }

        protected InternalEObject.EStore eStore() {
            return this.owner.eStore();
        }

        protected List<FeatureMap.Entry> delegateList() {
            throw new UnsupportedOperationException();
        }

        @Override
        public EStructuralFeature getEStructuralFeature() {
            return this.eStructuralFeature;
        }

        protected void delegateAdd(int index, FeatureMap.Entry object) {
            this.eStore().add(this.owner, this.eStructuralFeature, index, object);
        }

        protected void delegateAdd(FeatureMap.Entry object) {
            this.delegateAdd(this.delegateSize(), object);
        }

        protected List<FeatureMap.Entry> delegateBasicList() {
            int size = this.delegateSize();
            if (size == 0) {
                return ECollections.emptyEList();
            }
            Object[] data = this.eStore().toArray(this.owner, this.eStructuralFeature);
            return new EcoreEList.UnmodifiableEList(this.owner, this.eStructuralFeature, data.length, data);
        }

        protected void delegateClear() {
            this.eStore().clear(this.owner, this.eStructuralFeature);
        }

        protected boolean delegateContains(Object object) {
            return this.eStore().contains(this.owner, this.eStructuralFeature, object);
        }

        protected boolean delegateContainsAll(Collection<?> collection) {
            for (Object o : collection) {
                if (this.delegateContains(o)) continue;
                return false;
            }
            return true;
        }

        protected FeatureMap.Entry delegateGet(int index) {
            return (FeatureMap.Entry)this.eStore().get(this.owner, this.eStructuralFeature, index);
        }

        protected int delegateHashCode() {
            return this.eStore().hashCode(this.owner, this.eStructuralFeature);
        }

        protected int delegateIndexOf(Object object) {
            return this.eStore().indexOf(this.owner, this.eStructuralFeature, object);
        }

        protected boolean delegateIsEmpty() {
            return this.eStore().isEmpty(this.owner, this.eStructuralFeature);
        }

        protected Iterator<FeatureMap.Entry> delegateIterator() {
            return this.iterator();
        }

        protected int delegateLastIndexOf(Object object) {
            return this.eStore().lastIndexOf(this.owner, this.eStructuralFeature, object);
        }

        protected ListIterator<FeatureMap.Entry> delegateListIterator() {
            return this.listIterator();
        }

        protected FeatureMap.Entry delegateRemove(int index) {
            return (FeatureMap.Entry)this.eStore().remove(this.owner, this.eStructuralFeature, index);
        }

        protected FeatureMap.Entry delegateSet(int index, FeatureMap.Entry object) {
            return (FeatureMap.Entry)this.eStore().set(this.owner, this.eStructuralFeature, index, object);
        }

        protected int delegateSize() {
            return this.eStore().size(this.owner, this.eStructuralFeature);
        }

        protected Object[] delegateToArray() {
            return this.eStore().toArray(this.owner, this.eStructuralFeature);
        }

        protected <T> T[] delegateToArray(T[] array) {
            return this.eStore().toArray(this.owner, this.eStructuralFeature, array);
        }

        protected FeatureMap.Entry delegateMove(int targetIndex, int sourceIndex) {
            return (FeatureMap.Entry)this.eStore().move(this.owner, this.eStructuralFeature, targetIndex, sourceIndex);
        }

        protected String delegateToString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[");
            int i = 0;
            int size = this.size();
            while (i < size) {
                FeatureMap.Entry value = this.delegateGet(i);
                stringBuffer.append(String.valueOf(value));
                if (++i >= size) continue;
                stringBuffer.append(", ");
            }
            stringBuffer.append("]");
            return stringBuffer.toString();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class EStoreEList<E>
    extends BasicEStoreEList<E> {
        private static final long serialVersionUID = 1L;
        protected InternalEObject.EStore store;

        public EStoreEList(InternalEObject owner, EStructuralFeature eStructuralFeature, InternalEObject.EStore store) {
            super(owner, eStructuralFeature);
            this.store = store;
        }

        @Override
        protected final InternalEObject.EStore eStore() {
            return this.store;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class EStoreEPropertiesHolderImpl
    implements BasicEObjectImpl.EPropertiesHolder {
        protected EClass eClass;
        protected URI eProxyURI;
        protected Resource.Internal eResource;
        protected EList<EObject> eContents;
        protected EList<EObject> eCrossReferences;

        protected EStoreEPropertiesHolderImpl() {
        }

        @Override
        public EClass getEClass() {
            return this.eClass;
        }

        @Override
        public void setEClass(EClass eClass) {
            this.eClass = eClass;
        }

        @Override
        public URI getEProxyURI() {
            return this.eProxyURI;
        }

        @Override
        public void setEProxyURI(URI eProxyURI) {
            this.eProxyURI = eProxyURI;
        }

        @Override
        public Resource.Internal getEResource() {
            return this.eResource;
        }

        @Override
        public void setEResource(Resource.Internal eResource) {
            this.eResource = eResource;
        }

        @Override
        public EList<EObject> getEContents() {
            return this.eContents;
        }

        @Override
        public void setEContents(EList<EObject> eContents) {
            this.eContents = eContents;
        }

        @Override
        public EList<EObject> getECrossReferences() {
            return this.eCrossReferences;
        }

        @Override
        public void setECrossReferences(EList<EObject> eCrossReferences) {
            this.eCrossReferences = eCrossReferences;
        }

        @Override
        public boolean hasSettings() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void allocateSettings(int maximumDynamicFeatureID) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object dynamicGet(int dynamicFeatureID) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void dynamicSet(int dynamicFeatureID, Object value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void dynamicUnset(int dynamicFeatureID) {
            throw new UnsupportedOperationException();
        }
    }

    public static class EStoreFeatureMap
    extends BasicEStoreFeatureMap {
        private static final long serialVersionUID = 1L;
        protected final InternalEObject.EStore store;

        public EStoreFeatureMap(InternalEObject owner, EStructuralFeature eStructuralFeature, InternalEObject.EStore store) {
            super(owner, eStructuralFeature);
            this.store = store;
        }

        protected InternalEObject.EStore eStore() {
            return this.store;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class EStoreImpl
    implements InternalEObject.EStore {
        protected Map<Entry, Object> map = new HashMap<Entry, Object>();

        protected EList<Object> getList(Entry entry) {
            EList result = (EList)this.map.get(entry);
            if (result == null) {
                result = new BasicEList();
                this.map.put(entry, result);
            }
            return result;
        }

        @Override
        public Object get(InternalEObject eObject, EStructuralFeature feature, int index) {
            Entry entry = new Entry(eObject, feature);
            if (index == -1) {
                return this.map.get(entry);
            }
            return this.getList(entry).get(index);
        }

        @Override
        public Object set(InternalEObject eObject, EStructuralFeature feature, int index, Object value) {
            Entry entry = new Entry(eObject, feature);
            if (index == -1) {
                return this.map.put(entry, value);
            }
            EList<Object> list = this.getList(entry);
            return list.set(index, value);
        }

        @Override
        public void add(InternalEObject eObject, EStructuralFeature feature, int index, Object value) {
            Entry entry = new Entry(eObject, feature);
            this.getList(entry).add(index, value);
        }

        @Override
        public Object remove(InternalEObject eObject, EStructuralFeature feature, int index) {
            Entry entry = new Entry(eObject, feature);
            return this.getList(entry).remove(index);
        }

        @Override
        public Object move(InternalEObject eObject, EStructuralFeature feature, int targetIndex, int sourceIndex) {
            Entry entry = new Entry(eObject, feature);
            return this.getList(entry).move(targetIndex, sourceIndex);
        }

        @Override
        public void clear(InternalEObject eObject, EStructuralFeature feature) {
            Entry entry = new Entry(eObject, feature);
            this.map.remove(entry);
        }

        @Override
        public boolean isSet(InternalEObject eObject, EStructuralFeature feature) {
            Entry entry = new Entry(eObject, feature);
            return this.map.containsKey(entry);
        }

        @Override
        public void unset(InternalEObject eObject, EStructuralFeature feature) {
            Entry entry = new Entry(eObject, feature);
            this.map.remove(entry);
        }

        @Override
        public int size(InternalEObject eObject, EStructuralFeature feature) {
            Entry entry = new Entry(eObject, feature);
            return this.getList(entry).size();
        }

        @Override
        public int indexOf(InternalEObject eObject, EStructuralFeature feature, Object value) {
            Entry entry = new Entry(eObject, feature);
            return this.getList(entry).indexOf(value);
        }

        @Override
        public int lastIndexOf(InternalEObject eObject, EStructuralFeature feature, Object value) {
            Entry entry = new Entry(eObject, feature);
            return this.getList(entry).lastIndexOf(value);
        }

        @Override
        public Object[] toArray(InternalEObject eObject, EStructuralFeature feature) {
            Entry entry = new Entry(eObject, feature);
            return this.getList(entry).toArray();
        }

        @Override
        public <T> T[] toArray(InternalEObject eObject, EStructuralFeature feature, T[] array) {
            Entry entry = new Entry(eObject, feature);
            return this.getList(entry).toArray((Object[])array);
        }

        @Override
        public boolean isEmpty(InternalEObject eObject, EStructuralFeature feature) {
            Entry entry = new Entry(eObject, feature);
            return this.getList(entry).isEmpty();
        }

        @Override
        public boolean contains(InternalEObject eObject, EStructuralFeature feature, Object value) {
            Entry entry = new Entry(eObject, feature);
            return this.getList(entry).contains(value);
        }

        @Override
        public int hashCode(InternalEObject eObject, EStructuralFeature feature) {
            Entry entry = new Entry(eObject, feature);
            return this.getList(entry).hashCode();
        }

        @Override
        public InternalEObject getContainer(InternalEObject eObject) {
            return null;
        }

        @Override
        public EStructuralFeature getContainingFeature(InternalEObject eObject) {
            throw new UnsupportedOperationException();
        }

        @Override
        public EObject create(EClass eClass) {
            EStoreEObjectImpl result = new EStoreEObjectImpl(eClass, this);
            return result;
        }

        public static class Entry {
            protected EObject eObject;
            protected EStructuralFeature eStructuralFeature;

            public Entry(InternalEObject eObject, EStructuralFeature eStructuralFeature) {
                this.eObject = eObject;
                this.eStructuralFeature = eStructuralFeature;
            }

            public boolean equals(Object that) {
                if (that instanceof Entry) {
                    Entry entry = (Entry)that;
                    return this.eObject == entry.eObject && this.eStructuralFeature == entry.eStructuralFeature;
                }
                return false;
            }

            public int hashCode() {
                return this.eObject.hashCode() ^ this.eStructuralFeature.hashCode();
            }
        }
    }
}

