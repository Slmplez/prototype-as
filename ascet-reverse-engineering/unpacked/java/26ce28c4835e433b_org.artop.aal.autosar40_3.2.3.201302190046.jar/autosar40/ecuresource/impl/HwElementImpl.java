/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecuresource.impl;

import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.HwElement;
import autosar40.ecuresource.HwElementConnector;
import autosar40.ecuresource.HwElementRefConditional;
import autosar40.ecuresource.HwPinGroup;
import autosar40.ecuresource.hwelementcategory.HwAttributeValue;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.ecuresource.hwelementcategory.HwType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import java.util.Collection;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HwElementImpl
extends ARElementImpl
implements HwElement,
IReferringClass {
    protected HwType hwType;
    protected EList<HwCategory> hwCategories;
    protected EList<HwAttributeValue> hwAttributeValues;
    protected EList<HwElementRefConditional> nestedElements;
    protected EList<HwPinGroup> hwPinGroups;
    protected EList<HwElementConnector> hwElementConnections;

    protected HwElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_ELEMENT;
    }

    @Override
    public HwType getHwType() {
        if (this.hwType != null && this.hwType.eIsProxy()) {
            InternalEObject oldHwType = (InternalEObject)this.hwType;
            this.hwType = (HwType)this.eResolveProxy(oldHwType);
            if (this.hwType != oldHwType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldHwType, (Object)this.hwType));
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
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldHwType, (Object)this.hwType));
        }
    }

    @Override
    public EList<HwCategory> getHwCategories() {
        if (this.hwCategories == null) {
            this.hwCategories = new EObjectResolvingReferringEList(HwCategory.class, (InternalEObject)this, 22);
        }
        return this.hwCategories;
    }

    @Override
    public EList<HwAttributeValue> getHwAttributeValues() {
        if (this.hwAttributeValues == null) {
            this.hwAttributeValues = new EObjectContainmentWithInverseEList(HwAttributeValue.class, (InternalEObject)this, 23, 4);
        }
        return this.hwAttributeValues;
    }

    @Override
    public EList<HwElementRefConditional> getNestedElements() {
        if (this.nestedElements == null) {
            this.nestedElements = new EObjectContainmentEList(HwElementRefConditional.class, (InternalEObject)this, 24);
        }
        return this.nestedElements;
    }

    @Override
    public EList<HwPinGroup> getHwPinGroups() {
        if (this.hwPinGroups == null) {
            this.hwPinGroups = new EObjectContainmentEList(HwPinGroup.class, (InternalEObject)this, 25);
        }
        return this.hwPinGroups;
    }

    @Override
    public EList<HwElementConnector> getHwElementConnections() {
        if (this.hwElementConnections == null) {
            this.hwElementConnections = new EObjectContainmentWithInverseEList(HwElementConnector.class, (InternalEObject)this, 26, 6);
        }
        return this.hwElementConnections;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getHwAttributeValues()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getHwElementConnections()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getHwAttributeValues()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getNestedElements()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getHwPinGroups()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getHwElementConnections()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                if (resolve) {
                    return this.getHwType();
                }
                return this.basicGetHwType();
            }
            case 22: {
                return this.getHwCategories();
            }
            case 23: {
                return this.getHwAttributeValues();
            }
            case 24: {
                return this.getNestedElements();
            }
            case 25: {
                return this.getHwPinGroups();
            }
            case 26: {
                return this.getHwElementConnections();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setHwType((HwType)newValue);
                return;
            }
            case 22: {
                this.getHwCategories().clear();
                this.getHwCategories().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getHwAttributeValues().clear();
                this.getHwAttributeValues().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getNestedElements().clear();
                this.getNestedElements().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getHwPinGroups().clear();
                this.getHwPinGroups().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getHwElementConnections().clear();
                this.getHwElementConnections().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setHwType(null);
                return;
            }
            case 22: {
                this.getHwCategories().clear();
                return;
            }
            case 23: {
                this.getHwAttributeValues().clear();
                return;
            }
            case 24: {
                this.getNestedElements().clear();
                return;
            }
            case 25: {
                this.getHwPinGroups().clear();
                return;
            }
            case 26: {
                this.getHwElementConnections().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.hwType != null;
            }
            case 22: {
                return this.hwCategories != null && !this.hwCategories.isEmpty();
            }
            case 23: {
                return this.hwAttributeValues != null && !this.hwAttributeValues.isEmpty();
            }
            case 24: {
                return this.nestedElements != null && !this.nestedElements.isEmpty();
            }
            case 25: {
                return this.hwPinGroups != null && !this.hwPinGroups.isEmpty();
            }
            case 26: {
                return this.hwElementConnections != null && !this.hwElementConnections.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == HwDescriptionEntity.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 6;
                }
                case 22: {
                    return 7;
                }
                case 23: {
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
                    return 21;
                }
                case 7: {
                    return 22;
                }
                case 8: {
                    return 23;
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
}

