/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
package autosar3x.system.fibex.fibexcore.coretopology.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TpChannel;
import autosar3x.system.transportprotocols.TpNode;
import java.util.Collection;
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
public class PhysicalChannelImpl
extends IdentifiableImpl
implements PhysicalChannel {
    protected EList<FrameTriggering> frameTriggerings;
    protected EList<IPduTriggering> iPduTriggerings;
    protected EList<ISignalTriggering> iSignalTriggerings;
    protected EList<TpAddress> tpAddress;
    protected EList<TpChannel> tpChannels;
    protected EList<TpNode> tpNodes;

    protected PhysicalChannelImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.PHYSICAL_CHANNEL;
    }

    @Override
    public CommunicationCluster getCommunicationCluster() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (CommunicationCluster)this.eContainer();
    }

    public NotificationChain basicSetCommunicationCluster(CommunicationCluster newCommunicationCluster, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationCluster, 17, msgs);
        return msgs;
    }

    @Override
    public void setCommunicationCluster(CommunicationCluster newCommunicationCluster) {
        if (newCommunicationCluster != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newCommunicationCluster != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationCluster)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationCluster != null) {
                msgs = ((InternalEObject)newCommunicationCluster).eInverseAdd((InternalEObject)this, 23, CommunicationCluster.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationCluster(newCommunicationCluster, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newCommunicationCluster, (Object)newCommunicationCluster));
        }
    }

    @Override
    public EList<FrameTriggering> getFrameTriggerings() {
        if (this.frameTriggerings == null) {
            this.frameTriggerings = new EObjectContainmentWithInverseEList(FrameTriggering.class, (InternalEObject)this, 18, 17);
        }
        return this.frameTriggerings;
    }

    @Override
    public EList<IPduTriggering> getIPduTriggerings() {
        if (this.iPduTriggerings == null) {
            this.iPduTriggerings = new EObjectContainmentWithInverseEList(IPduTriggering.class, (InternalEObject)this, 19, 17);
        }
        return this.iPduTriggerings;
    }

    @Override
    public EList<ISignalTriggering> getISignalTriggerings() {
        if (this.iSignalTriggerings == null) {
            this.iSignalTriggerings = new EObjectContainmentWithInverseEList(ISignalTriggering.class, (InternalEObject)this, 20, 17);
        }
        return this.iSignalTriggerings;
    }

    @Override
    public EList<TpAddress> getTpAddress() {
        if (this.tpAddress == null) {
            this.tpAddress = new EObjectContainmentWithInverseEList(TpAddress.class, (InternalEObject)this, 21, 17);
        }
        return this.tpAddress;
    }

    @Override
    public EList<TpChannel> getTpChannels() {
        if (this.tpChannels == null) {
            this.tpChannels = new EObjectContainmentWithInverseEList(TpChannel.class, (InternalEObject)this, 22, 4);
        }
        return this.tpChannels;
    }

    @Override
    public EList<TpNode> getTpNodes() {
        if (this.tpNodes == null) {
            this.tpNodes = new EObjectContainmentWithInverseEList(TpNode.class, (InternalEObject)this, 23, 17);
        }
        return this.tpNodes;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationCluster((CommunicationCluster)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getFrameTriggerings()).basicAdd((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getIPduTriggerings()).basicAdd((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getISignalTriggerings()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getTpAddress()).basicAdd((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getTpChannels()).basicAdd((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getTpNodes()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetCommunicationCluster(null, msgs);
            }
            case 18: {
                return ((InternalEList)this.getFrameTriggerings()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getIPduTriggerings()).basicRemove((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getISignalTriggerings()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getTpAddress()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getTpChannels()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getTpNodes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, CommunicationCluster.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getCommunicationCluster();
            }
            case 18: {
                return this.getFrameTriggerings();
            }
            case 19: {
                return this.getIPduTriggerings();
            }
            case 20: {
                return this.getISignalTriggerings();
            }
            case 21: {
                return this.getTpAddress();
            }
            case 22: {
                return this.getTpChannels();
            }
            case 23: {
                return this.getTpNodes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setCommunicationCluster((CommunicationCluster)newValue);
                return;
            }
            case 18: {
                this.getFrameTriggerings().clear();
                this.getFrameTriggerings().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getIPduTriggerings().clear();
                this.getIPduTriggerings().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getISignalTriggerings().clear();
                this.getISignalTriggerings().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getTpAddress().clear();
                this.getTpAddress().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getTpChannels().clear();
                this.getTpChannels().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getTpNodes().clear();
                this.getTpNodes().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setCommunicationCluster(null);
                return;
            }
            case 18: {
                this.getFrameTriggerings().clear();
                return;
            }
            case 19: {
                this.getIPduTriggerings().clear();
                return;
            }
            case 20: {
                this.getISignalTriggerings().clear();
                return;
            }
            case 21: {
                this.getTpAddress().clear();
                return;
            }
            case 22: {
                this.getTpChannels().clear();
                return;
            }
            case 23: {
                this.getTpNodes().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getCommunicationCluster() != null;
            }
            case 18: {
                return this.frameTriggerings != null && !this.frameTriggerings.isEmpty();
            }
            case 19: {
                return this.iPduTriggerings != null && !this.iPduTriggerings.isEmpty();
            }
            case 20: {
                return this.iSignalTriggerings != null && !this.iSignalTriggerings.isEmpty();
            }
            case 21: {
                return this.tpAddress != null && !this.tpAddress.isEmpty();
            }
            case 22: {
                return this.tpChannels != null && !this.tpChannels.isEmpty();
            }
            case 23: {
                return this.tpNodes != null && !this.tpNodes.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

