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

import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefMsr;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl.SwVariableRefProxyImpl;
import autosar21.swcomponent.measurementandcalibration.variable.SwVariable;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwVariableRefMsrImpl
extends SwVariableRefProxyImpl
implements SwVariableRefMsr,
IReferringClass {
    protected SwVariable swVariable;

    protected SwVariableRefMsrImpl() {
    }

    protected EClass eStaticClass() {
        return DatadictionaryproxiesPackage.Literals.SW_VARIABLE_REF_MSR;
    }

    public SwVariable getSwVariable() {
        if (this.swVariable != null && this.swVariable.eIsProxy()) {
            InternalEObject oldSwVariable = (InternalEObject)this.swVariable;
            this.swVariable = (SwVariable)this.eResolveProxy(oldSwVariable);
            if (this.swVariable != oldSwVariable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldSwVariable, (Object)this.swVariable));
            }
        }
        return this.swVariable;
    }

    public SwVariable basicGetSwVariable() {
        return this.swVariable;
    }

    public void setSwVariable(SwVariable newSwVariable) {
        SwVariable oldSwVariable = this.swVariable;
        this.swVariable = newSwVariable;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldSwVariable, (Object)this.swVariable));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getSwVariable();
                }
                return this.basicGetSwVariable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwVariable((SwVariable)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwVariable(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.swVariable != null;
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

