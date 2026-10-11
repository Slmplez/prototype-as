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

import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanCommunicationControllerImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationController;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationControllerConditional;
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
public class TtcanCommunicationControllerImpl
extends AbstractCanCommunicationControllerImpl
implements TtcanCommunicationController {
    protected EList<TtcanCommunicationControllerConditional> ttcanCommunicationControllerVariants;

    protected TtcanCommunicationControllerImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TtcantopologyPackage.Literals.TTCAN_COMMUNICATION_CONTROLLER;
    }

    @Override
    public EList<TtcanCommunicationControllerConditional> getTtcanCommunicationControllerVariants() {
        if (this.ttcanCommunicationControllerVariants == null) {
            this.ttcanCommunicationControllerVariants = new EObjectContainmentWithInverseEList(TtcanCommunicationControllerConditional.class, (InternalEObject)this, 19, 13);
        }
        return this.ttcanCommunicationControllerVariants;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getTtcanCommunicationControllerVariants()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getTtcanCommunicationControllerVariants()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getTtcanCommunicationControllerVariants();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getTtcanCommunicationControllerVariants().clear();
                this.getTtcanCommunicationControllerVariants().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getTtcanCommunicationControllerVariants().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.ttcanCommunicationControllerVariants != null && !this.ttcanCommunicationControllerVariants.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

