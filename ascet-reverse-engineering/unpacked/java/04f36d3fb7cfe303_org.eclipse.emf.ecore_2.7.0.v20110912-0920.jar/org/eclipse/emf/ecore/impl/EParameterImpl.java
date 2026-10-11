/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 */
package org.eclipse.emf.ecore.impl;

import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ETypedElementImpl;
import org.eclipse.emf.ecore.util.InternalEList;

public class EParameterImpl
extends ETypedElementImpl
implements EParameter {
    protected EParameterImpl() {
    }

    protected EClass eStaticClass() {
        return EcorePackage.Literals.EPARAMETER;
    }

    public EOperation getEOperation() {
        return this.eContainerFeatureID() == 10 ? (EOperation)((Object)this.eContainer) : null;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
            case 10: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 10, msgs);
            }
        }
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
            case 9: {
                return this.basicUnsetEGenericType(msgs);
            }
            case 10: {
                return this.eBasicSetContainer(null, 10, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 10: {
                return this.eInternalContainer().eInverseRemove(this, 12, EOperation.class, msgs);
            }
        }
        return this.eDynamicBasicRemoveFromContainer(msgs);
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
                return this.getEOperation();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
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
                return this.getEOperation() != null;
            }
        }
        return this.eDynamicIsSet(featureID);
    }
}

