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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalValue;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class PrmCharNumericalValueImpl
extends ARObjectImpl
implements PrmCharNumericalValue {
    protected PrmCharNumericalValueImpl() {
    }

    protected EClass eStaticClass() {
        return GerneralparametersPackage.Literals.PRM_CHAR_NUMERICAL_VALUE;
    }

    public PrmCharNumericalContents getPrmCharNumericalContents() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PrmCharNumericalContents)this.eContainer();
    }

    public NotificationChain basicSetPrmCharNumericalContents(PrmCharNumericalContents newPrmCharNumericalContents, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPrmCharNumericalContents, 4, msgs);
        return msgs;
    }

    public void setPrmCharNumericalContents(PrmCharNumericalContents newPrmCharNumericalContents) {
        if (newPrmCharNumericalContents != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPrmCharNumericalContents != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPrmCharNumericalContents)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPrmCharNumericalContents != null) {
                msgs = ((InternalEObject)newPrmCharNumericalContents).eInverseAdd((InternalEObject)this, 5, PrmCharNumericalContents.class, msgs);
            }
            if ((msgs = this.basicSetPrmCharNumericalContents(newPrmCharNumericalContents, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPrmCharNumericalContents, (Object)newPrmCharNumericalContents));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPrmCharNumericalContents((PrmCharNumericalContents)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPrmCharNumericalContents(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, PrmCharNumericalContents.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPrmCharNumericalContents();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPrmCharNumericalContents((PrmCharNumericalContents)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPrmCharNumericalContents(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPrmCharNumericalContents() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

