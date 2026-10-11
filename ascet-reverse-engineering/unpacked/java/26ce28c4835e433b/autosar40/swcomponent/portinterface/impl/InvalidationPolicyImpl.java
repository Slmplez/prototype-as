/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.communication.HandleInvalidEnum;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.portinterface.InvalidationPolicy;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.SenderReceiverInterface;
import java.util.Map;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
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
public class InvalidationPolicyImpl
extends ARObjectImpl
implements InvalidationPolicy,
IReferringClass {
    protected VariableDataPrototype dataElement;
    protected static final HandleInvalidEnum HANDLE_INVALID_EDEFAULT = HandleInvalidEnum.KEEP;
    protected HandleInvalidEnum handleInvalid = HANDLE_INVALID_EDEFAULT;
    protected boolean handleInvalidESet;

    protected InvalidationPolicyImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.INVALIDATION_POLICY;
    }

    @Override
    public SenderReceiverInterface getSenderReceiverInterface() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SenderReceiverInterface)this.eContainer();
    }

    public NotificationChain basicSetSenderReceiverInterface(SenderReceiverInterface newSenderReceiverInterface, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSenderReceiverInterface, 4, msgs);
        return msgs;
    }

    @Override
    public void setSenderReceiverInterface(SenderReceiverInterface newSenderReceiverInterface) {
        if (newSenderReceiverInterface != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSenderReceiverInterface != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSenderReceiverInterface)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSenderReceiverInterface != null) {
                msgs = ((InternalEObject)newSenderReceiverInterface).eInverseAdd((InternalEObject)this, 27, SenderReceiverInterface.class, msgs);
            }
            if ((msgs = this.basicSetSenderReceiverInterface(newSenderReceiverInterface, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSenderReceiverInterface, (Object)newSenderReceiverInterface));
        }
    }

    @Override
    public VariableDataPrototype getDataElement() {
        if (this.dataElement != null && this.dataElement.eIsProxy()) {
            InternalEObject oldDataElement = (InternalEObject)this.dataElement;
            this.dataElement = (VariableDataPrototype)this.eResolveProxy(oldDataElement);
            if (this.dataElement != oldDataElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldDataElement, (Object)this.dataElement));
            }
        }
        return this.dataElement;
    }

    public VariableDataPrototype basicGetDataElement() {
        return this.dataElement;
    }

    @Override
    public void setDataElement(VariableDataPrototype newDataElement) {
        VariableDataPrototype oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDataElement, (Object)this.dataElement));
        }
    }

    @Override
    public HandleInvalidEnum getHandleInvalid() {
        return this.handleInvalid;
    }

    @Override
    public void setHandleInvalid(HandleInvalidEnum newHandleInvalid) {
        HandleInvalidEnum oldHandleInvalid = this.handleInvalid;
        this.handleInvalid = newHandleInvalid == null ? HANDLE_INVALID_EDEFAULT : newHandleInvalid;
        boolean oldHandleInvalidESet = this.handleInvalidESet;
        this.handleInvalidESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldHandleInvalid, (Object)this.handleInvalid, !oldHandleInvalidESet));
        }
    }

    @Override
    public void unsetHandleInvalid() {
        HandleInvalidEnum oldHandleInvalid = this.handleInvalid;
        boolean oldHandleInvalidESet = this.handleInvalidESet;
        this.handleInvalid = HANDLE_INVALID_EDEFAULT;
        this.handleInvalidESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldHandleInvalid, (Object)HANDLE_INVALID_EDEFAULT, oldHandleInvalidESet));
        }
    }

    @Override
    public boolean isSetHandleInvalid() {
        return this.handleInvalidESet;
    }

    @Override
    public boolean atleastonedataelementormodegroup(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSenderReceiverInterface((SenderReceiverInterface)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSenderReceiverInterface(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 27, SenderReceiverInterface.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSenderReceiverInterface();
            }
            case 5: {
                if (resolve) {
                    return this.getDataElement();
                }
                return this.basicGetDataElement();
            }
            case 6: {
                return this.getHandleInvalid();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSenderReceiverInterface((SenderReceiverInterface)newValue);
                return;
            }
            case 5: {
                this.setDataElement((VariableDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setHandleInvalid((HandleInvalidEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSenderReceiverInterface(null);
                return;
            }
            case 5: {
                this.setDataElement(null);
                return;
            }
            case 6: {
                this.unsetHandleInvalid();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSenderReceiverInterface() != null;
            }
            case 5: {
                return this.dataElement != null;
            }
            case 6: {
                return this.isSetHandleInvalid();
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (handleInvalid: ");
        if (this.handleInvalidESet) {
            result.append((Object)this.handleInvalid);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

