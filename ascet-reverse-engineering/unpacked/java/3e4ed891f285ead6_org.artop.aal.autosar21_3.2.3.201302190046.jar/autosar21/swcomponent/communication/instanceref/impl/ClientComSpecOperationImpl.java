/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.communication.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.communication.ClientComSpec;
import autosar21.swcomponent.communication.instanceref.ClientComSpecOperation;
import autosar21.swcomponent.communication.instanceref.InstancerefPackage;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ClientComSpecOperationImpl
extends ARObjectImpl
implements ClientComSpecOperation,
IReferringClass {
    protected RPortPrototype rPortPrototype;
    protected OperationPrototype operationPrototype;

    protected ClientComSpecOperationImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.CLIENT_COM_SPEC_OPERATION;
    }

    public ClientComSpec getClientComSpec() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ClientComSpec)this.eContainer();
    }

    public NotificationChain basicSetClientComSpec(ClientComSpec newClientComSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientComSpec, 4, msgs);
        return msgs;
    }

    public void setClientComSpec(ClientComSpec newClientComSpec) {
        if (newClientComSpec != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newClientComSpec != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientComSpec)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientComSpec != null) {
                msgs = ((InternalEObject)newClientComSpec).eInverseAdd((InternalEObject)this, 6, ClientComSpec.class, msgs);
            }
            if ((msgs = this.basicSetClientComSpec(newClientComSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClientComSpec, (Object)newClientComSpec));
        }
    }

    public RPortPrototype getRPortPrototype() {
        if (this.rPortPrototype != null && this.rPortPrototype.eIsProxy()) {
            InternalEObject oldRPortPrototype = (InternalEObject)this.rPortPrototype;
            this.rPortPrototype = (RPortPrototype)this.eResolveProxy(oldRPortPrototype);
            if (this.rPortPrototype != oldRPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
            }
        }
        return this.rPortPrototype;
    }

    public RPortPrototype basicGetRPortPrototype() {
        return this.rPortPrototype;
    }

    public void setRPortPrototype(RPortPrototype newRPortPrototype) {
        RPortPrototype oldRPortPrototype = this.rPortPrototype;
        this.rPortPrototype = newRPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
        }
    }

    public OperationPrototype getOperationPrototype() {
        if (this.operationPrototype != null && this.operationPrototype.eIsProxy()) {
            InternalEObject oldOperationPrototype = (InternalEObject)this.operationPrototype;
            this.operationPrototype = (OperationPrototype)this.eResolveProxy(oldOperationPrototype);
            if (this.operationPrototype != oldOperationPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldOperationPrototype, (Object)this.operationPrototype));
            }
        }
        return this.operationPrototype;
    }

    public OperationPrototype basicGetOperationPrototype() {
        return this.operationPrototype;
    }

    public void setOperationPrototype(OperationPrototype newOperationPrototype) {
        OperationPrototype oldOperationPrototype = this.operationPrototype;
        this.operationPrototype = newOperationPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldOperationPrototype, (Object)this.operationPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClientComSpec((ClientComSpec)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClientComSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, ClientComSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClientComSpec();
            }
            case 5: {
                if (resolve) {
                    return this.getRPortPrototype();
                }
                return this.basicGetRPortPrototype();
            }
            case 6: {
                if (resolve) {
                    return this.getOperationPrototype();
                }
                return this.basicGetOperationPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setClientComSpec((ClientComSpec)newValue);
                return;
            }
            case 5: {
                this.setRPortPrototype((RPortPrototype)newValue);
                return;
            }
            case 6: {
                this.setOperationPrototype((OperationPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClientComSpec(null);
                return;
            }
            case 5: {
                this.setRPortPrototype(null);
                return;
            }
            case 6: {
                this.setOperationPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClientComSpec() != null;
            }
            case 5: {
                return this.rPortPrototype != null;
            }
            case 6: {
                return this.operationPrototype != null;
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
}

