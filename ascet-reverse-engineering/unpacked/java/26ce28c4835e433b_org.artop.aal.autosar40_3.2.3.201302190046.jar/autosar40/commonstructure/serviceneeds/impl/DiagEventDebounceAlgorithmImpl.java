/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.DiagEventDebounceAlgorithm;
import autosar40.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class DiagEventDebounceAlgorithmImpl
extends IdentifiableImpl
implements DiagEventDebounceAlgorithm {
    protected DiagEventDebounceAlgorithmImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAG_EVENT_DEBOUNCE_ALGORITHM;
    }

    public DiagnosticEventNeeds getDiagnosticEventNeeds() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (DiagnosticEventNeeds)this.eContainer();
    }

    public NotificationChain basicSetDiagnosticEventNeeds(DiagnosticEventNeeds newDiagnosticEventNeeds, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDiagnosticEventNeeds, 18, msgs);
        return msgs;
    }

    public void setDiagnosticEventNeeds(DiagnosticEventNeeds newDiagnosticEventNeeds) {
        if (newDiagnosticEventNeeds != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newDiagnosticEventNeeds != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDiagnosticEventNeeds)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDiagnosticEventNeeds != null) {
                msgs = ((InternalEObject)newDiagnosticEventNeeds).eInverseAdd((InternalEObject)this, 22, DiagnosticEventNeeds.class, msgs);
            }
            if ((msgs = this.basicSetDiagnosticEventNeeds(newDiagnosticEventNeeds, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newDiagnosticEventNeeds, (Object)newDiagnosticEventNeeds));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDiagnosticEventNeeds((DiagnosticEventNeeds)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetDiagnosticEventNeeds(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, DiagnosticEventNeeds.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getDiagnosticEventNeeds();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setDiagnosticEventNeeds((DiagnosticEventNeeds)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setDiagnosticEventNeeds(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getDiagnosticEventNeeds() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

