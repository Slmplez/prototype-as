/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.impl.BasicEObjectImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.resource.Resource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DynamicEObjectImpl
extends EObjectImpl
implements EStructuralFeature.Internal.DynamicValueHolder {
    protected EClass eClass;
    protected Object[] eSettings;
    protected static final Object[] ENO_SETTINGS = new Object[0];

    public DynamicEObjectImpl() {
    }

    public DynamicEObjectImpl(EClass eClass) {
        this.eSetClass(eClass);
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
            this.eProperties = new DynamicEPropertiesHolderImpl();
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

    @Override
    protected int eStaticOperationCount() {
        return 0;
    }

    @Override
    public int eDerivedOperationID(EOperation eOperation) {
        EClass eClass;
        EOperation override = (eClass = this.eClass()).getOverride(eOperation);
        return eClass.getOperationID(override != null ? override : eOperation);
    }

    @Override
    public Object eInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        EOperation eOperation = this.eClass().getEOperation(operationID);
        assert (eOperation != null) : "Invalid operationID: " + operationID;
        return this.eInvocationDelegate(eOperation).dynamicInvoke(this, arguments);
    }

    @Override
    protected EClass eDynamicClass() {
        return this.eClass;
    }

    @Override
    public EClass eClass() {
        return this.eClass;
    }

    @Override
    public void eSetClass(EClass eClass) {
        this.eClass = eClass;
    }

    @Override
    public Object dynamicGet(int dynamicFeatureID) {
        return this.eSettings[dynamicFeatureID];
    }

    @Override
    public void dynamicSet(int dynamicFeatureID, Object value) {
        this.eSettings[dynamicFeatureID] = value;
    }

    @Override
    public void dynamicUnset(int dynamicFeatureID) {
        this.eSettings[dynamicFeatureID] = null;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static final class BasicEMapEntry<K, V>
    extends DynamicEObjectImpl
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

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class DynamicEPropertiesHolderImpl
    implements BasicEObjectImpl.EPropertiesHolder {
        protected URI eProxyURI;
        protected Resource.Internal eResource;
        protected EList<EObject> eContents;
        protected EList<EObject> eCrossReferences;

        protected DynamicEPropertiesHolderImpl() {
        }

        @Override
        public EClass getEClass() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void setEClass(EClass eClass) {
            throw new UnsupportedOperationException();
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
}

