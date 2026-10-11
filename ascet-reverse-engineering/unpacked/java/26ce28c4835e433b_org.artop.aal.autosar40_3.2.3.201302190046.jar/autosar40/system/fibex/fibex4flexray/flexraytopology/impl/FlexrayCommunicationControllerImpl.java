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

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationControllerImpl;
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
public class FlexrayCommunicationControllerImpl
extends CommunicationControllerImpl
implements FlexrayCommunicationController {
    protected EList<FlexrayCommunicationControllerConditional> flexrayCommunicationControllerVariants;

    protected FlexrayCommunicationControllerImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_COMMUNICATION_CONTROLLER;
    }

    @Override
    public EList<FlexrayCommunicationControllerConditional> getFlexrayCommunicationControllerVariants() {
        if (this.flexrayCommunicationControllerVariants == null) {
            this.flexrayCommunicationControllerVariants = new EObjectContainmentWithInverseEList(FlexrayCommunicationControllerConditional.class, (InternalEObject)this, 19, 36);
        }
        return this.flexrayCommunicationControllerVariants;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getFlexrayCommunicationControllerVariants()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getFlexrayCommunicationControllerVariants()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getFlexrayCommunicationControllerVariants();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getFlexrayCommunicationControllerVariants().clear();
                this.getFlexrayCommunicationControllerVariants().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getFlexrayCommunicationControllerVariants().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.flexrayCommunicationControllerVariants != null && !this.flexrayCommunicationControllerVariants.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

