/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl;

import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprm;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl.SwCalprmRefProxyImpl;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.swCalprmRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class swCalprmRefImpl
extends SwCalprmRefProxyImpl
implements swCalprmRef,
IReferringClass {
    protected SwCalprm swCalprm;

    protected swCalprmRefImpl() {
    }

    protected EClass eStaticClass() {
        return DatadictionaryproxiesPackage.Literals.SW_CALPRM_REF;
    }

    public SwCalprm getSwCalprm() {
        if (this.swCalprm != null && this.swCalprm.eIsProxy()) {
            InternalEObject oldSwCalprm = (InternalEObject)this.swCalprm;
            this.swCalprm = (SwCalprm)this.eResolveProxy(oldSwCalprm);
            if (this.swCalprm != oldSwCalprm && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldSwCalprm, (Object)this.swCalprm));
            }
        }
        return this.swCalprm;
    }

    public SwCalprm basicGetSwCalprm() {
        return this.swCalprm;
    }

    public void setSwCalprm(SwCalprm newSwCalprm) {
        SwCalprm oldSwCalprm = this.swCalprm;
        this.swCalprm = newSwCalprm;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldSwCalprm, (Object)this.swCalprm));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getSwCalprm();
                }
                return this.basicGetSwCalprm();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwCalprm((SwCalprm)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwCalprm(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.swCalprm != null;
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
}

