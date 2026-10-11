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
package autosar40.system.fibex.fibex4ethernet.ethernettopology.impl;

import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationController;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationControllerConditional;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
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
public class EthernetCommunicationControllerImpl
extends CommunicationControllerImpl
implements EthernetCommunicationController {
    protected EList<EthernetCommunicationControllerConditional> ethernetCommunicationControllerVariants;

    protected EthernetCommunicationControllerImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EthernettopologyPackage.Literals.ETHERNET_COMMUNICATION_CONTROLLER;
    }

    @Override
    public EList<EthernetCommunicationControllerConditional> getEthernetCommunicationControllerVariants() {
        if (this.ethernetCommunicationControllerVariants == null) {
            this.ethernetCommunicationControllerVariants = new EObjectContainmentWithInverseEList(EthernetCommunicationControllerConditional.class, (InternalEObject)this, 19, 6);
        }
        return this.ethernetCommunicationControllerVariants;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getEthernetCommunicationControllerVariants()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getEthernetCommunicationControllerVariants()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getEthernetCommunicationControllerVariants();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getEthernetCommunicationControllerVariants().clear();
                this.getEthernetCommunicationControllerVariants().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getEthernetCommunicationControllerVariants().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.ethernetCommunicationControllerVariants != null && !this.ethernetCommunicationControllerVariants.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

