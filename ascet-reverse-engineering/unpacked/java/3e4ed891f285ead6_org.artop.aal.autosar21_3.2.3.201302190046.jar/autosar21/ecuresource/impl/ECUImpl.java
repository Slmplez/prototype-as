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

import autosar21.ecuresource.ECU;
import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.impl.HWElementContainerImpl;
import autosar21.swcomponent.components.ComponentType;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ECUImpl
extends HWElementContainerImpl
implements ECU,
IReferringClass {
    protected ComponentType ecuAbstraction;

    protected ECUImpl() {
    }

    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.ECU;
    }

    public ComponentType getEcuAbstraction() {
        if (this.ecuAbstraction != null && this.ecuAbstraction.eIsProxy()) {
            InternalEObject oldEcuAbstraction = (InternalEObject)this.ecuAbstraction;
            this.ecuAbstraction = (ComponentType)this.eResolveProxy(oldEcuAbstraction);
            if (this.ecuAbstraction != oldEcuAbstraction && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 27, (Object)oldEcuAbstraction, (Object)this.ecuAbstraction));
            }
        }
        return this.ecuAbstraction;
    }

    public ComponentType basicGetEcuAbstraction() {
        return this.ecuAbstraction;
    }

    public void setEcuAbstraction(ComponentType newEcuAbstraction) {
        ComponentType oldEcuAbstraction = this.ecuAbstraction;
        this.ecuAbstraction = newEcuAbstraction;
        AutosarObjectUtil.setDest((EObject)this, (int)27, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldEcuAbstraction, (Object)this.ecuAbstraction));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                if (resolve) {
                    return this.getEcuAbstraction();
                }
                return this.basicGetEcuAbstraction();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setEcuAbstraction((ComponentType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.setEcuAbstraction(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.ecuAbstraction != null;
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

