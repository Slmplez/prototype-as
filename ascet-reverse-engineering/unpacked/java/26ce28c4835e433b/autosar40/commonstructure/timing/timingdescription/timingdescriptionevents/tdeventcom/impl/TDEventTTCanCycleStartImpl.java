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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventTTCanCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TDEventCycleStartImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCluster;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TDEventTTCanCycleStartImpl
extends TDEventCycleStartImpl
implements TDEventTTCanCycleStart,
IReferringClass {
    protected TtcanCluster ttCanCluster;

    protected TDEventTTCanCycleStartImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventcomPackage.Literals.TD_EVENT_TT_CAN_CYCLE_START;
    }

    public TtcanCluster getTtCanCluster() {
        if (this.ttCanCluster != null && this.ttCanCluster.eIsProxy()) {
            InternalEObject oldTtCanCluster = (InternalEObject)this.ttCanCluster;
            this.ttCanCluster = (TtcanCluster)this.eResolveProxy(oldTtCanCluster);
            if (this.ttCanCluster != oldTtCanCluster && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldTtCanCluster, (Object)this.ttCanCluster));
            }
        }
        return this.ttCanCluster;
    }

    public TtcanCluster basicGetTtCanCluster() {
        return this.ttCanCluster;
    }

    public void setTtCanCluster(TtcanCluster newTtCanCluster) {
        TtcanCluster oldTtCanCluster = this.ttCanCluster;
        this.ttCanCluster = newTtCanCluster;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldTtCanCluster, (Object)this.ttCanCluster));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                if (resolve) {
                    return this.getTtCanCluster();
                }
                return this.basicGetTtCanCluster();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setTtCanCluster((TtcanCluster)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.setTtCanCluster(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.ttCanCluster != null;
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

