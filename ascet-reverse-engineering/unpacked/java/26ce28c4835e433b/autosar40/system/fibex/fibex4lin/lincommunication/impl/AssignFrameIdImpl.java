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

import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameId;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinConfigurationEntryImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AssignFrameIdImpl
extends LinConfigurationEntryImpl
implements AssignFrameId,
IReferringClass {
    protected LinFrameTriggering assignedFrameTriggering;

    protected AssignFrameIdImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.ASSIGN_FRAME_ID;
    }

    public LinFrameTriggering getAssignedFrameTriggering() {
        if (this.assignedFrameTriggering != null && this.assignedFrameTriggering.eIsProxy()) {
            InternalEObject oldAssignedFrameTriggering = (InternalEObject)this.assignedFrameTriggering;
            this.assignedFrameTriggering = (LinFrameTriggering)this.eResolveProxy(oldAssignedFrameTriggering);
            if (this.assignedFrameTriggering != oldAssignedFrameTriggering && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldAssignedFrameTriggering, (Object)this.assignedFrameTriggering));
            }
        }
        return this.assignedFrameTriggering;
    }

    public LinFrameTriggering basicGetAssignedFrameTriggering() {
        return this.assignedFrameTriggering;
    }

    public void setAssignedFrameTriggering(LinFrameTriggering newAssignedFrameTriggering) {
        LinFrameTriggering oldAssignedFrameTriggering = this.assignedFrameTriggering;
        this.assignedFrameTriggering = newAssignedFrameTriggering;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldAssignedFrameTriggering, (Object)this.assignedFrameTriggering));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                if (resolve) {
                    return this.getAssignedFrameTriggering();
                }
                return this.basicGetAssignedFrameTriggering();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setAssignedFrameTriggering((LinFrameTriggering)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.setAssignedFrameTriggering(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.assignedFrameTriggering != null;
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

