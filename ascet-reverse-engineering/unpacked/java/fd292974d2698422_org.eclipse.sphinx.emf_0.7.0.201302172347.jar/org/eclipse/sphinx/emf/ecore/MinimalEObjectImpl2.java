/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Adapter$Internal
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.BasicNotifierImpl$EObservableAdapterList
 *  org.eclipse.emf.common.notify.impl.BasicNotifierImpl$EObservableAdapterList$Listener
 *  org.eclipse.emf.common.notify.impl.NotificationImpl
 *  org.eclipse.emf.common.util.ArrayDelegatingEList
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EStructuralFeature$Internal$DynamicValueHolder
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.BasicEObjectImpl
 *  org.eclipse.emf.ecore.impl.BasicEObjectImpl$EPropertiesHolder
 *  org.eclipse.emf.ecore.resource.Resource$Internal
 *  org.eclipse.emf.ecore.util.EContentsEList
 *  org.eclipse.emf.ecore.util.ECrossReferenceEList
 */
package org.eclipse.sphinx.emf.ecore;

import java.util.Arrays;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.BasicNotifierImpl;
import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.common.util.ArrayDelegatingEList;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.BasicEObjectImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EContentsEList;
import org.eclipse.emf.ecore.util.ECrossReferenceEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MinimalEObjectImpl2
extends BasicEObjectImpl
implements EObject,
EStructuralFeature.Internal.DynamicValueHolder {
    private static final int NO_DELIVER = 1;
    private static final int CONTAINER = 2;
    private static final int ADAPTER = 4;
    private static final int ADAPTER_LISTENER = 8;
    private static final int CLASS = 16;
    private static final int SETTING = 32;
    private static final int PROXY = 64;
    private static final int RESOURCE = 128;
    protected static final int FIELD_MASK = 254;
    protected int eFlags;
    private Object eStorage;
    protected static final Object[] NO_SETTINGS = new Object[0];

    protected MinimalEObjectImpl2() {
    }

    protected BasicEObjectImpl.EPropertiesHolder eProperties() {
        throw new UnsupportedOperationException();
    }

    protected BasicEObjectImpl.EPropertiesHolder eBasicProperties() {
        throw new UnsupportedOperationException();
    }

    protected BasicEList<Adapter> eBasicAdapters() {
        throw new UnsupportedOperationException();
    }

    protected int getFieldMask() {
        return 254;
    }

    protected int getMaxField() {
        return 128;
    }

    protected final boolean hasField(int field) {
        return (this.eFlags & field) != 0;
    }

    protected final Object getField(int field) {
        if (this.hasField(field)) {
            int fieldIndex = this.fieldIndex(field);
            return fieldIndex == -1 ? this.eStorage : ((Object[])this.eStorage)[fieldIndex];
        }
        return null;
    }

    protected final Object setField(int field, Object value) {
        Object oldValue = null;
        if (this.hasField(field)) {
            if (value == null) {
                oldValue = this.removeField(field);
            } else {
                int fieldIndex = this.fieldIndex(field);
                if (fieldIndex == -1) {
                    oldValue = this.eStorage;
                    this.eStorage = value;
                } else {
                    oldValue = ((Object[])this.eStorage)[fieldIndex];
                    ((Object[])this.eStorage)[fieldIndex] = value;
                }
            }
        } else if (value != null) {
            this.addField(field, value);
        }
        return oldValue;
    }

    protected final int fieldIndex(int field) {
        int result = 0;
        int bit = 2;
        while (bit < field) {
            if ((this.eFlags & bit) != 0) {
                ++result;
            }
            bit <<= 1;
        }
        if (result == 0) {
            bit = field <<= 1;
            while (bit <= this.getMaxField()) {
                if ((this.eFlags & bit) != 0) {
                    return 0;
                }
                bit <<= 1;
            }
            return -1;
        }
        return result;
    }

    protected final void addField(int field, Object value) {
        int fieldCount = Integer.bitCount(this.eFlags & this.getFieldMask());
        if (fieldCount == 0) {
            this.eStorage = value;
        } else {
            Object[] result;
            if (fieldCount == 1) {
                result = new Object[2];
                int fieldIndex = this.fieldIndex(field);
                if (fieldIndex == 0) {
                    result[0] = value;
                    result[1] = this.eStorage;
                } else {
                    result[0] = this.eStorage;
                    result[1] = value;
                }
            } else {
                result = new Object[fieldCount + 1];
                Object[] oldStorage = (Object[])this.eStorage;
                int bit = 2;
                int sourceIndex = 0;
                int targetIndex = 0;
                while (bit <= this.getMaxField()) {
                    if (bit == field) {
                        result[targetIndex++] = value;
                    } else if ((this.eFlags & bit) != 0) {
                        result[targetIndex++] = oldStorage[sourceIndex++];
                    }
                    bit <<= 1;
                }
            }
            this.eStorage = result;
        }
        this.eFlags |= field;
    }

    protected Object removeField(int field) {
        Object oldValue = null;
        int fieldCount = Integer.bitCount(this.eFlags & this.getFieldMask());
        if (fieldCount == 1) {
            oldValue = this.eStorage;
            this.eStorage = null;
        } else {
            Object[] oldStorage = (Object[])this.eStorage;
            if (fieldCount == 2) {
                int fieldIndex = this.fieldIndex(field);
                oldValue = oldStorage[fieldIndex];
                this.eStorage = oldStorage[fieldIndex == 0 ? 1 : 0];
            } else {
                Object[] result = new Object[fieldCount - 1];
                int bit = 2;
                int sourceIndex = 0;
                int targetIndex = 0;
                while (bit <= this.getMaxField()) {
                    if (bit == field) {
                        oldValue = oldStorage[sourceIndex++];
                    } else if ((this.eFlags & bit) != 0) {
                        result[targetIndex++] = oldStorage[sourceIndex++];
                    }
                    bit <<= 1;
                }
                this.eStorage = result;
            }
        }
        this.eFlags &= ~field;
        return oldValue;
    }

    public EList<Adapter> eAdapters() {
        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class ArrayDelegatingAdapterList
        extends ArrayDelegatingEList<Adapter>
        implements BasicNotifierImpl.EObservableAdapterList {
            private static final long serialVersionUID = 1L;

            ArrayDelegatingAdapterList() {
            }

            protected Object[] newData(int capacity) {
                return new Adapter[capacity];
            }

            public Object[] data() {
                return MinimalEObjectImpl2.this.eBasicAdapterArray();
            }

            public void setData(Object[] data) {
                Object[] eContainerAdapterArray;
                ++this.modCount;
                InternalEObject eContainer = MinimalEObjectImpl2.this.eInternalContainer();
                if (eContainer instanceof BasicEObjectImpl && Arrays.equals(data, eContainerAdapterArray = MinimalEObjectImpl2.this.eContainerAdapterArray())) {
                    MinimalEObjectImpl2.this.eBasicSetAdapterArray((Adapter[])eContainerAdapterArray);
                    return;
                }
                MinimalEObjectImpl2.this.eBasicSetAdapterArray((Adapter[])data);
            }

            protected void didAdd(int index, Adapter newObject) {
                BasicNotifierImpl.EObservableAdapterList.Listener[] listeners = (BasicNotifierImpl.EObservableAdapterList.Listener[])MinimalEObjectImpl2.this.getField(8);
                if (listeners != null) {
                    BasicNotifierImpl.EObservableAdapterList.Listener[] listenerArray = listeners;
                    int n = listeners.length;
                    int n2 = 0;
                    while (n2 < n) {
                        BasicNotifierImpl.EObservableAdapterList.Listener listener = listenerArray[n2];
                        listener.added((Notifier)MinimalEObjectImpl2.this, newObject);
                        ++n2;
                    }
                }
                newObject.setTarget((Notifier)MinimalEObjectImpl2.this);
            }

            protected void didRemove(int index, Adapter oldObject) {
                BasicNotifierImpl.EObservableAdapterList.Listener[] listeners = (BasicNotifierImpl.EObservableAdapterList.Listener[])MinimalEObjectImpl2.this.getField(8);
                if (listeners != null) {
                    BasicNotifierImpl.EObservableAdapterList.Listener[] listenerArray = listeners;
                    int n = listeners.length;
                    int n2 = 0;
                    while (n2 < n) {
                        BasicNotifierImpl.EObservableAdapterList.Listener listener = listenerArray[n2];
                        listener.removed((Notifier)MinimalEObjectImpl2.this, oldObject);
                        ++n2;
                    }
                }
                Adapter adapter = oldObject;
                if (MinimalEObjectImpl2.this.eDeliver()) {
                    NotificationImpl notification = new NotificationImpl(8, oldObject, null, index){

                        public Object getNotifier() {
                            return MinimalEObjectImpl2.this;
                        }
                    };
                    adapter.notifyChanged((Notification)notification);
                }
                if (adapter instanceof Adapter.Internal) {
                    ((Adapter.Internal)adapter).unsetTarget((Notifier)MinimalEObjectImpl2.this);
                } else if (adapter.getTarget() == MinimalEObjectImpl2.this) {
                    adapter.setTarget(null);
                }
            }

            public void addListener(BasicNotifierImpl.EObservableAdapterList.Listener listener) {
                BasicNotifierImpl.EObservableAdapterList.Listener[] listeners = (BasicNotifierImpl.EObservableAdapterList.Listener[])MinimalEObjectImpl2.this.getField(8);
                if (listeners == null) {
                    listeners = new BasicNotifierImpl.EObservableAdapterList.Listener[]{listener};
                } else {
                    BasicNotifierImpl.EObservableAdapterList.Listener[] newListeners = new BasicNotifierImpl.EObservableAdapterList.Listener[listeners.length + 1];
                    System.arraycopy(listeners, 0, newListeners, 0, listeners.length);
                    newListeners[listeners.length] = listener;
                    listeners = newListeners;
                }
                MinimalEObjectImpl2.this.setField(8, listeners);
            }

            public void removeListener(BasicNotifierImpl.EObservableAdapterList.Listener listener) {
                BasicNotifierImpl.EObservableAdapterList.Listener[] listeners = (BasicNotifierImpl.EObservableAdapterList.Listener[])MinimalEObjectImpl2.this.getField(8);
                if (listeners != null) {
                    int i = 0;
                    while (i < listeners.length) {
                        if (listeners[i] == listener) {
                            if (listeners.length == 1) {
                                listeners = null;
                            } else {
                                BasicNotifierImpl.EObservableAdapterList.Listener[] newListeners = new BasicNotifierImpl.EObservableAdapterList.Listener[listeners.length - 1];
                                System.arraycopy(listeners, 0, newListeners, 0, i);
                                if (i != newListeners.length) {
                                    System.arraycopy(listeners, i + 1, newListeners, i, newListeners.length - i);
                                }
                                listeners = newListeners;
                            }
                            MinimalEObjectImpl2.this.setField(8, listeners);
                            break;
                        }
                        ++i;
                    }
                }
            }
        }
        return new ArrayDelegatingAdapterList();
    }

    protected Adapter[] eBasicAdapterArray() {
        return (Adapter[])this.getField(4);
    }

    protected void eBasicSetAdapterArray(Adapter[] eAdapters) {
        this.setField(4, eAdapters);
    }

    protected boolean eBasicHasAdapters() {
        return this.hasField(4);
    }

    public boolean eDeliver() {
        return (this.eFlags & 1) == 0;
    }

    public void eSetDeliver(boolean deliver) {
        this.eFlags = deliver ? (this.eFlags &= 0xFFFFFFFE) : (this.eFlags |= 1);
    }

    public boolean eIsProxy() {
        return this.hasField(64);
    }

    public URI eProxyURI() {
        return (URI)this.getField(64);
    }

    public void eSetProxyURI(URI uri) {
        this.setField(64, uri);
    }

    public InternalEObject eInternalContainer() {
        return (InternalEObject)this.getField(2);
    }

    protected void eBasicSetContainer(InternalEObject newContainer) {
        this.setField(2, newContainer);
    }

    public int eContainerFeatureID() {
        return this.eFlags >> 16;
    }

    protected void eBasicSetContainerFeatureID(int newContainerFeatureID) {
        this.eFlags = newContainerFeatureID << 16 | this.eFlags & 0xFF;
    }

    protected void eBasicSetContainer(InternalEObject newContainer, int newContainerFeatureID) {
        this.eBasicSetContainerFeatureID(newContainerFeatureID);
        this.eBasicSetContainer(newContainer);
    }

    protected EClass eDynamicClass() {
        return (EClass)this.getField(16);
    }

    public EClass eClass() {
        EClass eClass = this.eDynamicClass();
        return eClass == null ? this.eStaticClass() : eClass;
    }

    public void eSetClass(EClass eClass) {
        this.setField(16, eClass);
    }

    protected boolean eHasSettings() {
        return this.hasField(32);
    }

    protected Object[] eBasicSettings() {
        return (Object[])this.getField(32);
    }

    protected void eBasicSetSettings(Object[] settings) {
        this.setField(32, settings);
    }

    protected EStructuralFeature.Internal.DynamicValueHolder eSettings() {
        int size;
        if (!this.eHasSettings() && (size = this.eClass().getFeatureCount() - this.eStaticFeatureCount()) != 0) {
            this.eBasicSetSettings(size == 0 ? NO_SETTINGS : new Object[size]);
        }
        return this;
    }

    public Resource.Internal eDirectResource() {
        return (Resource.Internal)this.getField(128);
    }

    protected void eSetDirectResource(Resource.Internal resource) {
        this.setField(128, resource);
    }

    public EList<EObject> eContents() {
        return EContentsEList.createEContentsEList((EObject)this);
    }

    public EList<EObject> eCrossReferences() {
        return ECrossReferenceEList.createECrossReferenceEList((EObject)this);
    }

    private Object[] eDynamicSettings() {
        Object[] settings = this.eBasicSettings();
        if (settings == null) {
            this.eSettings();
            settings = this.eBasicSettings();
        }
        return settings;
    }

    public Object dynamicGet(int dynamicFeatureID) {
        Object[] settings = this.eDynamicSettings();
        return settings[dynamicFeatureID];
    }

    public void dynamicSet(int dynamicFeatureID, Object newValue) {
        Object[] settings = this.eDynamicSettings();
        settings[dynamicFeatureID] = newValue;
    }

    public void dynamicUnset(int dynamicFeatureID) {
        Object[] settings = this.eDynamicSettings();
        settings[dynamicFeatureID] = null;
    }

    public static class Container
    extends MinimalEObjectImpl2 {
        protected InternalEObject eContainer;

        public InternalEObject eInternalContainer() {
            return this.eContainer;
        }

        protected void eBasicSetContainer(InternalEObject newContainer) {
            this.eContainer = newContainer;
        }

        public static class Dynamic
        extends Container {
            protected EClass eClass;
            protected Object[] eSettings;

            public Dynamic() {
            }

            public Dynamic(EClass eClass) {
                this.eSetClass(eClass);
            }

            public EClass eClass() {
                return this.eClass;
            }

            protected EClass eDynamicClass() {
                return this.eClass();
            }

            public void eSetClass(EClass eClass) {
                this.eClass = eClass;
            }

            protected boolean eHasSettings() {
                return this.eSettings != null;
            }

            protected Object[] eBasicSettings() {
                return this.eSettings;
            }

            protected void eBasicSetSettings(Object[] settings) {
                this.eSettings = settings;
            }

            /*
             * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
             */
            public static final class BasicEMapEntry<K, V>
            extends Dynamic
            implements BasicEMap.Entry<K, V> {
                protected int hash = -1;
                protected EStructuralFeature keyFeature;
                protected EStructuralFeature valueFeature;

                public BasicEMapEntry() {
                }

                public BasicEMapEntry(EClass eClass) {
                    super(eClass);
                }

                public K getKey() {
                    return (K)this.eGet(this.keyFeature);
                }

                public void setKey(Object key) {
                    this.eSet(this.keyFeature, key);
                }

                public int getHash() {
                    if (this.hash == -1) {
                        K theKey = this.getKey();
                        this.hash = theKey == null ? 0 : theKey.hashCode();
                    }
                    return this.hash;
                }

                public void setHash(int hash) {
                    this.hash = hash;
                }

                public V getValue() {
                    return (V)this.eGet(this.valueFeature);
                }

                public V setValue(V value) {
                    Object result = this.eGet(this.valueFeature);
                    this.eSet(this.valueFeature, value);
                    return (V)result;
                }

                @Override
                public void eSetClass(EClass eClass) {
                    super.eSetClass(eClass);
                    this.keyFeature = eClass.getEStructuralFeature("key");
                    this.valueFeature = eClass.getEStructuralFeature("value");
                }
            }
        }
    }
}

