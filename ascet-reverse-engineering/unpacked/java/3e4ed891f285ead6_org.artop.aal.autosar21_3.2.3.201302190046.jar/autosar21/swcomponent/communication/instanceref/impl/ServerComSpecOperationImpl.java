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
import autosar21.swcomponent.communication.ServerComSpec;
import autosar21.swcomponent.communication.instanceref.InstancerefPackage;
import autosar21.swcomponent.communication.instanceref.ServerComSpecOperation;
import autosar21.swcomponent.components.PPortPrototype;
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

public class ServerComSpecOperationImpl
extends ARObjectImpl
implements ServerComSpecOperation,
IReferringClass {
    protected PPortPrototype pPortPrototype;
    protected OperationPrototype operationPrototype;

    protected ServerComSpecOperationImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.SERVER_COM_SPEC_OPERATION;
    }

    public ServerComSpec getServerComSpec() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ServerComSpec)this.eContainer();
    }

    public NotificationChain basicSetServerComSpec(ServerComSpec newServerComSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newServerComSpec, 4, msgs);
        return msgs;
    }

    public void setServerComSpec(ServerComSpec newServerComSpec) {
        if (newServerComSpec != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newServerComSpec != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newServerComSpec)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newServerComSpec != null) {
                msgs = ((InternalEObject)newServerComSpec).eInverseAdd((InternalEObject)this, 7, ServerComSpec.class, msgs);
            }
            if ((msgs = this.basicSetServerComSpec(newServerComSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newServerComSpec, (Object)newServerComSpec));
        }
    }

    public PPortPrototype getPPortPrototype() {
        if (this.pPortPrototype != null && this.pPortPrototype.eIsProxy()) {
            InternalEObject oldPPortPrototype = (InternalEObject)this.pPortPrototype;
            this.pPortPrototype = (PPortPrototype)this.eResolveProxy(oldPPortPrototype);
            if (this.pPortPrototype != oldPPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldPPortPrototype, (Object)this.pPortPrototype));
            }
        }
        return this.pPortPrototype;
    }

    public PPortPrototype basicGetPPortPrototype() {
        return this.pPortPrototype;
    }

    public void setPPortPrototype(PPortPrototype newPPortPrototype) {
        PPortPrototype oldPPortPrototype = this.pPortPrototype;
        this.pPortPrototype = newPPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPPortPrototype, (Object)this.pPortPrototype));
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
                return this.basicSetServerComSpec((ServerComSpec)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetServerComSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, ServerComSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getServerComSpec();
            }
            case 5: {
                if (resolve) {
                    return this.getPPortPrototype();
                }
                return this.basicGetPPortPrototype();
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
                this.setServerComSpec((ServerComSpec)newValue);
                return;
            }
            case 5: {
                this.setPPortPrototype((PPortPrototype)newValue);
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
                this.setServerComSpec(null);
                return;
            }
            case 5: {
                this.setPPortPrototype(null);
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
                return this.getServerComSpec() != null;
            }
            case 5: {
                return this.pPortPrototype != null;
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

