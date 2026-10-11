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
package autosar21.swcomponent.datatype.computationmethod.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.datatype.computationmethod.CompuScale;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleContents;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class CompuScaleContentsImpl
extends ARObjectImpl
implements CompuScaleContents {
    protected CompuScaleContentsImpl() {
    }

    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_SCALE_CONTENTS;
    }

    public CompuScale getCompuScale() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CompuScale)this.eContainer();
    }

    public NotificationChain basicSetCompuScale(CompuScale newCompuScale, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCompuScale, 4, msgs);
        return msgs;
    }

    public void setCompuScale(CompuScale newCompuScale) {
        if (newCompuScale != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCompuScale != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCompuScale)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCompuScale != null) {
                msgs = ((InternalEObject)newCompuScale).eInverseAdd((InternalEObject)this, 13, CompuScale.class, msgs);
            }
            if ((msgs = this.basicSetCompuScale(newCompuScale, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCompuScale, (Object)newCompuScale));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCompuScale((CompuScale)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCompuScale(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 13, CompuScale.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCompuScale();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCompuScale((CompuScale)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCompuScale(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCompuScale() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

