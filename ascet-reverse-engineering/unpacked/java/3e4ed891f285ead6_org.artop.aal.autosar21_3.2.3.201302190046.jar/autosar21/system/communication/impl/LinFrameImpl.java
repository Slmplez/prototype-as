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
package autosar21.system.communication.impl;

import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.LinFrame;
import autosar21.system.communication.impl.FrameImpl;
import autosar21.system.pdustructure.SignalPosition;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class LinFrameImpl
extends FrameImpl
implements LinFrame,
IReferringClass {
    protected SignalPosition responseErrorSignal;

    protected LinFrameImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.LIN_FRAME;
    }

    public SignalPosition getResponseErrorSignal() {
        if (this.responseErrorSignal != null && this.responseErrorSignal.eIsProxy()) {
            InternalEObject oldResponseErrorSignal = (InternalEObject)this.responseErrorSignal;
            this.responseErrorSignal = (SignalPosition)this.eResolveProxy(oldResponseErrorSignal);
            if (this.responseErrorSignal != oldResponseErrorSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 25, (Object)oldResponseErrorSignal, (Object)this.responseErrorSignal));
            }
        }
        return this.responseErrorSignal;
    }

    public SignalPosition basicGetResponseErrorSignal() {
        return this.responseErrorSignal;
    }

    public void setResponseErrorSignal(SignalPosition newResponseErrorSignal) {
        SignalPosition oldResponseErrorSignal = this.responseErrorSignal;
        this.responseErrorSignal = newResponseErrorSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)25, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldResponseErrorSignal, (Object)this.responseErrorSignal));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                if (resolve) {
                    return this.getResponseErrorSignal();
                }
                return this.basicGetResponseErrorSignal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.setResponseErrorSignal((SignalPosition)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.setResponseErrorSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return this.responseErrorSignal != null;
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

