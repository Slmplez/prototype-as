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
import autosar21.swcomponent.datatype.computationmethod.CompuProgCode;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar21.swcomponent.datatype.computationmethod.ProgCode;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ProgCodeImpl
extends ARObjectImpl
implements ProgCode {
    protected ProgCodeImpl() {
    }

    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.PROG_CODE;
    }

    public CompuProgCode getCompuProgCode() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CompuProgCode)this.eContainer();
    }

    public NotificationChain basicSetCompuProgCode(CompuProgCode newCompuProgCode, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCompuProgCode, 4, msgs);
        return msgs;
    }

    public void setCompuProgCode(CompuProgCode newCompuProgCode) {
        if (newCompuProgCode != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCompuProgCode != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCompuProgCode)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCompuProgCode != null) {
                msgs = ((InternalEObject)newCompuProgCode).eInverseAdd((InternalEObject)this, 5, CompuProgCode.class, msgs);
            }
            if ((msgs = this.basicSetCompuProgCode(newCompuProgCode, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCompuProgCode, (Object)newCompuProgCode));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCompuProgCode((CompuProgCode)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCompuProgCode(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, CompuProgCode.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCompuProgCode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCompuProgCode((CompuProgCode)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCompuProgCode(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCompuProgCode() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

