/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar40.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import autosar40.commonstructure.serviceneeds.ObdRatioConnectionKindEnum;
import autosar40.commonstructure.serviceneeds.ObdRatioServiceNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCapabilityElementImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ObdRatioServiceNeedsImpl
extends DiagnosticCapabilityElementImpl
implements ObdRatioServiceNeeds,
IReferringClass {
    protected static final ObdRatioConnectionKindEnum CONNECTION_TYPE_EDEFAULT = ObdRatioConnectionKindEnum.API_USE;
    protected ObdRatioConnectionKindEnum connectionType = CONNECTION_TYPE_EDEFAULT;
    protected boolean connectionTypeESet;
    protected static final String IUMPR_GROUP_EDEFAULT = "";
    protected String iumprGroup = "";
    protected boolean iumprGroupESet;
    protected DiagnosticEventNeeds rateBasedMonitoredEvent;
    protected FunctionInhibitionNeeds usedFid;
    protected EList<FunctionInhibitionNeeds> usedSecondaryFids;

    protected ObdRatioServiceNeedsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.OBD_RATIO_SERVICE_NEEDS;
    }

    @Override
    public ObdRatioConnectionKindEnum getConnectionType() {
        return this.connectionType;
    }

    @Override
    public void setConnectionType(ObdRatioConnectionKindEnum newConnectionType) {
        ObdRatioConnectionKindEnum oldConnectionType = this.connectionType;
        this.connectionType = newConnectionType == null ? CONNECTION_TYPE_EDEFAULT : newConnectionType;
        boolean oldConnectionTypeESet = this.connectionTypeESet;
        this.connectionTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldConnectionType, (Object)this.connectionType, !oldConnectionTypeESet));
        }
    }

    @Override
    public void unsetConnectionType() {
        ObdRatioConnectionKindEnum oldConnectionType = this.connectionType;
        boolean oldConnectionTypeESet = this.connectionTypeESet;
        this.connectionType = CONNECTION_TYPE_EDEFAULT;
        this.connectionTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldConnectionType, (Object)CONNECTION_TYPE_EDEFAULT, oldConnectionTypeESet));
        }
    }

    @Override
    public boolean isSetConnectionType() {
        return this.connectionTypeESet;
    }

    @Override
    public String getIumprGroup() {
        return this.iumprGroup;
    }

    @Override
    public void setIumprGroup(String newIumprGroup) {
        String oldIumprGroup = this.iumprGroup;
        this.iumprGroup = newIumprGroup;
        boolean oldIumprGroupESet = this.iumprGroupESet;
        this.iumprGroupESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldIumprGroup, (Object)this.iumprGroup, !oldIumprGroupESet));
        }
    }

    @Override
    public void unsetIumprGroup() {
        String oldIumprGroup = this.iumprGroup;
        boolean oldIumprGroupESet = this.iumprGroupESet;
        this.iumprGroup = IUMPR_GROUP_EDEFAULT;
        this.iumprGroupESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldIumprGroup, (Object)IUMPR_GROUP_EDEFAULT, oldIumprGroupESet));
        }
    }

    @Override
    public boolean isSetIumprGroup() {
        return this.iumprGroupESet;
    }

    @Override
    public DiagnosticEventNeeds getRateBasedMonitoredEvent() {
        if (this.rateBasedMonitoredEvent != null && this.rateBasedMonitoredEvent.eIsProxy()) {
            InternalEObject oldRateBasedMonitoredEvent = (InternalEObject)this.rateBasedMonitoredEvent;
            this.rateBasedMonitoredEvent = (DiagnosticEventNeeds)this.eResolveProxy(oldRateBasedMonitoredEvent);
            if (this.rateBasedMonitoredEvent != oldRateBasedMonitoredEvent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldRateBasedMonitoredEvent, (Object)this.rateBasedMonitoredEvent));
            }
        }
        return this.rateBasedMonitoredEvent;
    }

    public DiagnosticEventNeeds basicGetRateBasedMonitoredEvent() {
        return this.rateBasedMonitoredEvent;
    }

    @Override
    public void setRateBasedMonitoredEvent(DiagnosticEventNeeds newRateBasedMonitoredEvent) {
        DiagnosticEventNeeds oldRateBasedMonitoredEvent = this.rateBasedMonitoredEvent;
        this.rateBasedMonitoredEvent = newRateBasedMonitoredEvent;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldRateBasedMonitoredEvent, (Object)this.rateBasedMonitoredEvent));
        }
    }

    @Override
    public FunctionInhibitionNeeds getUsedFid() {
        if (this.usedFid != null && this.usedFid.eIsProxy()) {
            InternalEObject oldUsedFid = (InternalEObject)this.usedFid;
            this.usedFid = (FunctionInhibitionNeeds)this.eResolveProxy(oldUsedFid);
            if (this.usedFid != oldUsedFid && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldUsedFid, (Object)this.usedFid));
            }
        }
        return this.usedFid;
    }

    public FunctionInhibitionNeeds basicGetUsedFid() {
        return this.usedFid;
    }

    @Override
    public void setUsedFid(FunctionInhibitionNeeds newUsedFid) {
        FunctionInhibitionNeeds oldUsedFid = this.usedFid;
        this.usedFid = newUsedFid;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldUsedFid, (Object)this.usedFid));
        }
    }

    @Override
    public EList<FunctionInhibitionNeeds> getUsedSecondaryFids() {
        if (this.usedSecondaryFids == null) {
            this.usedSecondaryFids = new EObjectResolvingReferringEList(FunctionInhibitionNeeds.class, (InternalEObject)this, 25);
        }
        return this.usedSecondaryFids;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getConnectionType();
            }
            case 22: {
                return this.getIumprGroup();
            }
            case 23: {
                if (resolve) {
                    return this.getRateBasedMonitoredEvent();
                }
                return this.basicGetRateBasedMonitoredEvent();
            }
            case 24: {
                if (resolve) {
                    return this.getUsedFid();
                }
                return this.basicGetUsedFid();
            }
            case 25: {
                return this.getUsedSecondaryFids();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setConnectionType((ObdRatioConnectionKindEnum)((Object)newValue));
                return;
            }
            case 22: {
                this.setIumprGroup((String)newValue);
                return;
            }
            case 23: {
                this.setRateBasedMonitoredEvent((DiagnosticEventNeeds)newValue);
                return;
            }
            case 24: {
                this.setUsedFid((FunctionInhibitionNeeds)newValue);
                return;
            }
            case 25: {
                this.getUsedSecondaryFids().clear();
                this.getUsedSecondaryFids().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetConnectionType();
                return;
            }
            case 22: {
                this.unsetIumprGroup();
                return;
            }
            case 23: {
                this.setRateBasedMonitoredEvent(null);
                return;
            }
            case 24: {
                this.setUsedFid(null);
                return;
            }
            case 25: {
                this.getUsedSecondaryFids().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetConnectionType();
            }
            case 22: {
                return this.isSetIumprGroup();
            }
            case 23: {
                return this.rateBasedMonitoredEvent != null;
            }
            case 24: {
                return this.usedFid != null;
            }
            case 25: {
                return this.usedSecondaryFids != null && !this.usedSecondaryFids.isEmpty();
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

    @Override
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

