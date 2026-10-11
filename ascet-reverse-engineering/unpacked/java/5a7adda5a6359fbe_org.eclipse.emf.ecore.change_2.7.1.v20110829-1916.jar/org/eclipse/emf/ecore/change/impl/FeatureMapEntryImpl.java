/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EStructuralFeature$Internal
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry$Internal
 */
package org.eclipse.emf.ecore.change.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.change.ChangeFactory;
import org.eclipse.emf.ecore.change.ChangeKind;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.FeatureMapEntry;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.change.impl.EObjectToChangesMapEntryImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FeatureMapEntryImpl
extends EObjectImpl
implements FeatureMapEntry,
FeatureMap.Entry.Internal {
    protected static final int EPROXY_FEATURECHANGE = 8;
    protected static final String FEATURE_NAME_EDEFAULT = null;
    protected static final String DATA_VALUE_EDEFAULT = null;
    protected static final Object VALUE_EDEFAULT = null;
    protected EStructuralFeature feature = null;
    protected String featureName = null;
    protected Object value = null;
    protected String valueString = null;

    protected FeatureMapEntryImpl() {
    }

    protected FeatureMapEntryImpl(EStructuralFeature feature, Object value) {
        this();
        this.feature = feature;
        this.setValue(value);
    }

    protected EClass eStaticClass() {
        return ChangePackage.Literals.FEATURE_MAP_ENTRY;
    }

    @Override
    public String getFeatureName() {
        return this.feature == null ? this.featureName : this.feature.getName();
    }

    @Override
    public void setFeatureName(String newFeatureName) {
        this.featureName = newFeatureName;
        this.feature = null;
        this.eFlags &= 0xFFFFFFF7;
    }

    @Override
    public void unsetFeatureName() {
        this.setFeatureName(null);
    }

    @Override
    public boolean isSetFeatureName() {
        if (this.featureName != null) {
            return true;
        }
        if (this.feature == null) {
            return false;
        }
        EObject greatGrandParent = this.getGreatGrandParent();
        return greatGrandParent instanceof EObjectToChangesMapEntryImpl && ((EObjectToChangesMapEntryImpl)greatGrandParent).getTypedKey().eClass().getEAllStructuralFeatures().contains((Object)this.feature);
    }

    protected EObject getGreatGrandParent() {
        EObject container = this.eContainer();
        if (container != null && (container = container.eContainer()) != null) {
            return container.eContainer();
        }
        return null;
    }

    @Override
    public String getDataValue() {
        EStructuralFeature feature;
        if (this.valueString == null && (feature = this.getFeature()) instanceof EAttribute) {
            EDataType type = (EDataType)feature.getEType();
            this.valueString = EcoreUtil.convertToString((EDataType)type, (Object)this.value);
        }
        return this.valueString;
    }

    @Override
    public void setDataValue(String newDataValue) {
        String oldDataValue = this.getDataValue();
        this.valueString = newDataValue;
        this.value = null;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldDataValue, (Object)newDataValue));
        }
    }

    public EStructuralFeature getEStructuralFeature() {
        return this.getFeature();
    }

    @Override
    public EStructuralFeature getFeature() {
        if (this.feature == null) {
            EObject greatGrandParent = this.getGreatGrandParent();
            if (greatGrandParent instanceof EObjectToChangesMapEntryImpl) {
                this.feature = ((EObjectToChangesMapEntryImpl)greatGrandParent).getKey().eClass().getEStructuralFeature(this.featureName);
            }
        } else if ((this.eFlags & 8) != 0) {
            EStructuralFeature oldFeature = this.feature;
            this.feature = (EStructuralFeature)EcoreUtil.resolve((EObject)this.feature, (EObject)this);
            if (this.feature != oldFeature && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldFeature, (Object)this.feature));
            }
            this.eFlags &= 0xFFFFFFF7;
        }
        return this.feature;
    }

    public EStructuralFeature basicGetFeature() {
        return this.feature;
    }

    @Override
    public void setFeature(EStructuralFeature newFeature) {
        EStructuralFeature oldFeature = this.basicGetFeature();
        this.feature = newFeature;
        this.featureName = null;
        this.eFlags = this.feature != null && this.feature.eIsProxy() ? (this.eFlags |= 8) : (this.eFlags &= 0xFFFFFFF7);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldFeature, (Object)newFeature));
        }
    }

    @Override
    public void unsetFeature() {
        this.setFeature(null);
    }

    @Override
    public boolean isSetFeature() {
        if (this.feature == null) {
            return false;
        }
        EObject greatGrandParent = this.getGreatGrandParent();
        return !(greatGrandParent instanceof EObjectToChangesMapEntryImpl) || !((EObjectToChangesMapEntryImpl)greatGrandParent).getTypedKey().eClass().getEAllStructuralFeatures().contains((Object)this.feature);
    }

    @Override
    public EObject getReferenceValue() {
        EObject referenceValue = this.basicGetReferenceValue();
        if (referenceValue != null && referenceValue.eIsProxy()) {
            EObject oldReferenceValue = referenceValue;
            if ((referenceValue = EcoreUtil.resolve((EObject)referenceValue, (EObject)this)) != oldReferenceValue && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldReferenceValue, (Object)referenceValue));
            }
        }
        return referenceValue;
    }

    public EObject basicGetReferenceValue() {
        return this.feature instanceof EReference ? (EObject)this.value : null;
    }

    @Override
    public void setReferenceValue(EObject newReferenceValue) {
        EObject oldReferenceValue = this.basicGetReferenceValue();
        this.value = newReferenceValue;
        this.valueString = null;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldReferenceValue, (Object)newReferenceValue));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getFeatureName();
            }
            case 1: {
                return this.getDataValue();
            }
            case 2: {
                return this.getValue();
            }
            case 3: {
                if (resolve) {
                    return this.getFeature();
                }
                return this.basicGetFeature();
            }
            case 4: {
                if (resolve) {
                    return this.getReferenceValue();
                }
                return this.basicGetReferenceValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setFeatureName((String)newValue);
                return;
            }
            case 1: {
                this.setDataValue((String)newValue);
                return;
            }
            case 3: {
                this.setFeature((EStructuralFeature)newValue);
                return;
            }
            case 4: {
                this.setReferenceValue((EObject)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.unsetFeatureName();
                return;
            }
            case 1: {
                this.setDataValue(DATA_VALUE_EDEFAULT);
                return;
            }
            case 3: {
                this.unsetFeature();
                return;
            }
            case 4: {
                this.setReferenceValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.isSetFeatureName();
            }
            case 1: {
                return DATA_VALUE_EDEFAULT == null ? this.getDataValue() != null : !DATA_VALUE_EDEFAULT.equals(this.getDataValue());
            }
            case 2: {
                return VALUE_EDEFAULT == null ? this.getValue() != null : !VALUE_EDEFAULT.equals(this.getValue());
            }
            case 3: {
                return this.isSetFeature();
            }
            case 4: {
                return this.basicGetReferenceValue() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public Object getValue() {
        EStructuralFeature feature = this.getFeature();
        if (feature instanceof EReference) {
            return this.getReferenceValue();
        }
        if (this.value == null) {
            EDataType type = (EDataType)feature.getEType();
            this.value = EcoreUtil.createFromString((EDataType)type, (String)this.valueString);
        }
        return this.value;
    }

    protected void setValue(Object value) {
        EStructuralFeature feature = this.getFeature();
        if (!this.eNotificationRequired()) {
            this.valueString = null;
            this.value = value;
        } else if (feature instanceof EAttribute) {
            EDataType type = (EDataType)feature.getEType();
            this.valueString = EcoreUtil.convertToString((EDataType)type, (Object)value);
            this.setDataValue(this.valueString);
            this.value = value;
        } else {
            this.setReferenceValue((EObject)value);
        }
    }

    protected ListChange createListChange(EList<ListChange> changesList, ChangeKind kind, int index) {
        ListChange listChange = ChangeFactory.eINSTANCE.createListChange();
        listChange.setKind(kind);
        listChange.setIndex(index);
        changesList.add((Object)listChange);
        return listChange;
    }

    public NotificationChain inverseAdd(InternalEObject owner, int featureID, NotificationChain notifications) {
        return ((EStructuralFeature.Internal)this.getFeature()).getFeatureMapEntryPrototype().inverseAdd(owner, this.getValue(), featureID, notifications);
    }

    public NotificationChain inverseRemove(InternalEObject owner, int featureID, NotificationChain notifications) {
        return ((EStructuralFeature.Internal)this.getFeature()).getFeatureMapEntryPrototype().inverseRemove(owner, this.getValue(), featureID, notifications);
    }

    public NotificationChain inverseAdd(InternalEObject owner, Object otherEnd, int featureID, NotificationChain notifications) {
        return ((EStructuralFeature.Internal)this.getFeature()).getFeatureMapEntryPrototype().inverseAdd(owner, otherEnd, featureID, notifications);
    }

    public NotificationChain inverseRemove(InternalEObject owner, Object otherEnd, int featureID, NotificationChain notifications) {
        return ((EStructuralFeature.Internal)this.getFeature()).getFeatureMapEntryPrototype().inverseRemove(owner, otherEnd, featureID, notifications);
    }

    public void validate(Object value) {
        ((EStructuralFeature.Internal)this.getFeature()).getFeatureMapEntryPrototype().validate(value);
    }

    public FeatureMap.Entry.Internal createEntry(Object value) {
        return ((EStructuralFeature.Internal)this.getFeature()).getFeatureMapEntryPrototype().createEntry(value);
    }

    public FeatureMap.Entry.Internal createEntry(InternalEObject value) {
        return ((EStructuralFeature.Internal)this.getFeature()).getFeatureMapEntryPrototype().createEntry(value);
    }
}

