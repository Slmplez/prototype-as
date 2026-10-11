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
package autosar40.system.networkmanagement.impl;

import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.NmCluster;
import autosar40.system.networkmanagement.NmClusterCoupling;
import autosar40.system.networkmanagement.NmConfig;
import autosar40.system.networkmanagement.NmEcu;
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
public class NmConfigImpl
extends FibexElementImpl
implements NmConfig {
    protected EList<NmCluster> nmClusters;
    protected EList<NmClusterCoupling> nmClusterCouplings;
    protected EList<NmEcu> nmIfEcus;

    protected NmConfigImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.NM_CONFIG;
    }

    @Override
    public EList<NmCluster> getNmClusters() {
        if (this.nmClusters == null) {
            this.nmClusters = new EObjectContainmentWithInverseEList(NmCluster.class, (InternalEObject)this, 21, 18);
        }
        return this.nmClusters;
    }

    @Override
    public EList<NmClusterCoupling> getNmClusterCouplings() {
        if (this.nmClusterCouplings == null) {
            this.nmClusterCouplings = new EObjectContainmentWithInverseEList(NmClusterCoupling.class, (InternalEObject)this, 22, 4);
        }
        return this.nmClusterCouplings;
    }

    @Override
    public EList<NmEcu> getNmIfEcus() {
        if (this.nmIfEcus == null) {
            this.nmIfEcus = new EObjectContainmentWithInverseEList(NmEcu.class, (InternalEObject)this, 23, 18);
        }
        return this.nmIfEcus;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getNmClusters()).basicAdd((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getNmClusterCouplings()).basicAdd((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getNmIfEcus()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getNmClusters()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getNmClusterCouplings()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getNmIfEcus()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getNmClusters();
            }
            case 22: {
                return this.getNmClusterCouplings();
            }
            case 23: {
                return this.getNmIfEcus();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getNmClusters().clear();
                this.getNmClusters().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getNmClusterCouplings().clear();
                this.getNmClusterCouplings().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getNmIfEcus().clear();
                this.getNmIfEcus().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getNmClusters().clear();
                return;
            }
            case 22: {
                this.getNmClusterCouplings().clear();
                return;
            }
            case 23: {
                this.getNmIfEcus().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.nmClusters != null && !this.nmClusters.isEmpty();
            }
            case 22: {
                return this.nmClusterCouplings != null && !this.nmClusterCouplings.isEmpty();
            }
            case 23: {
                return this.nmIfEcus != null && !this.nmIfEcus.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

