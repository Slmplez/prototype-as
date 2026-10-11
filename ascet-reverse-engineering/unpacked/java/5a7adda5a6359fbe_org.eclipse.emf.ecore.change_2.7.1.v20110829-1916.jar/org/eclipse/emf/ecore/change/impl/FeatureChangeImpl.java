/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.ECollections
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EStructuralFeature$Internal
 *  org.eclipse.emf.ecore.ETypedElement
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry$Internal
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.ecore.change.impl;

import java.util.Collection;
import java.util.List;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.ECollections;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.ETypedElement;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.change.ChangeFactory;
import org.eclipse.emf.ecore.change.ChangeKind;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.change.impl.EObjectToChangesMapEntryImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FeatureChangeImpl
extends EObjectImpl
implements FeatureChange {
    protected static final int EPROXY_FEATURECHANGE = 8;
    protected static final String FEATURE_NAME_EDEFAULT = null;
    protected static final String DATA_VALUE_EDEFAULT = null;
    protected static final boolean SET_EDEFAULT = true;
    protected boolean set = true;
    protected static final Object VALUE_EDEFAULT = null;
    protected EList<ListChange> listChanges;
    protected EStructuralFeature feature;
    protected String featureName;
    protected Object value;
    protected String valueString;
    protected boolean newIsSet;
    protected Object newValue;

    protected FeatureChangeImpl() {
    }

    protected FeatureChangeImpl(EStructuralFeature feature, Object value, boolean isSet) {
        this();
        this.feature = feature;
        this.setValue(value);
        this.set = isSet;
    }

    protected EClass eStaticClass() {
        return ChangePackage.Literals.FEATURE_CHANGE;
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
        return this.featureName != null || this.feature != null && this.eContainer() instanceof EObjectToChangesMapEntryImpl;
    }

    @Override
    public String getDataValue() {
        EStructuralFeature feature;
        if (this.valueString == null && (feature = this.getFeature()) instanceof EAttribute && !feature.isMany()) {
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

    @Override
    public boolean isSet() {
        return this.set;
    }

    @Override
    public void setSet(boolean newSet) {
        boolean oldSet = this.set;
        this.set = newSet;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldSet, this.set));
        }
    }

    @Override
    public EStructuralFeature getFeature() {
        if (this.feature == null) {
            EObject typedKey;
            EObject container;
            if (this.featureName != null && (container = this.eContainer()) instanceof EObjectToChangesMapEntryImpl && (typedKey = ((EObjectToChangesMapEntryImpl)container).getTypedKey()) != null) {
                this.feature = typedKey.eClass().getEStructuralFeature(this.featureName);
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
        return this.feature != null && !(this.eContainer() instanceof EObjectToChangesMapEntryImpl);
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
        if (this.feature == null && this.featureName != null) {
            this.getFeature();
        }
        return this.feature instanceof EReference && this.value instanceof EObject ? (EObject)this.value : null;
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

    @Override
    public EList<ListChange> getListChanges() {
        if (this.listChanges == null) {
            this.listChanges = new EObjectContainmentEList(ListChange.class, (InternalEObject)this, 6);
        }
        return this.listChanges;
    }

    @Override
    public Object getValue() {
        EStructuralFeature feature = this.getFeature();
        if (feature.getUpperBound() != 1) {
            if (this.value == null && this.eContainer() instanceof EObjectToChangesMapEntryImpl) {
                this.value = this.getListValue((EList)((EObjectToChangesMapEntryImpl)this.eContainer()).getTypedKey().eGet(feature));
            }
        } else {
            if (feature instanceof EReference) {
                return this.getReferenceValue();
            }
            if (this.value == null) {
                EDataType type = (EDataType)feature.getEType();
                this.value = EcoreUtil.createFromString((EDataType)type, (String)this.valueString);
            }
        }
        return this.value;
    }

    protected void setValue(Object value) {
        EStructuralFeature feature = this.getFeature();
        if (!this.eNotificationRequired() || feature.isMany()) {
            this.valueString = null;
            this.value = value;
        } else if (feature instanceof EAttribute) {
            EDataType type = (EDataType)feature.getEType();
            this.setDataValue(EcoreUtil.convertToString((EDataType)type, (Object)value));
            this.value = value;
        } else {
            this.setReferenceValue((EObject)value);
        }
    }

    protected EList<?> getListValue(EList<?> originalList) {
        if (this.isSet() && this.getFeature().getUpperBound() != 1) {
            if (this.value instanceof EList) {
                return (EList)this.value;
            }
            BasicEList changedList = new BasicEList(originalList);
            this.apply((EList<Object>)changedList);
            this.value = changedList;
            return changedList;
        }
        return ECollections.EMPTY_ELIST;
    }

    @Override
    public void apply(EObject originalObject) {
        this.apply(originalObject, false);
    }

    @Override
    public void applyAndReverse(EObject originalObject) {
        this.apply(originalObject, true);
    }

    @Override
    public void reverse(EObject originalObject) {
        this.process(originalObject, true, false);
    }

    protected void apply(EObject originalObject, boolean reverse) {
        this.process(originalObject, reverse, true);
    }

    protected void process(EObject originalObject, boolean reverse, boolean apply) {
        EStructuralFeature.Internal internalFeature = (EStructuralFeature.Internal)this.getFeature();
        if (internalFeature != null && internalFeature.isChangeable()) {
            if (!internalFeature.isContainer()) {
                if (!this.isSet()) {
                    if (reverse && internalFeature.isMany()) {
                        ListChange listChange = this.createListChange(this.getListChanges(), ChangeKind.ADD_LITERAL, 0);
                        if (internalFeature.getEOpposite() != null || internalFeature.isContainment()) {
                            listChange.getValues().addAll((Collection)((EList)this.getValue()));
                        } else {
                            listChange.getValues().addAll((Collection)((EList)originalObject.eGet((EStructuralFeature)internalFeature)));
                        }
                    }
                    if (apply) {
                        originalObject.eUnset((EStructuralFeature)internalFeature);
                    }
                } else if (internalFeature.isMany()) {
                    if (this.listChanges != null) {
                        if (internalFeature.isFeatureMap()) {
                            FeatureMap.Internal result = (FeatureMap.Internal)originalObject.eGet((EStructuralFeature)internalFeature);
                            if (apply) {
                                EList prototype = (EList)this.getValue();
                                BasicEList featureMapEntryList = new BasicEList(prototype.size());
                                for (FeatureMap.Entry.Internal entry : prototype) {
                                    Object entryValue = entry.getValue();
                                    entry = entry.createEntry(entryValue);
                                    featureMapEntryList.add((Object)entry);
                                    EStructuralFeature entryFeature = entry.getEStructuralFeature();
                                    if (FeatureMapUtil.isMany((EObject)originalObject, (EStructuralFeature)entry.getEStructuralFeature())) continue;
                                    int i = 0;
                                    int size = result.size();
                                    while (i < size) {
                                        if (result.getEStructuralFeature(i) == entryFeature && (entryValue == null ? result.getValue(i) != null : !entryValue.equals(result.getValue(i)))) {
                                            result.set(i, (Object)entry);
                                        }
                                        ++i;
                                    }
                                }
                                ECollections.setEList((EList)result, (List)featureMapEntryList);
                            } else {
                                this.newValue = new BasicEList((Collection)result);
                            }
                        } else if (internalFeature.getEOpposite() != null || internalFeature.isContainment()) {
                            EList result = (EList)originalObject.eGet((EStructuralFeature)internalFeature);
                            if (apply) {
                                EList prototype = (EList)this.getValue();
                                ECollections.setEList((EList)result, (List)prototype);
                            } else {
                                this.newValue = new BasicEList((Collection)result);
                            }
                        } else {
                            EList applyToList = (EList)originalObject.eGet((EStructuralFeature)internalFeature);
                            if (apply) {
                                if (reverse) {
                                    this.applyAndReverse((EList<Object>)applyToList);
                                } else {
                                    this.apply((EList<Object>)applyToList);
                                }
                            } else {
                                this.reverse((EList<Object>)applyToList);
                            }
                        }
                        if (reverse) {
                            ECollections.reverse(this.getListChanges());
                        }
                    }
                } else if (apply) {
                    originalObject.eSet((EStructuralFeature)internalFeature, this.getValue());
                }
            }
            if (reverse) {
                this.setSet(this.newIsSet);
                this.setValue(this.newValue);
                if (!this.isSet()) {
                    this.getListChanges().clear();
                }
            }
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return ((InternalEList)this.getListChanges()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public void preApply(EObject originalObject, boolean reverse) {
        if (reverse) {
            EStructuralFeature feature = this.getFeature();
            if (feature == EcorePackage.Literals.ECLASS__EGENERIC_SUPER_TYPES) {
                this.newIsSet = !((EClass)originalObject).getEGenericSuperTypes().isEmpty();
                this.newValue = null;
            } else if (feature == EcorePackage.Literals.ETYPED_ELEMENT__EGENERIC_TYPE) {
                this.newValue = ((ETypedElement)originalObject).getEGenericType();
                this.newIsSet = this.newValue != null;
            } else if (feature == EcorePackage.Literals.EOPERATION__EGENERIC_EXCEPTIONS) {
                this.newIsSet = !((EOperation)originalObject).getEGenericExceptions().isEmpty();
                this.newValue = null;
            } else if (feature == EcorePackage.Literals.ECLASSIFIER__INSTANCE_TYPE_NAME) {
                this.newValue = ((EClassifier)originalObject).getInstanceTypeName();
                this.newIsSet = this.newValue != null;
            } else if (feature != null) {
                this.newIsSet = originalObject.eIsSet(feature);
                this.newValue = feature.isMany() ? null : originalObject.eGet(feature);
            }
        }
    }

    protected void apply(EList<Object> toList) {
        for (ListChange listChange : this.getListChanges()) {
            listChange.apply(toList);
        }
    }

    protected void applyAndReverse(EList<Object> toList) {
        for (ListChange listChange : this.getListChanges()) {
            listChange.applyAndReverse(toList);
        }
    }

    protected void reverse(EList<Object> toList) {
        BasicEList copy = null;
        for (ListChange listChange : this.getListChanges()) {
            if (listChange.getKind() == ChangeKind.REMOVE_LITERAL) {
                if (copy == null) {
                    copy = new BasicEList(toList);
                }
                listChange.applyAndReverse((EList<Object>)copy);
                continue;
            }
            listChange.reverse(toList);
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
                return this.isSet();
            }
            case 3: {
                return this.getValue();
            }
            case 4: {
                if (resolve) {
                    return this.getFeature();
                }
                return this.basicGetFeature();
            }
            case 5: {
                if (resolve) {
                    return this.getReferenceValue();
                }
                return this.basicGetReferenceValue();
            }
            case 6: {
                return this.getListChanges();
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
            case 2: {
                this.setSet((Boolean)newValue);
                return;
            }
            case 4: {
                this.setFeature((EStructuralFeature)newValue);
                return;
            }
            case 5: {
                this.setReferenceValue((EObject)newValue);
                return;
            }
            case 6: {
                this.getListChanges().clear();
                this.getListChanges().addAll((Collection)newValue);
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
            case 2: {
                this.setSet(true);
                return;
            }
            case 4: {
                this.unsetFeature();
                return;
            }
            case 5: {
                this.setReferenceValue(null);
                return;
            }
            case 6: {
                this.getListChanges().clear();
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
                return !this.set;
            }
            case 3: {
                return VALUE_EDEFAULT == null ? this.getValue() != null : !VALUE_EDEFAULT.equals(this.getValue());
            }
            case 4: {
                return this.isSetFeature();
            }
            case 5: {
                return this.basicGetReferenceValue() != null;
            }
            case 6: {
                return this.listChanges != null && !this.listChanges.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (set: ");
        result.append(this.set);
        result.append(')');
        return result.toString();
    }

    protected ListChange createListChange(EList<ListChange> changesList, ChangeKind kind, int index) {
        ListChange listChange = ChangeFactory.eINSTANCE.createListChange();
        listChange.setKind(kind);
        listChange.setIndex(index);
        changesList.add((Object)listChange);
        return listChange;
    }
}

