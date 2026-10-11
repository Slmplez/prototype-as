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
package autosar3x.commonstructure.serviceneeds.impl;

import autosar3x.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar3x.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import autosar3x.commonstructure.serviceneeds.ObdRatioConnectionKind;
import autosar3x.commonstructure.serviceneeds.ObdRatioServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ObdRatioServiceNeedsImpl
extends ServiceNeedsImpl
implements ObdRatioServiceNeeds,
IReferringClass {
    protected static final ObdRatioConnectionKind CONNECTION_TYPE_EDEFAULT = ObdRatioConnectionKind.API_USE;
    protected ObdRatioConnectionKind connectionType = CONNECTION_TYPE_EDEFAULT;
    protected boolean connectionTypeESet;
    protected static final String IUMPR_GROUP_EDEFAULT = "";
    protected String iumprGroup = "";
    protected boolean iumprGroupESet;
    protected DiagnosticEventNeeds rateBasedMonitoredEvent;
    protected FunctionInhibitionNeeds usedFid;

    protected ObdRatioServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.OBD_RATIO_SERVICE_NEEDS;
    }

    public ObdRatioConnectionKind getConnectionType() {
        return this.connectionType;
    }

    public void setConnectionType(ObdRatioConnectionKind newConnectionType) {
        ObdRatioConnectionKind oldConnectionType = this.connectionType;
        this.connectionType = newConnectionType == null ? CONNECTION_TYPE_EDEFAULT : newConnectionType;
        boolean oldConnectionTypeESet = this.connectionTypeESet;
        this.connectionTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldConnectionType, (Object)this.connectionType, !oldConnectionTypeESet));
        }
    }

    public void unsetConnectionType() {
        ObdRatioConnectionKind oldConnectionType = this.connectionType;
        boolean oldConnectionTypeESet = this.connectionTypeESet;
        this.connectionType = CONNECTION_TYPE_EDEFAULT;
        this.connectionTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldConnectionType, (Object)CONNECTION_TYPE_EDEFAULT, oldConnectionTypeESet));
        }
    }

    public boolean isSetConnectionType() {
        return this.connectionTypeESet;
    }

    public String getIumprGroup() {
        return this.iumprGroup;
    }

    public void setIumprGroup(String newIumprGroup) {
        String oldIumprGroup = this.iumprGroup;
        this.iumprGroup = newIumprGroup;
        boolean oldIumprGroupESet = this.iumprGroupESet;
        this.iumprGroupESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldIumprGroup, (Object)this.iumprGroup, !oldIumprGroupESet));
        }
    }

    public void unsetIumprGroup() {
        String oldIumprGroup = this.iumprGroup;
        boolean oldIumprGroupESet = this.iumprGroupESet;
        this.iumprGroup = IUMPR_GROUP_EDEFAULT;
        this.iumprGroupESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldIumprGroup, (Object)IUMPR_GROUP_EDEFAULT, oldIumprGroupESet));
        }
    }

    public boolean isSetIumprGroup() {
        return this.iumprGroupESet;
    }

    public DiagnosticEventNeeds getRateBasedMonitoredEvent() {
        if (this.rateBasedMonitoredEvent != null && this.rateBasedMonitoredEvent.eIsProxy()) {
            InternalEObject oldRateBasedMonitoredEvent = (InternalEObject)this.rateBasedMonitoredEvent;
            this.rateBasedMonitoredEvent = (DiagnosticEventNeeds)this.eResolveProxy(oldRateBasedMonitoredEvent);
            if (this.rateBasedMonitoredEvent != oldRateBasedMonitoredEvent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldRateBasedMonitoredEvent, (Object)this.rateBasedMonitoredEvent));
            }
        }
        return this.rateBasedMonitoredEvent;
    }

    public DiagnosticEventNeeds basicGetRateBasedMonitoredEvent() {
        return this.rateBasedMonitoredEvent;
    }

    public void setRateBasedMonitoredEvent(DiagnosticEventNeeds newRateBasedMonitoredEvent) {
        DiagnosticEventNeeds oldRateBasedMonitoredEvent = this.rateBasedMonitoredEvent;
        this.rateBasedMonitoredEvent = newRateBasedMonitoredEvent;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldRateBasedMonitoredEvent, (Object)this.rateBasedMonitoredEvent));
        }
    }

    public FunctionInhibitionNeeds getUsedFid() {
        if (this.usedFid != null && this.usedFid.eIsProxy()) {
            InternalEObject oldUsedFid = (InternalEObject)this.usedFid;
            this.usedFid = (FunctionInhibitionNeeds)this.eResolveProxy(oldUsedFid);
            if (this.usedFid != oldUsedFid && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldUsedFid, (Object)this.usedFid));
            }
        }
        return this.usedFid;
    }

    public FunctionInhibitionNeeds basicGetUsedFid() {
        return this.usedFid;
    }

    public void setUsedFid(FunctionInhibitionNeeds newUsedFid) {
        FunctionInhibitionNeeds oldUsedFid = this.usedFid;
        this.usedFid = newUsedFid;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldUsedFid, (Object)this.usedFid));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getConnectionType();
            }
            case 18: {
                return this.getIumprGroup();
            }
            case 19: {
                if (resolve) {
                    return this.getRateBasedMonitoredEvent();
                }
                return this.basicGetRateBasedMonitoredEvent();
            }
            case 20: {
                if (resolve) {
                    return this.getUsedFid();
                }
                return this.basicGetUsedFid();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setConnectionType((ObdRatioConnectionKind)((Object)newValue));
                return;
            }
            case 18: {
                this.setIumprGroup((String)newValue);
                return;
            }
            case 19: {
                this.setRateBasedMonitoredEvent((DiagnosticEventNeeds)newValue);
                return;
            }
            case 20: {
                this.setUsedFid((FunctionInhibitionNeeds)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.unsetConnectionType();
                return;
            }
            case 18: {
                this.unsetIumprGroup();
                return;
            }
            case 19: {
                this.setRateBasedMonitoredEvent(null);
                return;
            }
            case 20: {
                this.setUsedFid(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.isSetConnectionType();
            }
            case 18: {
                return this.isSetIumprGroup();
            }
            case 19: {
                return this.rateBasedMonitoredEvent != null;
            }
            case 20: {
                return this.usedFid != null;
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (connectionType: ");
        if (this.connectionTypeESet) {
            result.append((Object)this.connectionType);
        } else {
            result.append("<unset>");
        }
        result.append(", iumprGroup: ");
        if (this.iumprGroupESet) {
            result.append(this.iumprGroup);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

