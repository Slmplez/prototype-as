/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
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
package autosar40.ecuresource.hwelementcategory.impl;

import autosar40.ecuresource.hwelementcategory.HwAttributeDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeLiteralDef;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.swcomponent.datatype.units.Unit;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
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
public class HwAttributeDefImpl
extends IdentifiableImpl
implements HwAttributeDef,
IReferringClass {
    protected EList<HwAttributeLiteralDef> hwAttributeLiterals;
    protected static final Boolean IS_REQUIRED_EDEFAULT = Boolean.FALSE;
    protected Boolean isRequired = IS_REQUIRED_EDEFAULT;
    protected boolean isRequiredESet;
    protected Unit unit;

    protected HwAttributeDefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return HwelementcategoryPackage.Literals.HW_ATTRIBUTE_DEF;
    }

    @Override
    public HwCategory getHwCategory() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (HwCategory)this.eContainer();
    }

    public NotificationChain basicSetHwCategory(HwCategory newHwCategory, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHwCategory, 18, msgs);
        return msgs;
    }

    @Override
    public void setHwCategory(HwCategory newHwCategory) {
        if (newHwCategory != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newHwCategory != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHwCategory)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHwCategory != null) {
                msgs = ((InternalEObject)newHwCategory).eInverseAdd((InternalEObject)this, 21, HwCategory.class, msgs);
            }
            if ((msgs = this.basicSetHwCategory(newHwCategory, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newHwCategory, (Object)newHwCategory));
        }
    }

    @Override
    public EList<HwAttributeLiteralDef> getHwAttributeLiterals() {
        if (this.hwAttributeLiterals == null) {
            this.hwAttributeLiterals = new EObjectContainmentWithInverseEList(HwAttributeLiteralDef.class, (InternalEObject)this, 19, 18);
        }
        return this.hwAttributeLiterals;
    }

    @Override
    public Boolean getIsRequired() {
        return this.isRequired;
    }

    @Override
    public void setIsRequired(Boolean newIsRequired) {
        Boolean oldIsRequired = this.isRequired;
        this.isRequired = newIsRequired;
        boolean oldIsRequiredESet = this.isRequiredESet;
        this.isRequiredESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldIsRequired, (Object)this.isRequired, !oldIsRequiredESet));
        }
    }

    @Override
    public void unsetIsRequired() {
        Boolean oldIsRequired = this.isRequired;
        boolean oldIsRequiredESet = this.isRequiredESet;
        this.isRequired = IS_REQUIRED_EDEFAULT;
        this.isRequiredESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldIsRequired, (Object)IS_REQUIRED_EDEFAULT, oldIsRequiredESet));
        }
    }

    @Override
    public boolean isSetIsRequired() {
        return this.isRequiredESet;
    }

    @Override
    public Unit getUnit() {
        if (this.unit != null && this.unit.eIsProxy()) {
            InternalEObject oldUnit = (InternalEObject)this.unit;
            this.unit = (Unit)this.eResolveProxy(oldUnit);
            if (this.unit != oldUnit && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldUnit, (Object)this.unit));
            }
        }
        return this.unit;
    }

    public Unit basicGetUnit() {
        return this.unit;
    }

    @Override
    public void setUnit(Unit newUnit) {
        Unit oldUnit = this.unit;
        this.unit = newUnit;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldUnit, (Object)this.unit));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHwCategory((HwCategory)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getHwAttributeLiterals()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetHwCategory(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getHwAttributeLiterals()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, HwCategory.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getHwCategory();
            }
            case 19: {
                return this.getHwAttributeLiterals();
            }
            case 20: {
                return this.getIsRequired();
            }
            case 21: {
                if (resolve) {
                    return this.getUnit();
                }
                return this.basicGetUnit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setHwCategory((HwCategory)newValue);
                return;
            }
            case 19: {
                this.getHwAttributeLiterals().clear();
                this.getHwAttributeLiterals().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setIsRequired((Boolean)newValue);
                return;
            }
            case 21: {
                this.setUnit((Unit)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setHwCategory(null);
                return;
            }
            case 19: {
                this.getHwAttributeLiterals().clear();
                return;
            }
            case 20: {
                this.unsetIsRequired();
                return;
            }
            case 21: {
                this.setUnit(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getHwCategory() != null;
            }
            case 19: {
                return this.hwAttributeLiterals != null && !this.hwAttributeLiterals.isEmpty();
            }
            case 20: {
                return this.isSetIsRequired();
            }
            case 21: {
                return this.unit != null;
            }
        }
        return super.eIsSet(featureID);
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
        result.append(" (isRequired: ");
        if (this.isRequiredESet) {
            result.append(this.isRequired);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

