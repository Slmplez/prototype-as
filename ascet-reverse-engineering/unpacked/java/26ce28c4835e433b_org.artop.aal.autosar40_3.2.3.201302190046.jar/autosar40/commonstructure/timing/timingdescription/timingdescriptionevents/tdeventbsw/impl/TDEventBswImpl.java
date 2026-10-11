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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl;

import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.commonstructure.timing.timingdescription.impl.TimingDescriptionEventImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBsw;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class TDEventBswImpl
extends TimingDescriptionEventImpl
implements TDEventBsw,
IReferringClass {
    protected BswModuleDescription bswModuleDescription;

    protected TDEventBswImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventbswPackage.Literals.TD_EVENT_BSW;
    }

    public BswModuleDescription getBswModuleDescription() {
        if (this.bswModuleDescription != null && this.bswModuleDescription.eIsProxy()) {
            InternalEObject oldBswModuleDescription = (InternalEObject)this.bswModuleDescription;
            this.bswModuleDescription = (BswModuleDescription)this.eResolveProxy(oldBswModuleDescription);
            if (this.bswModuleDescription != oldBswModuleDescription && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldBswModuleDescription, (Object)this.bswModuleDescription));
            }
        }
        return this.bswModuleDescription;
    }

    public BswModuleDescription basicGetBswModuleDescription() {
        return this.bswModuleDescription;
    }

    public void setBswModuleDescription(BswModuleDescription newBswModuleDescription) {
        BswModuleDescription oldBswModuleDescription = this.bswModuleDescription;
        this.bswModuleDescription = newBswModuleDescription;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldBswModuleDescription, (Object)this.bswModuleDescription));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                if (resolve) {
                    return this.getBswModuleDescription();
                }
                return this.basicGetBswModuleDescription();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setBswModuleDescription((BswModuleDescription)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setBswModuleDescription(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.bswModuleDescription != null;
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

