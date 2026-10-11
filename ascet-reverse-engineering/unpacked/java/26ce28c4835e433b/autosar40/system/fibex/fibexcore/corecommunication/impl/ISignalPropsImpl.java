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
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.communication.HandleOutOfRangeEnum;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalProps;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ISignalPropsImpl
extends ARObjectImpl
implements ISignalProps {
    protected static final HandleOutOfRangeEnum HANDLE_OUT_OF_RANGE_EDEFAULT = HandleOutOfRangeEnum.NONE;
    protected HandleOutOfRangeEnum handleOutOfRange = HANDLE_OUT_OF_RANGE_EDEFAULT;
    protected boolean handleOutOfRangeESet;

    protected ISignalPropsImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ISIGNAL_PROPS;
    }

    public ISignal getISignal() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ISignal)this.eContainer();
    }

    public NotificationChain basicSetISignal(ISignal newISignal, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newISignal, 4, msgs);
        return msgs;
    }

    public void setISignal(ISignal newISignal) {
        if (newISignal != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newISignal != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newISignal)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newISignal != null) {
                msgs = ((InternalEObject)newISignal).eInverseAdd((InternalEObject)this, 22, ISignal.class, msgs);
            }
            if ((msgs = this.basicSetISignal(newISignal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newISignal, (Object)newISignal));
        }
    }

    public HandleOutOfRangeEnum getHandleOutOfRange() {
        return this.handleOutOfRange;
    }

    public void setHandleOutOfRange(HandleOutOfRangeEnum newHandleOutOfRange) {
        HandleOutOfRangeEnum oldHandleOutOfRange = this.handleOutOfRange;
        this.handleOutOfRange = newHandleOutOfRange == null ? HANDLE_OUT_OF_RANGE_EDEFAULT : newHandleOutOfRange;
        boolean oldHandleOutOfRangeESet = this.handleOutOfRangeESet;
        this.handleOutOfRangeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldHandleOutOfRange, (Object)this.handleOutOfRange, !oldHandleOutOfRangeESet));
        }
    }

    public void unsetHandleOutOfRange() {
        HandleOutOfRangeEnum oldHandleOutOfRange = this.handleOutOfRange;
        boolean oldHandleOutOfRangeESet = this.handleOutOfRangeESet;
        this.handleOutOfRange = HANDLE_OUT_OF_RANGE_EDEFAULT;
        this.handleOutOfRangeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldHandleOutOfRange, (Object)HANDLE_OUT_OF_RANGE_EDEFAULT, oldHandleOutOfRangeESet));
        }
    }

    public boolean isSetHandleOutOfRange() {
        return this.handleOutOfRangeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetISignal((ISignal)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetISignal(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, ISignal.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getISignal();
            }
            case 5: {
                return this.getHandleOutOfRange();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setISignal((ISignal)newValue);
                return;
            }
            case 5: {
                this.setHandleOutOfRange((HandleOutOfRangeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setISignal(null);
                return;
            }
            case 5: {
                this.unsetHandleOutOfRange();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getISignal() != null;
            }
            case 5: {
                return this.isSetHandleOutOfRange();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (handleOutOfRange: ");
        if (this.handleOutOfRangeESet) {
            result.append((Object)this.handleOutOfRange);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

