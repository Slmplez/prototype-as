/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 */
package org.eclipse.emf.ecore.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EStructuralFeatureImpl;
import org.eclipse.emf.ecore.util.FeatureMapUtil;

public class EAttributeImpl
extends EStructuralFeatureImpl
implements EAttribute {
    protected static final boolean ID_EDEFAULT = false;
    protected static final int ID_EFLAG = 32768;
    protected byte effectiveIsMany;
    protected EDataType eAttributeType;

    protected EAttributeImpl() {
    }

    protected EClass eStaticClass() {
        return EcorePackage.Literals.EATTRIBUTE;
    }

    public boolean isID() {
        return (this.eFlags & 0x8000) != 0;
    }

    public boolean isMany() {
        switch (this.effectiveIsMany) {
            case -1: {
                return true;
            }
            case 0: {
                int upper = this.getUpperBound();
                if (upper > 1 || upper == -1) {
                    this.effectiveIsMany = (byte)-1;
                    return true;
                }
                EClassifier eType = this.getEType();
                if (eType != null && FeatureMapUtil.isFeatureMapEntry(eType)) {
                    this.effectiveIsMany = (byte)-1;
                    return true;
                }
                this.effectiveIsMany = 1;
                return false;
            }
        }
        return false;
    }

    public void setUpperBound(int upperBound) {
        this.effectiveIsMany = 0;
        super.setUpperBound(upperBound);
    }

    public NotificationChain setEType(EClassifier newEType, NotificationChain msgs) {
        this.effectiveIsMany = 0;
        this.eAttributeType = null;
        return super.setEType(newEType, msgs);
    }

    public void setID(boolean newID) {
        boolean oldID;
        boolean bl = oldID = (this.eFlags & 0x8000) != 0;
        this.eFlags = newID ? (this.eFlags |= 0x8000) : (this.eFlags &= 0xFFFF7FFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, oldID, newID));
        }
    }

    public EDataType getEAttributeType() {
        EClassifier eType;
        if ((this.eAttributeType == null || !this.isFrozen() && this.eAttributeType.eIsProxy()) && (eType = this.getEType()) instanceof EDataType) {
            this.eAttributeType = (EDataType)eType;
        }
        return this.eAttributeType;
    }

    public EDataType basicGetEAttributeType() {
        EClassifier eType;
        if (this.eAttributeType == null && (eType = this.basicGetEType()) instanceof EDataType) {
            this.eAttributeType = (EDataType)eType;
        }
        return this.eAttributeType;
    }

    protected void freeze() {
        this.getEAttributeType();
        super.freeze();
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
            case 1: {
                return this.getName();
            }
            case 2: {
                return this.isOrdered();
            }
            case 3: {
                return this.isUnique();
            }
            case 4: {
                return this.getLowerBound();
            }
            case 5: {
                return this.getUpperBound();
            }
            case 6: {
                return this.isMany();
            }
            case 7: {
                return this.isRequired();
            }
            case 8: {
                if (resolve) {
                    return this.getEType();
                }
                return this.basicGetEType();
            }
            case 9: {
                return this.getEGenericType();
            }
            case 10: {
                return this.isChangeable();
            }
            case 11: {
                return this.isVolatile();
            }
            case 12: {
                return this.isTransient();
            }
            case 13: {
                return this.getDefaultValueLiteral();
            }
            case 14: {
                return this.getDefaultValue();
            }
            case 15: {
                return this.isUnsettable();
            }
            case 16: {
                return this.isDerived();
            }
            case 17: {
                return this.getEContainingClass();
            }
            case 18: {
                return this.isID();
            }
            case 19: {
                if (resolve) {
                    return this.getEAttributeType();
                }
                return this.basicGetEAttributeType();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                this.getEAnnotations().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setName((String)newValue);
                return;
            }
            case 2: {
                this.setOrdered((Boolean)newValue);
                return;
            }
            case 3: {
                this.setUnique((Boolean)newValue);
                return;
            }
            case 4: {
                this.setLowerBound((Integer)newValue);
                return;
            }
            case 5: {
                this.setUpperBound((Integer)newValue);
                return;
            }
            case 8: {
                this.setEType((EClassifier)newValue);
                return;
            }
            case 9: {
                this.setEGenericType((EGenericType)newValue);
                return;
            }
            case 10: {
                this.setChangeable((Boolean)newValue);
                return;
            }
            case 11: {
                this.setVolatile((Boolean)newValue);
                return;
            }
            case 12: {
                this.setTransient((Boolean)newValue);
                return;
            }
            case 13: {
                this.setDefaultValueLiteral((String)newValue);
                return;
            }
            case 15: {
                this.setUnsettable((Boolean)newValue);
                return;
            }
            case 16: {
                this.setDerived((Boolean)newValue);
                return;
            }
            case 18: {
                this.setID((Boolean)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                return;
            }
            case 1: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.setOrdered(true);
                return;
            }
            case 3: {
                this.setUnique(true);
                return;
            }
            case 4: {
                this.setLowerBound(0);
                return;
            }
            case 5: {
                this.setUpperBound(1);
                return;
            }
            case 8: {
                this.unsetEType();
                return;
            }
            case 9: {
                this.unsetEGenericType();
                return;
            }
            case 10: {
                this.setChangeable(true);
                return;
            }
            case 11: {
                this.setVolatile(false);
                return;
            }
            case 12: {
                this.setTransient(false);
                return;
            }
            case 13: {
                this.setDefaultValueLiteral(DEFAULT_VALUE_LITERAL_EDEFAULT);
                return;
            }
            case 15: {
                this.setUnsettable(false);
                return;
            }
            case 16: {
                this.setDerived(false);
                return;
            }
            case 18: {
                this.setID(false);
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
            case 1: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 2: {
                return (this.eFlags & 0x100) == 0;
            }
            case 3: {
                return (this.eFlags & 0x200) == 0;
            }
            case 4: {
                return this.lowerBound != 0;
            }
            case 5: {
                return this.upperBound != 1;
            }
            case 6: {
                return this.isMany();
            }
            case 7: {
                return this.isRequired();
            }
            case 8: {
                return this.isSetEType();
            }
            case 9: {
                return this.isSetEGenericType();
            }
            case 10: {
                return (this.eFlags & 0x400) == 0;
            }
            case 11: {
                return (this.eFlags & 0x800) != 0;
            }
            case 12: {
                return (this.eFlags & 0x1000) != 0;
            }
            case 13: {
                return DEFAULT_VALUE_LITERAL_EDEFAULT == null ? this.defaultValueLiteral != null : !DEFAULT_VALUE_LITERAL_EDEFAULT.equals(this.defaultValueLiteral);
            }
            case 14: {
                return DEFAULT_VALUE_EDEFAULT == null ? this.getDefaultValue() != null : !DEFAULT_VALUE_EDEFAULT.equals(this.getDefaultValue());
            }
            case 15: {
                return (this.eFlags & 0x2000) != 0;
            }
            case 16: {
                return (this.eFlags & 0x4000) != 0;
            }
            case 17: {
                return this.getEContainingClass() != null;
            }
            case 18: {
                return (this.eFlags & 0x8000) != 0;
            }
            case 19: {
                return this.basicGetEAttributeType() != null;
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (iD: ");
        result.append((this.eFlags & 0x8000) != 0);
        result.append(')');
        return result.toString();
    }
}

