/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.genericstructure.commonpatterns.languagedatamodel.impl;

import autosar3x.genericstructure.commonpatterns.languagedatamodel.LEnum;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlGraphic;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MlGraphicImpl
extends ARObjectImpl
implements MlGraphic {
    protected static final LEnum L_EDEFAULT = LEnum.FOR_ALL;
    protected LEnum l = L_EDEFAULT;
    protected boolean lESet;

    protected MlGraphicImpl() {
    }

    protected EClass eStaticClass() {
        return LanguagedatamodelPackage.Literals.ML_GRAPHIC;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldL, (Object)this.l, !oldLESet));
        }
    }

    public void unsetL() {
        LEnum oldL = this.l;
        boolean oldLESet = this.lESet;
        this.l = L_EDEFAULT;
        this.lESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldL, (Object)L_EDEFAULT, oldLESet));
        }
    }

    public boolean isSetL() {
        return this.lESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getL();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setL((LEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetL();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
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
        result.append(" (L: ");
        if (this.lESet) {
            result.append((Object)this.l);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

