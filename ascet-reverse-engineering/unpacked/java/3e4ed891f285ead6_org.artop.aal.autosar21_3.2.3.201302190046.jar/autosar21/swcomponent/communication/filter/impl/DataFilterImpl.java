/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.communication.filter.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.communication.ReceiverComSpec;
import autosar21.swcomponent.communication.filter.DataFilter;
import autosar21.swcomponent.communication.filter.FilterPackage;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class DataFilterImpl
extends ARObjectImpl
implements DataFilter {
    protected DataFilterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FilterPackage.Literals.DATA_FILTER;
    }

    @Override
    public ReceiverComSpec getReceiverComSpec() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ReceiverComSpec)this.eContainer();
    }

    public NotificationChain basicSetReceiverComSpec(ReceiverComSpec newReceiverComSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newReceiverComSpec, 4, msgs);
        return msgs;
    }

    @Override
    public void setReceiverComSpec(ReceiverComSpec newReceiverComSpec) {
        if (newReceiverComSpec != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newReceiverComSpec != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newReceiverComSpec)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newReceiverComSpec != null) {
                msgs = ((InternalEObject)newReceiverComSpec).eInverseAdd((InternalEObject)this, 7, ReceiverComSpec.class, msgs);
            }
            if ((msgs = this.basicSetReceiverComSpec(newReceiverComSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newReceiverComSpec, (Object)newReceiverComSpec));
        }
    }

    @Override
    public boolean mask0(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean Periodgreater0(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetReceiverComSpec((ReceiverComSpec)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetReceiverComSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, ReceiverComSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getReceiverComSpec();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setReceiverComSpec((ReceiverComSpec)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setReceiverComSpec(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getReceiverComSpec() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

