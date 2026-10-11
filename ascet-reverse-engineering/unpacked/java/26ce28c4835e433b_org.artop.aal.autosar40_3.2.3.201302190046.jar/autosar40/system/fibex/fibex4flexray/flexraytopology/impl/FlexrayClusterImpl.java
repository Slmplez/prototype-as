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
package autosar40.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayClusterConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationClusterImpl;
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
public class FlexrayClusterImpl
extends CommunicationClusterImpl
implements FlexrayCluster {
    protected EList<FlexrayClusterConditional> flexrayClusterVariants;

    protected FlexrayClusterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_CLUSTER;
    }

    @Override
    public EList<FlexrayClusterConditional> getFlexrayClusterVariants() {
        if (this.flexrayClusterVariants == null) {
            this.flexrayClusterVariants = new EObjectContainmentWithInverseEList(FlexrayClusterConditional.class, (InternalEObject)this, 21, 42);
        }
        return this.flexrayClusterVariants;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getFlexrayClusterVariants()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getFlexrayClusterVariants()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getFlexrayClusterVariants();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getFlexrayClusterVariants().clear();
                this.getFlexrayClusterVariants().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getFlexrayClusterVariants().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.flexrayClusterVariants != null && !this.flexrayClusterVariants.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

