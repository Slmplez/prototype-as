/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecuresource.impl;

import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.HwPin;
import autosar40.ecuresource.HwPinGroupContent;
import autosar40.ecuresource.hwelementcategory.HwAttributeValue;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.ecuresource.hwelementcategory.HwType;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HwPinImpl
extends IdentifiableImpl
implements HwPin,
IReferringClass {
    protected HwType hwType;
    protected EList<HwCategory> hwCategories;
    protected EList<HwAttributeValue> hwAttributeValues;
    protected static final IntegerDatatype PIN_NUMBER_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype pinNumber = PIN_NUMBER_EDEFAULT.clone();
    protected boolean pinNumberESet;
    protected VariationPoint variationPoint;

    protected HwPinImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_PIN;
    }

    @Override
    public HwType getHwType() {
        if (this.hwType != null && this.hwType.eIsProxy()) {
            InternalEObject oldHwType = (InternalEObject)this.hwType;
            this.hwType = (HwType)this.eResolveProxy(oldHwType);
            if (this.hwType != oldHwType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldHwType, (Object)this.hwType));
            }
        }
        return this.hwType;
    }

    public HwType basicGetHwType() {
        return this.hwType;
    }

    @Override
    public void setHwType(HwType newHwType) {
        HwType oldHwType = this.hwType;
        this.hwType = newHwType;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldHwType, (Object)this.hwType));
        }
    }

    @Override
    public EList<HwCategory> getHwCategories() {
        if (this.hwCategories == null) {
            this.hwCategories = new EObjectResolvingReferringEList(HwCategory.class, (InternalEObject)this, 19);
        }
        return this.hwCategories;
    }

    @Override
    public EList<HwAttributeValue> getHwAttributeValues() {
        if (this.hwAttributeValues == null) {
            this.hwAttributeValues = new EObjectContainmentWithInverseEList(HwAttributeValue.class, (InternalEObject)this, 20, 4);
        }
        return this.hwAttributeValues;
    }

    @Override
    public HwPinGroupContent getHwPinGroupContent() {
        if (this.eContainerFeatureID() != 21) {
            return null;
        }
        return (HwPinGroupContent)this.eContainer();
    }

    public NotificationChain basicSetHwPinGroupContent(HwPinGroupContent newHwPinGroupContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHwPinGroupContent, 21, msgs);
        return msgs;
    }

    @Override
    public void setHwPinGroupContent(HwPinGroupContent newHwPinGroupContent) {
        if (newHwPinGroupContent != this.eInternalContainer() || this.eContainerFeatureID() != 21 && newHwPinGroupContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHwPinGroupContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHwPinGroupContent != null) {
                msgs = ((InternalEObject)newHwPinGroupContent).eInverseAdd((InternalEObject)this, 5, HwPinGroupContent.class, msgs);
            }
            if ((msgs = this.basicSetHwPinGroupContent(newHwPinGroupContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newHwPinGroupContent, (Object)newHwPinGroupContent));
        }
    }

    @Override
    public Integer getPinNumber() {
        return (Integer)this.pinNumber.basicGetValue();
    }

    @Override
    public void setPinNumber(Integer newPinNumber) {
        Integer oldPinNumber = (Integer)this.pinNumber.basicGetValue();
        this.pinNumber.basicSetValue((Object)newPinNumber);
        boolean oldPinNumberESet = this.pinNumberESet;
        this.pinNumberESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldPinNumber, (Object)newPinNumber, !oldPinNumberESet));
        }
    }

    @Override
    public void unsetPinNumber() {
        Integer oldPinNumber = (Integer)this.pinNumber.basicGetValue();
        boolean oldPinNumberESet = this.pinNumberESet;
        this.pinNumber = PIN_NUMBER_EDEFAULT.clone();
        this.pinNumberESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldPinNumber, (Object)PIN_NUMBER_EDEFAULT, oldPinNumberESet));
        }
    }

    @Override
    public boolean isSetPinNumber() {
        return this.pinNumberESet;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public IntegerDatatype getPinNumberData() {
        return this.pinNumber.clone();
    }

    @Override
    public void setPinNumberData(IntegerDatatype newPinNumber) {
        this.pinNumber.setRadix((int)newPinNumber.getRadix());
        this.pinNumber.setNoOfDigits((int)newPinNumber.getNoOfDigits());
        this.setPinNumber(newPinNumber.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getHwAttributeValues()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHwPinGroupContent((HwPinGroupContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getHwAttributeValues()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return this.basicSetHwPinGroupContent(null, msgs);
            }
            case 23: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 21: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, HwPinGroupContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                if (resolve) {
                    return this.getHwType();
                }
                return this.basicGetHwType();
            }
            case 19: {
                return this.getHwCategories();
            }
            case 20: {
                return this.getHwAttributeValues();
            }
            case 21: {
                return this.getHwPinGroupContent();
            }
            case 22: {
                return this.getPinNumber();
            }
            case 23: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setHwType((HwType)newValue);
                return;
            }
            case 19: {
                this.getHwCategories().clear();
                this.getHwCategories().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getHwAttributeValues().clear();
                this.getHwAttributeValues().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setHwPinGroupContent((HwPinGroupContent)newValue);
                return;
            }
            case 22: {
                this.setPinNumber((Integer)newValue);
                return;
            }
            case 23: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setHwType(null);
                return;
            }
            case 19: {
                this.getHwCategories().clear();
                return;
            }
            case 20: {
                this.getHwAttributeValues().clear();
                return;
            }
            case 21: {
                this.setHwPinGroupContent(null);
                return;
            }
            case 22: {
                this.unsetPinNumber();
                return;
            }
            case 23: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.hwType != null;
            }
            case 19: {
                return this.hwCategories != null && !this.hwCategories.isEmpty();
            }
            case 20: {
                return this.hwAttributeValues != null && !this.hwAttributeValues.isEmpty();
            }
            case 21: {
                return this.getHwPinGroupContent() != null;
            }
            case 22: {
                return this.isSetPinNumber();
            }
            case 23: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == HwDescriptionEntity.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 6;
                }
                case 19: {
                    return 7;
                }
                case 20: {
                    return 8;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == HwDescriptionEntity.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 18;
                }
                case 7: {
                    return 19;
                }
                case 8: {
                    return 20;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (pinNumber: ");
        if (this.pinNumberESet) {
            result.append(this.pinNumber);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

