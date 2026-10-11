/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.topology.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.system.topology.CommunicationCluster;
import autosar21.system.topology.SystemTopologyType;
import autosar21.system.topology.TopologyElement;
import autosar21.system.topology.TopologyPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemTopologyTypeImpl
extends ARElementImpl
implements SystemTopologyType {
    protected EList<CommunicationCluster> communicationClusters;
    protected EList<TopologyElement> topologyElements;

    protected SystemTopologyTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TopologyPackage.Literals.SYSTEM_TOPOLOGY_TYPE;
    }

    @Override
    public EList<CommunicationCluster> getCommunicationClusters() {
        if (this.communicationClusters == null) {
            this.communicationClusters = new EObjectContainmentWithInverseEList(CommunicationCluster.class, (InternalEObject)this, 18, 16);
        }
        return this.communicationClusters;
    }

    @Override
    public EList<TopologyElement> getTopologyElements() {
        if (this.topologyElements == null) {
            this.topologyElements = new EObjectContainmentWithInverseEList(TopologyElement.class, (InternalEObject)this, 19, 16);
        }
        return this.topologyElements;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getCommunicationClusters()).basicAdd((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getTopologyElements()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getCommunicationClusters()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getTopologyElements()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getCommunicationClusters();
            }
            case 19: {
                return this.getTopologyElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.getCommunicationClusters().clear();
                this.getCommunicationClusters().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getTopologyElements().clear();
                this.getTopologyElements().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.getCommunicationClusters().clear();
                return;
            }
            case 19: {
                this.getTopologyElements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.communicationClusters != null && !this.communicationClusters.isEmpty();
            }
            case 19: {
                return this.topologyElements != null && !this.topologyElements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

