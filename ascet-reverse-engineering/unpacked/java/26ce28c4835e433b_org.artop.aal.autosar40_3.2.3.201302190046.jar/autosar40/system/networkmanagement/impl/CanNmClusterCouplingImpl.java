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
package autosar40.system.networkmanagement.impl;

import autosar40.system.networkmanagement.CanNmCluster;
import autosar40.system.networkmanagement.CanNmClusterCoupling;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.impl.NmClusterCouplingImpl;
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
public class CanNmClusterCouplingImpl
extends NmClusterCouplingImpl
implements CanNmClusterCoupling,
IReferringClass {
    protected EList<CanNmCluster> coupledClusters;
    protected static final Boolean NM_BUSLOAD_REDUCTION_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmBusloadReductionEnabled = NM_BUSLOAD_REDUCTION_ENABLED_EDEFAULT;
    protected boolean nmBusloadReductionEnabledESet;
    protected static final Boolean NM_IMMEDIATE_RESTART_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmImmediateRestartEnabled = NM_IMMEDIATE_RESTART_ENABLED_EDEFAULT;
    protected boolean nmImmediateRestartEnabledESet;

    protected CanNmClusterCouplingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.CAN_NM_CLUSTER_COUPLING;
    }

    @Override
    public EList<CanNmCluster> getCoupledClusters() {
        if (this.coupledClusters == null) {
            this.coupledClusters = new EObjectResolvingReferringEList(CanNmCluster.class, (InternalEObject)this, 5);
        }
        return this.coupledClusters;
    }

    @Override
    public Boolean getNmBusloadReductionEnabled() {
        return this.nmBusloadReductionEnabled;
    }

    @Override
    public void setNmBusloadReductionEnabled(Boolean newNmBusloadReductionEnabled) {
        Boolean oldNmBusloadReductionEnabled = this.nmBusloadReductionEnabled;
        this.nmBusloadReductionEnabled = newNmBusloadReductionEnabled;
        boolean oldNmBusloadReductionEnabledESet = this.nmBusloadReductionEnabledESet;
        this.nmBusloadReductionEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldNmBusloadReductionEnabled, (Object)this.nmBusloadReductionEnabled, !oldNmBusloadReductionEnabledESet));
        }
    }

    @Override
    public void unsetNmBusloadReductionEnabled() {
        Boolean oldNmBusloadReductionEnabled = this.nmBusloadReductionEnabled;
        boolean oldNmBusloadReductionEnabledESet = this.nmBusloadReductionEnabledESet;
        this.nmBusloadReductionEnabled = NM_BUSLOAD_REDUCTION_ENABLED_EDEFAULT;
        this.nmBusloadReductionEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldNmBusloadReductionEnabled, (Object)NM_BUSLOAD_REDUCTION_ENABLED_EDEFAULT, oldNmBusloadReductionEnabledESet));
        }
    }

    @Override
    public boolean isSetNmBusloadReductionEnabled() {
        return this.nmBusloadReductionEnabledESet;
    }

    @Override
    public Boolean getNmImmediateRestartEnabled() {
        return this.nmImmediateRestartEnabled;
    }

    @Override
    public void setNmImmediateRestartEnabled(Boolean newNmImmediateRestartEnabled) {
        Boolean oldNmImmediateRestartEnabled = this.nmImmediateRestartEnabled;
        this.nmImmediateRestartEnabled = newNmImmediateRestartEnabled;
        boolean oldNmImmediateRestartEnabledESet = this.nmImmediateRestartEnabledESet;
        this.nmImmediateRestartEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldNmImmediateRestartEnabled, (Object)this.nmImmediateRestartEnabled, !oldNmImmediateRestartEnabledESet));
        }
    }

    @Override
    public void unsetNmImmediateRestartEnabled() {
        Boolean oldNmImmediateRestartEnabled = this.nmImmediateRestartEnabled;
        boolean oldNmImmediateRestartEnabledESet = this.nmImmediateRestartEnabledESet;
        this.nmImmediateRestartEnabled = NM_IMMEDIATE_RESTART_ENABLED_EDEFAULT;
        this.nmImmediateRestartEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldNmImmediateRestartEnabled, (Object)NM_IMMEDIATE_RESTART_ENABLED_EDEFAULT, oldNmImmediateRestartEnabledESet));
        }
    }

    @Override
    public boolean isSetNmImmediateRestartEnabled() {
        return this.nmImmediateRestartEnabledESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getCoupledClusters();
            }
            case 6: {
                return this.getNmBusloadReductionEnabled();
            }
            case 7: {
                return this.getNmImmediateRestartEnabled();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getCoupledClusters().clear();
                this.getCoupledClusters().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setNmBusloadReductionEnabled((Boolean)newValue);
                return;
            }
            case 7: {
                this.setNmImmediateRestartEnabled((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.getCoupledClusters().clear();
                return;
            }
            case 6: {
                this.unsetNmBusloadReductionEnabled();
                return;
            }
            case 7: {
                this.unsetNmImmediateRestartEnabled();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.coupledClusters != null && !this.coupledClusters.isEmpty();
            }
            case 6: {
                return this.isSetNmBusloadReductionEnabled();
            }
            case 7: {
                return this.isSetNmImmediateRestartEnabled();
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
        result.append(" (nmBusloadReductionEnabled: ");
        if (this.nmBusloadReductionEnabledESet) {
            result.append(this.nmBusloadReductionEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmImmediateRestartEnabled: ");
        if (this.nmImmediateRestartEnabledESet) {
            result.append(this.nmImmediateRestartEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

