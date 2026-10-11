/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 */
package autosar21.genericstructure.commonpatterns.languagedatamodel.impl;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.impl.MixedContent2Impl;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L2;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LEnum;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel2;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.FeatureMap;

public class L2Impl
extends MixedContent2Impl
implements L2 {
    protected static final LEnum L_EDEFAULT = LEnum.FR;
    protected LEnum l = L_EDEFAULT;
    protected boolean lESet;

    protected L2Impl() {
    }

    protected EClass eStaticClass() {
        return LanguagedatamodelPackage.Literals.L2;
    }

    public MlDataModel2 getMlDataModel2() {
        return (MlDataModel2)this.getMixed().get((EStructuralFeature)LanguagedatamodelPackage.Literals.L2__ML_DATA_MODEL2, true);
    }

    public void setMlDataModel2(MlDataModel2 newMlDataModel2) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)LanguagedatamodelPackage.Literals.L2__ML_DATA_MODEL2, (Object)newMlDataModel2);
    }

    public LEnum getL() {
        return this.l;
    }

    public void setL(LEnum newL) {
        LEnum oldL = this.l;
        this.l = newL == null ? L_EDEFAULT : newL;
        boolean oldLESet = this.lESet;
        this.lESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldL, (Object)this.l, !oldLESet));
        }
    }

    public void unsetL() {
        LEnum oldL = this.l;
        boolean oldLESet = this.lESet;
        this.l = L_EDEFAULT;
        this.lESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldL, (Object)L_EDEFAULT, oldLESet));
        }
    }

    public boolean isSetL() {
        return this.lESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 5, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.eBasicSetContainer(null, 5, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, MlDataModel2.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getMlDataModel2();
            }
            case 6: {
                return this.getL();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setMlDataModel2((MlDataModel2)newValue);
                return;
            }
            case 6: {
                this.setL((LEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setMlDataModel2(null);
                return;
            }
            case 6: {
                this.unsetL();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.getMlDataModel2() != null;
            }
            case 6: {
                return this.isSetL();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (l: ");
        if (this.lESet) {
            result.append((Object)this.l);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

