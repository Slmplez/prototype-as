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
import autosar21.swcomponent.communication.ClientServerConnectorComSpec;
import autosar21.swcomponent.communication.instanceref.ClientServerConnectorComSpecOperation;
import autosar21.swcomponent.communication.instanceref.InstancerefPackage;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
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

public class ClientServerConnectorComSpecOperationImpl
extends ARObjectImpl
implements ClientServerConnectorComSpecOperation,
IReferringClass {
    protected ComponentPrototype componentPrototype;
    protected RPortPrototype rPortPrototype;
    protected OperationPrototype operationPrototype;

    protected ClientServerConnectorComSpecOperationImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.CLIENT_SERVER_CONNECTOR_COM_SPEC_OPERATION;
    }

    public ClientServerConnectorComSpec getClientServerConnectorComSpec() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ClientServerConnectorComSpec)this.eContainer();
    }

    public NotificationChain basicSetClientServerConnectorComSpec(ClientServerConnectorComSpec newClientServerConnectorComSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientServerConnectorComSpec, 4, msgs);
        return msgs;
    }

    public void setClientServerConnectorComSpec(ClientServerConnectorComSpec newClientServerConnectorComSpec) {
        if (newClientServerConnectorComSpec != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newClientServerConnectorComSpec != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientServerConnectorComSpec)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientServerConnectorComSpec != null) {
                msgs = ((InternalEObject)newClientServerConnectorComSpec).eInverseAdd((InternalEObject)this, 5, ClientServerConnectorComSpec.class, msgs);
            }
            if ((msgs = this.basicSetClientServerConnectorComSpec(newClientServerConnectorComSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClientServerConnectorComSpec, (Object)newClientServerConnectorComSpec));
        }
    }

    public ComponentPrototype getComponentPrototype() {
        if (this.componentPrototype != null && this.componentPrototype.eIsProxy()) {
            InternalEObject oldComponentPrototype = (InternalEObject)this.componentPrototype;
            this.componentPrototype = (ComponentPrototype)this.eResolveProxy(oldComponentPrototype);
            if (this.componentPrototype != oldComponentPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldComponentPrototype, (Object)this.componentPrototype));
            }
        }
        return this.componentPrototype;
    }

    public ComponentPrototype basicGetComponentPrototype() {
        return this.componentPrototype;
    }

    public void setComponentPrototype(ComponentPrototype newComponentPrototype) {
        ComponentPrototype oldComponentPrototype = this.componentPrototype;
        this.componentPrototype = newComponentPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldComponentPrototype, (Object)this.componentPrototype));
        }
    }

    public RPortPrototype getRPortPrototype() {
        if (this.rPortPrototype != null && this.rPortPrototype.eIsProxy()) {
            InternalEObject oldRPortPrototype = (InternalEObject)this.rPortPrototype;
            this.rPortPrototype = (RPortPrototype)this.eResolveProxy(oldRPortPrototype);
            if (this.rPortPrototype != oldRPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
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
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
        }
    }

    public OperationPrototype getOperationPrototype() {
        if (this.operationPrototype != null && this.operationPrototype.eIsProxy()) {
            InternalEObject oldOperationPrototype = (InternalEObject)this.operationPrototype;
            this.operationPrototype = (OperationPrototype)this.eResolveProxy(oldOperationPrototype);
            if (this.operationPrototype != oldOperationPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldOperationPrototype, (Object)this.operationPrototype));
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
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldOperationPrototype, (Object)this.operationPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClientServerConnectorComSpec((ClientServerConnectorComSpec)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClientServerConnectorComSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, ClientServerConnectorComSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClientServerConnectorComSpec();
            }
            case 5: {
                if (resolve) {
                    return this.getComponentPrototype();
                }
                return this.basicGetComponentPrototype();
            }
            case 6: {
                if (resolve) {
                    return this.getRPortPrototype();
                }
                return this.basicGetRPortPrototype();
            }
            case 7: {
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
                this.setClientServerConnectorComSpec((ClientServerConnectorComSpec)newValue);
                return;
            }
            case 5: {
                this.setComponentPrototype((ComponentPrototype)newValue);
                return;
            }
            case 6: {
                this.setRPortPrototype((RPortPrototype)newValue);
                return;
            }
            case 7: {
                this.setOperationPrototype((OperationPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClientServerConnectorComSpec(null);
                return;
            }
            case 5: {
                this.setComponentPrototype(null);
                return;
            }
            case 6: {
                this.setRPortPrototype(null);
                return;
            }
            case 7: {
                this.setOperationPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClientServerConnectorComSpec() != null;
            }
            case 5: {
                return this.componentPrototype != null;
            }
            case 6: {
                return this.rPortPrototype != null;
            }
            case 7: {
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

