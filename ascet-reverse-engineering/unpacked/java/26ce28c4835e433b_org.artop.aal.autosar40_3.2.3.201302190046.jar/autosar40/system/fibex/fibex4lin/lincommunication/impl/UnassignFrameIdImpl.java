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
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.UnassignFrameId;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinConfigurationEntryImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class UnassignFrameIdImpl
extends LinConfigurationEntryImpl
implements UnassignFrameId,
IReferringClass {
    protected LinFrameTriggering unassignedFrameTriggering;

    protected UnassignFrameIdImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.UNASSIGN_FRAME_ID;
    }

    public LinFrameTriggering getUnassignedFrameTriggering() {
        if (this.unassignedFrameTriggering != null && this.unassignedFrameTriggering.eIsProxy()) {
            InternalEObject oldUnassignedFrameTriggering = (InternalEObject)this.unassignedFrameTriggering;
            this.unassignedFrameTriggering = (LinFrameTriggering)this.eResolveProxy(oldUnassignedFrameTriggering);
            if (this.unassignedFrameTriggering != oldUnassignedFrameTriggering && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldUnassignedFrameTriggering, (Object)this.unassignedFrameTriggering));
            }
        }
        return this.unassignedFrameTriggering;
    }

    public LinFrameTriggering basicGetUnassignedFrameTriggering() {
        return this.unassignedFrameTriggering;
    }

    public void setUnassignedFrameTriggering(LinFrameTriggering newUnassignedFrameTriggering) {
        LinFrameTriggering oldUnassignedFrameTriggering = this.unassignedFrameTriggering;
        this.unassignedFrameTriggering = newUnassignedFrameTriggering;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldUnassignedFrameTriggering, (Object)this.unassignedFrameTriggering));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                if (resolve) {
                    return this.getUnassignedFrameTriggering();
                }
                return this.basicGetUnassignedFrameTriggering();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setUnassignedFrameTriggering((LinFrameTriggering)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.setUnassignedFrameTriggering(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.unassignedFrameTriggering != null;
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

