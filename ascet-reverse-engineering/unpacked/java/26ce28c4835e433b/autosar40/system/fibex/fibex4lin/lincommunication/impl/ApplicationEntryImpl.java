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

import autosar40.system.fibex.fibex4lin.lincommunication.ApplicationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.ScheduleTableEntryImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ApplicationEntryImpl
extends ScheduleTableEntryImpl
implements ApplicationEntry,
IReferringClass {
    protected LinFrameTriggering frameTriggering;

    protected ApplicationEntryImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.APPLICATION_ENTRY;
    }

    public LinFrameTriggering getFrameTriggering() {
        if (this.frameTriggering != null && this.frameTriggering.eIsProxy()) {
            InternalEObject oldFrameTriggering = (InternalEObject)this.frameTriggering;
            this.frameTriggering = (LinFrameTriggering)this.eResolveProxy(oldFrameTriggering);
            if (this.frameTriggering != oldFrameTriggering && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldFrameTriggering, (Object)this.frameTriggering));
            }
        }
        return this.frameTriggering;
    }

    public LinFrameTriggering basicGetFrameTriggering() {
        return this.frameTriggering;
    }

    public void setFrameTriggering(LinFrameTriggering newFrameTriggering) {
        LinFrameTriggering oldFrameTriggering = this.frameTriggering;
        this.frameTriggering = newFrameTriggering;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldFrameTriggering, (Object)this.frameTriggering));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                if (resolve) {
                    return this.getFrameTriggering();
                }
                return this.basicGetFrameTriggering();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setFrameTriggering((LinFrameTriggering)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setFrameTriggering(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.frameTriggering != null;
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

