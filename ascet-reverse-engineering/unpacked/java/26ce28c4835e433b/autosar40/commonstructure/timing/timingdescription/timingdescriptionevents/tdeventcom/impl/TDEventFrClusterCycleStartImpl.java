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

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrClusterCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TDEventCycleStartImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TDEventFrClusterCycleStartImpl
extends TDEventCycleStartImpl
implements TDEventFrClusterCycleStart,
IReferringClass {
    protected FlexrayCluster frCluster;

    protected TDEventFrClusterCycleStartImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventcomPackage.Literals.TD_EVENT_FR_CLUSTER_CYCLE_START;
    }

    public FlexrayCluster getFrCluster() {
        if (this.frCluster != null && this.frCluster.eIsProxy()) {
            InternalEObject oldFrCluster = (InternalEObject)this.frCluster;
            this.frCluster = (FlexrayCluster)this.eResolveProxy(oldFrCluster);
            if (this.frCluster != oldFrCluster && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldFrCluster, (Object)this.frCluster));
            }
        }
        return this.frCluster;
    }

    public FlexrayCluster basicGetFrCluster() {
        return this.frCluster;
    }

    public void setFrCluster(FlexrayCluster newFrCluster) {
        FlexrayCluster oldFrCluster = this.frCluster;
        this.frCluster = newFrCluster;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldFrCluster, (Object)this.frCluster));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                if (resolve) {
                    return this.getFrCluster();
                }
                return this.basicGetFrCluster();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setFrCluster((FlexrayCluster)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.setFrCluster(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.frCluster != null;
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

