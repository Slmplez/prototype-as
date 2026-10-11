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
package autosar21.system.topology.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.topology.CommunicationCluster;
import autosar21.system.topology.PhysicalChannel;
import autosar21.system.topology.PhysicalMediumSegment;
import autosar21.system.topology.TopologyPackage;
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
    protected EList<PhysicalMediumSegment> physicalSegments;

    protected PhysicalChannelImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TopologyPackage.Literals.PHYSICAL_CHANNEL;
    }

    @Override
    public CommunicationCluster getCommunicationCluster() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (CommunicationCluster)this.eContainer();
    }

    public NotificationChain basicSetCommunicationCluster(CommunicationCluster newCommunicationCluster, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationCluster, 16, msgs);
        return msgs;
    }

    @Override
    public void setCommunicationCluster(CommunicationCluster newCommunicationCluster) {
        if (newCommunicationCluster != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newCommunicationCluster != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationCluster)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationCluster != null) {
                msgs = ((InternalEObject)newCommunicationCluster).eInverseAdd((InternalEObject)this, 18, CommunicationCluster.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationCluster(newCommunicationCluster, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newCommunicationCluster, (Object)newCommunicationCluster));
        }
    }

    @Override
    public EList<PhysicalMediumSegment> getPhysicalSegments() {
        if (this.physicalSegments == null) {
            this.physicalSegments = new EObjectContainmentWithInverseEList(PhysicalMediumSegment.class, (InternalEObject)this, 17, 4);
        }
        return this.physicalSegments;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationCluster((CommunicationCluster)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getPhysicalSegments()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetCommunicationCluster(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getPhysicalSegments()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, CommunicationCluster.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getCommunicationCluster();
            }
            case 17: {
                return this.getPhysicalSegments();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setCommunicationCluster((CommunicationCluster)newValue);
                return;
            }
            case 17: {
                this.getPhysicalSegments().clear();
                this.getPhysicalSegments().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setCommunicationCluster(null);
                return;
            }
            case 17: {
                this.getPhysicalSegments().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getCommunicationCluster() != null;
            }
            case 17: {
                return this.physicalSegments != null && !this.physicalSegments.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

