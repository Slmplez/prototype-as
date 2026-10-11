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
package autosar40.system.fibex.fibex4lin.lintopology.impl;

import autosar40.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlaveConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinCommunicationControllerImpl;
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
public class LinSlaveImpl
extends LinCommunicationControllerImpl
implements LinSlave {
    protected EList<LinSlaveConditional> linSlaveVariants;

    protected LinSlaveImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_SLAVE;
    }

    @Override
    public EList<LinSlaveConditional> getLinSlaveVariants() {
        if (this.linSlaveVariants == null) {
            this.linSlaveVariants = new EObjectContainmentWithInverseEList(LinSlaveConditional.class, (InternalEObject)this, 19, 10);
        }
        return this.linSlaveVariants;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getLinSlaveVariants()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getLinSlaveVariants()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getLinSlaveVariants();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getLinSlaveVariants().clear();
                this.getLinSlaveVariants().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getLinSlaveVariants().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.linSlaveVariants != null && !this.linSlaveVariants.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

