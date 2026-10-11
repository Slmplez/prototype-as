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
package autosar21.ecuresource.impl;

import autosar21.ecuresource.DelegationHWConnection;
import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.impl.HWConnectionImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DelegationHWConnectionImpl
extends HWConnectionImpl
implements DelegationHWConnection,
IReferringClass {
    protected HWPort innerPort;
    protected HWPort outerPort;

    protected DelegationHWConnectionImpl() {
    }

    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.DELEGATION_HW_CONNECTION;
    }

    public HWPort getInnerPort() {
        if (this.innerPort != null && this.innerPort.eIsProxy()) {
            InternalEObject oldInnerPort = (InternalEObject)this.innerPort;
            this.innerPort = (HWPort)this.eResolveProxy(oldInnerPort);
            if (this.innerPort != oldInnerPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldInnerPort, (Object)this.innerPort));
            }
        }
        return this.innerPort;
    }

    public HWPort basicGetInnerPort() {
        return this.innerPort;
    }

    public void setInnerPort(HWPort newInnerPort) {
        HWPort oldInnerPort = this.innerPort;
        this.innerPort = newInnerPort;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldInnerPort, (Object)this.innerPort));
        }
    }

    public HWPort getOuterPort() {
        if (this.outerPort != null && this.outerPort.eIsProxy()) {
            InternalEObject oldOuterPort = (InternalEObject)this.outerPort;
            this.outerPort = (HWPort)this.eResolveProxy(oldOuterPort);
            if (this.outerPort != oldOuterPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldOuterPort, (Object)this.outerPort));
            }
        }
        return this.outerPort;
    }

    public HWPort basicGetOuterPort() {
        return this.outerPort;
    }

    public void setOuterPort(HWPort newOuterPort) {
        HWPort oldOuterPort = this.outerPort;
        this.outerPort = newOuterPort;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldOuterPort, (Object)this.outerPort));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                if (resolve) {
                    return this.getInnerPort();
                }
                return this.basicGetInnerPort();
            }
            case 19: {
                if (resolve) {
                    return this.getOuterPort();
                }
                return this.basicGetOuterPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setInnerPort((HWPort)newValue);
                return;
            }
            case 19: {
                this.setOuterPort((HWPort)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setInnerPort(null);
                return;
            }
            case 19: {
                this.setOuterPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.innerPort != null;
            }
            case 19: {
                return this.outerPort != null;
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

