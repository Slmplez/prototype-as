/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.networkmanagement.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.NmCluster;
import autosar40.system.networkmanagement.NmConfig;
import autosar40.system.networkmanagement.NmNode;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class NmClusterImpl
extends IdentifiableImpl
implements NmCluster,
IReferringClass {
    protected CommunicationCluster communicationCluster;
    protected static final PositiveIntegerDatatype NM_CHANNEL_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype nmChannelId = NM_CHANNEL_ID_EDEFAULT.clone();
    protected boolean nmChannelIdESet;
    protected static final Boolean NM_CHANNEL_SLEEP_MASTER_EDEFAULT = Boolean.FALSE;
    protected Boolean nmChannelSleepMaster = NM_CHANNEL_SLEEP_MASTER_EDEFAULT;
    protected boolean nmChannelSleepMasterESet;
    protected EList<NmNode> nmNodes;
    protected static final Boolean NM_SYNCHRONIZING_NETWORK_EDEFAULT = Boolean.FALSE;
    protected Boolean nmSynchronizingNetwork = NM_SYNCHRONIZING_NETWORK_EDEFAULT;
    protected boolean nmSynchronizingNetworkESet;
    protected VariationPoint variationPoint;

    protected NmClusterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.NM_CLUSTER;
    }

    @Override
    public NmConfig getNmConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (NmConfig)this.eContainer();
    }

    public NotificationChain basicSetNmConfig(NmConfig newNmConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newNmConfig, 18, msgs);
        return msgs;
    }

    @Override
    public void setNmConfig(NmConfig newNmConfig) {
        if (newNmConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newNmConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newNmConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newNmConfig != null) {
                msgs = ((InternalEObject)newNmConfig).eInverseAdd((InternalEObject)this, 21, NmConfig.class, msgs);
            }
            if ((msgs = this.basicSetNmConfig(newNmConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newNmConfig, (Object)newNmConfig));
        }
    }

    @Override
    public CommunicationCluster getCommunicationCluster() {
        if (this.communicationCluster != null && this.communicationCluster.eIsProxy()) {
            InternalEObject oldCommunicationCluster = (InternalEObject)this.communicationCluster;
            this.communicationCluster = (CommunicationCluster)this.eResolveProxy(oldCommunicationCluster);
            if (this.communicationCluster != oldCommunicationCluster && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldCommunicationCluster, (Object)this.communicationCluster));
            }
        }
        return this.communicationCluster;
    }

    public CommunicationCluster basicGetCommunicationCluster() {
        return this.communicationCluster;
    }

    @Override
    public void setCommunicationCluster(CommunicationCluster newCommunicationCluster) {
        CommunicationCluster oldCommunicationCluster = this.communicationCluster;
        this.communicationCluster = newCommunicationCluster;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldCommunicationCluster, (Object)this.communicationCluster));
        }
    }

    @Override
    public Long getNmChannelId() {
        return (Long)this.nmChannelId.basicGetValue();
    }

    @Override
    public void setNmChannelId(Long newNmChannelId) {
        Long oldNmChannelId = (Long)this.nmChannelId.basicGetValue();
        this.nmChannelId.basicSetValue((Object)newNmChannelId);
        boolean oldNmChannelIdESet = this.nmChannelIdESet;
        this.nmChannelIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldNmChannelId, (Object)newNmChannelId, !oldNmChannelIdESet));
        }
    }

    @Override
    public void unsetNmChannelId() {
        Long oldNmChannelId = (Long)this.nmChannelId.basicGetValue();
        boolean oldNmChannelIdESet = this.nmChannelIdESet;
        this.nmChannelId = NM_CHANNEL_ID_EDEFAULT.clone();
        this.nmChannelIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldNmChannelId, (Object)NM_CHANNEL_ID_EDEFAULT, oldNmChannelIdESet));
        }
    }

    @Override
    public boolean isSetNmChannelId() {
        return this.nmChannelIdESet;
    }

    @Override
    public Boolean getNmChannelSleepMaster() {
        return this.nmChannelSleepMaster;
    }

    @Override
    public void setNmChannelSleepMaster(Boolean newNmChannelSleepMaster) {
        Boolean oldNmChannelSleepMaster = this.nmChannelSleepMaster;
        this.nmChannelSleepMaster = newNmChannelSleepMaster;
        boolean oldNmChannelSleepMasterESet = this.nmChannelSleepMasterESet;
        this.nmChannelSleepMasterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldNmChannelSleepMaster, (Object)this.nmChannelSleepMaster, !oldNmChannelSleepMasterESet));
        }
    }

    @Override
    public void unsetNmChannelSleepMaster() {
        Boolean oldNmChannelSleepMaster = this.nmChannelSleepMaster;
        boolean oldNmChannelSleepMasterESet = this.nmChannelSleepMasterESet;
        this.nmChannelSleepMaster = NM_CHANNEL_SLEEP_MASTER_EDEFAULT;
        this.nmChannelSleepMasterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldNmChannelSleepMaster, (Object)NM_CHANNEL_SLEEP_MASTER_EDEFAULT, oldNmChannelSleepMasterESet));
        }
    }

    @Override
    public boolean isSetNmChannelSleepMaster() {
        return this.nmChannelSleepMasterESet;
    }

    @Override
    public EList<NmNode> getNmNodes() {
        if (this.nmNodes == null) {
            this.nmNodes = new EObjectContainmentWithInverseEList(NmNode.class, (InternalEObject)this, 22, 18);
        }
        return this.nmNodes;
    }

    @Override
    public Boolean getNmSynchronizingNetwork() {
        return this.nmSynchronizingNetwork;
    }

    @Override
    public void setNmSynchronizingNetwork(Boolean newNmSynchronizingNetwork) {
        Boolean oldNmSynchronizingNetwork = this.nmSynchronizingNetwork;
        this.nmSynchronizingNetwork = newNmSynchronizingNetwork;
        boolean oldNmSynchronizingNetworkESet = this.nmSynchronizingNetworkESet;
        this.nmSynchronizingNetworkESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldNmSynchronizingNetwork, (Object)this.nmSynchronizingNetwork, !oldNmSynchronizingNetworkESet));
        }
    }

    @Override
    public void unsetNmSynchronizingNetwork() {
        Boolean oldNmSynchronizingNetwork = this.nmSynchronizingNetwork;
        boolean oldNmSynchronizingNetworkESet = this.nmSynchronizingNetworkESet;
        this.nmSynchronizingNetwork = NM_SYNCHRONIZING_NETWORK_EDEFAULT;
        this.nmSynchronizingNetworkESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldNmSynchronizingNetwork, (Object)NM_SYNCHRONIZING_NETWORK_EDEFAULT, oldNmSynchronizingNetworkESet));
        }
    }

    @Override
    public boolean isSetNmSynchronizingNetwork() {
        return this.nmSynchronizingNetworkESet;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public PositiveIntegerDatatype getNmChannelIdData() {
        return this.nmChannelId.clone();
    }

    @Override
    public void setNmChannelIdData(PositiveIntegerDatatype newNmChannelId) {
        this.nmChannelId.setRadix((int)newNmChannelId.getRadix());
        this.nmChannelId.setNoOfDigits((int)newNmChannelId.getNoOfDigits());
        this.setNmChannelId(newNmChannelId.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetNmConfig((NmConfig)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getNmNodes()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetNmConfig(null, msgs);
            }
            case 22: {
                return ((InternalEList)this.getNmNodes()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, NmConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getNmConfig();
            }
            case 19: {
                if (resolve) {
                    return this.getCommunicationCluster();
                }
                return this.basicGetCommunicationCluster();
            }
            case 20: {
                return this.getNmChannelId();
            }
            case 21: {
                return this.getNmChannelSleepMaster();
            }
            case 22: {
                return this.getNmNodes();
            }
            case 23: {
                return this.getNmSynchronizingNetwork();
            }
            case 24: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setNmConfig((NmConfig)newValue);
                return;
            }
            case 19: {
                this.setCommunicationCluster((CommunicationCluster)newValue);
                return;
            }
            case 20: {
                this.setNmChannelId((Long)newValue);
                return;
            }
            case 21: {
                this.setNmChannelSleepMaster((Boolean)newValue);
                return;
            }
            case 22: {
                this.getNmNodes().clear();
                this.getNmNodes().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.setNmSynchronizingNetwork((Boolean)newValue);
                return;
            }
            case 24: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setNmConfig(null);
                return;
            }
            case 19: {
                this.setCommunicationCluster(null);
                return;
            }
            case 20: {
                this.unsetNmChannelId();
                return;
            }
            case 21: {
                this.unsetNmChannelSleepMaster();
                return;
            }
            case 22: {
                this.getNmNodes().clear();
                return;
            }
            case 23: {
                this.unsetNmSynchronizingNetwork();
                return;
            }
            case 24: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getNmConfig() != null;
            }
            case 19: {
                return this.communicationCluster != null;
            }
            case 20: {
                return this.isSetNmChannelId();
            }
            case 21: {
                return this.isSetNmChannelSleepMaster();
            }
            case 22: {
                return this.nmNodes != null && !this.nmNodes.isEmpty();
            }
            case 23: {
                return this.isSetNmSynchronizingNetwork();
            }
            case 24: {
                return this.variationPoint != null;
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
        result.append(" (nmChannelId: ");
        if (this.nmChannelIdESet) {
            result.append(this.nmChannelId);
        } else {
            result.append("<unset>");
        }
        result.append(", nmChannelSleepMaster: ");
        if (this.nmChannelSleepMasterESet) {
            result.append(this.nmChannelSleepMaster);
        } else {
            result.append("<unset>");
        }
        result.append(", nmSynchronizingNetwork: ");
        if (this.nmSynchronizingNetworkESet) {
            result.append(this.nmSynchronizingNetwork);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

