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

import autosar40.system.networkmanagement.FlexrayNmCluster;
import autosar40.system.networkmanagement.FlexrayNmClusterCoupling;
import autosar40.system.networkmanagement.FlexrayNmScheduleVariant;
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
public class FlexrayNmClusterCouplingImpl
extends NmClusterCouplingImpl
implements FlexrayNmClusterCoupling,
IReferringClass {
    protected EList<FlexrayNmCluster> coupledClusters;
    protected static final Boolean NM_CONTROL_BIT_VECTOR_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmControlBitVectorEnabled = NM_CONTROL_BIT_VECTOR_ENABLED_EDEFAULT;
    protected boolean nmControlBitVectorEnabledESet;
    protected static final Boolean NM_DATA_DISABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmDataDisabled = NM_DATA_DISABLED_EDEFAULT;
    protected boolean nmDataDisabledESet;
    protected static final FlexrayNmScheduleVariant NM_SCHEDULE_VARIANT_EDEFAULT = FlexrayNmScheduleVariant.SCHEDULE_VARIANT1;
    protected FlexrayNmScheduleVariant nmScheduleVariant = NM_SCHEDULE_VARIANT_EDEFAULT;
    protected boolean nmScheduleVariantESet;

    protected FlexrayNmClusterCouplingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.FLEXRAY_NM_CLUSTER_COUPLING;
    }

    @Override
    public EList<FlexrayNmCluster> getCoupledClusters() {
        if (this.coupledClusters == null) {
            this.coupledClusters = new EObjectResolvingReferringEList(FlexrayNmCluster.class, (InternalEObject)this, 5);
        }
        return this.coupledClusters;
    }

    @Override
    public Boolean getNmControlBitVectorEnabled() {
        return this.nmControlBitVectorEnabled;
    }

    @Override
    public void setNmControlBitVectorEnabled(Boolean newNmControlBitVectorEnabled) {
        Boolean oldNmControlBitVectorEnabled = this.nmControlBitVectorEnabled;
        this.nmControlBitVectorEnabled = newNmControlBitVectorEnabled;
        boolean oldNmControlBitVectorEnabledESet = this.nmControlBitVectorEnabledESet;
        this.nmControlBitVectorEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldNmControlBitVectorEnabled, (Object)this.nmControlBitVectorEnabled, !oldNmControlBitVectorEnabledESet));
        }
    }

    @Override
    public void unsetNmControlBitVectorEnabled() {
        Boolean oldNmControlBitVectorEnabled = this.nmControlBitVectorEnabled;
        boolean oldNmControlBitVectorEnabledESet = this.nmControlBitVectorEnabledESet;
        this.nmControlBitVectorEnabled = NM_CONTROL_BIT_VECTOR_ENABLED_EDEFAULT;
        this.nmControlBitVectorEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldNmControlBitVectorEnabled, (Object)NM_CONTROL_BIT_VECTOR_ENABLED_EDEFAULT, oldNmControlBitVectorEnabledESet));
        }
    }

    @Override
    public boolean isSetNmControlBitVectorEnabled() {
        return this.nmControlBitVectorEnabledESet;
    }

    @Override
    public Boolean getNmDataDisabled() {
        return this.nmDataDisabled;
    }

    @Override
    public void setNmDataDisabled(Boolean newNmDataDisabled) {
        Boolean oldNmDataDisabled = this.nmDataDisabled;
        this.nmDataDisabled = newNmDataDisabled;
        boolean oldNmDataDisabledESet = this.nmDataDisabledESet;
        this.nmDataDisabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldNmDataDisabled, (Object)this.nmDataDisabled, !oldNmDataDisabledESet));
        }
    }

    @Override
    public void unsetNmDataDisabled() {
        Boolean oldNmDataDisabled = this.nmDataDisabled;
        boolean oldNmDataDisabledESet = this.nmDataDisabledESet;
        this.nmDataDisabled = NM_DATA_DISABLED_EDEFAULT;
        this.nmDataDisabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldNmDataDisabled, (Object)NM_DATA_DISABLED_EDEFAULT, oldNmDataDisabledESet));
        }
    }

    @Override
    public boolean isSetNmDataDisabled() {
        return this.nmDataDisabledESet;
    }

    @Override
    public FlexrayNmScheduleVariant getNmScheduleVariant() {
        return this.nmScheduleVariant;
    }

    @Override
    public void setNmScheduleVariant(FlexrayNmScheduleVariant newNmScheduleVariant) {
        FlexrayNmScheduleVariant oldNmScheduleVariant = this.nmScheduleVariant;
        this.nmScheduleVariant = newNmScheduleVariant == null ? NM_SCHEDULE_VARIANT_EDEFAULT : newNmScheduleVariant;
        boolean oldNmScheduleVariantESet = this.nmScheduleVariantESet;
        this.nmScheduleVariantESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldNmScheduleVariant, (Object)this.nmScheduleVariant, !oldNmScheduleVariantESet));
        }
    }

    @Override
    public void unsetNmScheduleVariant() {
        FlexrayNmScheduleVariant oldNmScheduleVariant = this.nmScheduleVariant;
        boolean oldNmScheduleVariantESet = this.nmScheduleVariantESet;
        this.nmScheduleVariant = NM_SCHEDULE_VARIANT_EDEFAULT;
        this.nmScheduleVariantESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldNmScheduleVariant, (Object)NM_SCHEDULE_VARIANT_EDEFAULT, oldNmScheduleVariantESet));
        }
    }

    @Override
    public boolean isSetNmScheduleVariant() {
        return this.nmScheduleVariantESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getCoupledClusters();
            }
            case 6: {
                return this.getNmControlBitVectorEnabled();
            }
            case 7: {
                return this.getNmDataDisabled();
            }
            case 8: {
                return this.getNmScheduleVariant();
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
                this.setNmControlBitVectorEnabled((Boolean)newValue);
                return;
            }
            case 7: {
                this.setNmDataDisabled((Boolean)newValue);
                return;
            }
            case 8: {
                this.setNmScheduleVariant((FlexrayNmScheduleVariant)((Object)newValue));
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
                this.unsetNmControlBitVectorEnabled();
                return;
            }
            case 7: {
                this.unsetNmDataDisabled();
                return;
            }
            case 8: {
                this.unsetNmScheduleVariant();
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
                return this.isSetNmControlBitVectorEnabled();
            }
            case 7: {
                return this.isSetNmDataDisabled();
            }
            case 8: {
                return this.isSetNmScheduleVariant();
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
        result.append(" (nmControlBitVectorEnabled: ");
        if (this.nmControlBitVectorEnabledESet) {
            result.append(this.nmControlBitVectorEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmDataDisabled: ");
        if (this.nmDataDisabledESet) {
            result.append(this.nmDataDisabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmScheduleVariant: ");
        if (this.nmScheduleVariantESet) {
            result.append((Object)this.nmScheduleVariant);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

