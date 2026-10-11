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
package autosar40.swcomponent.datatype.computationmethod.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.computationmethod.Compu;
import autosar40.swcomponent.datatype.computationmethod.CompuContent;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class CompuContentImpl
extends ARObjectImpl
implements CompuContent {
    protected CompuContentImpl() {
    }

    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_CONTENT;
    }

    public Compu getCompu() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Compu)this.eContainer();
    }

    public NotificationChain basicSetCompu(Compu newCompu, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCompu, 4, msgs);
        return msgs;
    }

    public void setCompu(Compu newCompu) {
        if (newCompu != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCompu != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCompu)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCompu != null) {
                msgs = ((InternalEObject)newCompu).eInverseAdd((InternalEObject)this, 5, Compu.class, msgs);
            }
            if ((msgs = this.basicSetCompu(newCompu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCompu, (Object)newCompu));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCompu((Compu)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCompu(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, Compu.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCompu();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCompu((Compu)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCompu(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCompu() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

