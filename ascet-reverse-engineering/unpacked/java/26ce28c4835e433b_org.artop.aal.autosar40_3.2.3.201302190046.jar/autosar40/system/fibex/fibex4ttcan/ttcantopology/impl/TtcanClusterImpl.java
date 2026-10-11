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
package autosar40.system.fibex.fibex4ttcan.ttcantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanClusterImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCluster;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanClusterConditional;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
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
public class TtcanClusterImpl
extends AbstractCanClusterImpl
implements TtcanCluster {
    protected EList<TtcanClusterConditional> ttcanClusterVariants;

    protected TtcanClusterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TtcantopologyPackage.Literals.TTCAN_CLUSTER;
    }

    @Override
    public EList<TtcanClusterConditional> getTtcanClusterVariants() {
        if (this.ttcanClusterVariants == null) {
            this.ttcanClusterVariants = new EObjectContainmentWithInverseEList(TtcanClusterConditional.class, (InternalEObject)this, 21, 11);
        }
        return this.ttcanClusterVariants;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getTtcanClusterVariants()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getTtcanClusterVariants()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getTtcanClusterVariants();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getTtcanClusterVariants().clear();
                this.getTtcanClusterVariants().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getTtcanClusterVariants().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.ttcanClusterVariants != null && !this.ttcanClusterVariants.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

