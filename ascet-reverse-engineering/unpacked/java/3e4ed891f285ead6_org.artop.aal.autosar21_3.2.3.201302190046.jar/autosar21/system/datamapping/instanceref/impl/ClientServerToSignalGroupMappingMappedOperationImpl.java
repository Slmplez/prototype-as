/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.system.datamapping.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.system.SoftwareComposition;
import autosar21.system.datamapping.ClientServerToSignalGroupMapping;
import autosar21.system.datamapping.instanceref.ClientServerToSignalGroupMappingMappedOperation;
import autosar21.system.datamapping.instanceref.InstancerefPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ClientServerToSignalGroupMappingMappedOperationImpl
extends ARObjectImpl
implements ClientServerToSignalGroupMappingMappedOperation,
IReferringClass {
    protected SoftwareComposition compositionPrototype;
    protected EList<ComponentPrototype> componentPrototypes;
    protected PortPrototype portPrototype;
    protected OperationPrototype operation;

    protected ClientServerToSignalGroupMappingMappedOperationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.CLIENT_SERVER_TO_SIGNAL_GROUP_MAPPING_MAPPED_OPERATION;
    }

    @Override
    public ClientServerToSignalGroupMapping getClientServerToSignalGroupMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ClientServerToSignalGroupMapping)this.eContainer();
    }

    public NotificationChain basicSetClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping newClientServerToSignalGroupMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientServerToSignalGroupMapping, 4, msgs);
        return msgs;
    }

    @Override
    public void setClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping newClientServerToSignalGroupMapping) {
        if (newClientServerToSignalGroupMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newClientServerToSignalGroupMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientServerToSignalGroupMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientServerToSignalGroupMapping != null) {
                msgs = ((InternalEObject)newClientServerToSignalGroupMapping).eInverseAdd((InternalEObject)this, 9, ClientServerToSignalGroupMapping.class, msgs);
            }
            if ((msgs = this.basicSetClientServerToSignalGroupMapping(newClientServerToSignalGroupMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClientServerToSignalGroupMapping, (Object)newClientServerToSignalGroupMapping));
        }
    }

    @Override
    public SoftwareComposition getCompositionPrototype() {
        if (this.compositionPrototype != null && this.compositionPrototype.eIsProxy()) {
            InternalEObject oldCompositionPrototype = (InternalEObject)this.compositionPrototype;
            this.compositionPrototype = (SoftwareComposition)this.eResolveProxy(oldCompositionPrototype);
            if (this.compositionPrototype != oldCompositionPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldCompositionPrototype, (Object)this.compositionPrototype));
            }
        }
        return this.compositionPrototype;
    }

    public SoftwareComposition basicGetCompositionPrototype() {
        return this.compositionPrototype;
    }

    @Override
    public void setCompositionPrototype(SoftwareComposition newCompositionPrototype) {
        SoftwareComposition oldCompositionPrototype = this.compositionPrototype;
        this.compositionPrototype = newCompositionPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCompositionPrototype, (Object)this.compositionPrototype));
        }
    }

    @Override
    public EList<ComponentPrototype> getComponentPrototypes() {
        if (this.componentPrototypes == null) {
            this.componentPrototypes = new EObjectResolvingReferringEList(ComponentPrototype.class, (InternalEObject)this, 6);
        }
        return this.componentPrototypes;
    }

    @Override
    public PortPrototype getPortPrototype() {
        if (this.portPrototype != null && this.portPrototype.eIsProxy()) {
            InternalEObject oldPortPrototype = (InternalEObject)this.portPrototype;
            this.portPrototype = (PortPrototype)this.eResolveProxy(oldPortPrototype);
            if (this.portPrototype != oldPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldPortPrototype, (Object)this.portPrototype));
            }
        }
        return this.portPrototype;
    }

    public PortPrototype basicGetPortPrototype() {
        return this.portPrototype;
    }

    @Override
    public void setPortPrototype(PortPrototype newPortPrototype) {
        PortPrototype oldPortPrototype = this.portPrototype;
        this.portPrototype = newPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPortPrototype, (Object)this.portPrototype));
        }
    }

    @Override
    public OperationPrototype getOperation() {
        if (this.operation != null && this.operation.eIsProxy()) {
            InternalEObject oldOperation = (InternalEObject)this.operation;
            this.operation = (OperationPrototype)this.eResolveProxy(oldOperation);
            if (this.operation != oldOperation && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldOperation, (Object)this.operation));
            }
        }
        return this.operation;
    }

    public OperationPrototype basicGetOperation() {
        return this.operation;
    }

    @Override
    public void setOperation(OperationPrototype newOperation) {
        OperationPrototype oldOperation = this.operation;
        this.operation = newOperation;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldOperation, (Object)this.operation));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClientServerToSignalGroupMapping((ClientServerToSignalGroupMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClientServerToSignalGroupMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 9, ClientServerToSignalGroupMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClientServerToSignalGroupMapping();
            }
            case 5: {
                if (resolve) {
                    return this.getCompositionPrototype();
                }
                return this.basicGetCompositionPrototype();
            }
            case 6: {
                return this.getComponentPrototypes();
            }
            case 7: {
                if (resolve) {
                    return this.getPortPrototype();
                }
                return this.basicGetPortPrototype();
            }
            case 8: {
                if (resolve) {
                    return this.getOperation();
                }
                return this.basicGetOperation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setClientServerToSignalGroupMapping((ClientServerToSignalGroupMapping)newValue);
                return;
            }
            case 5: {
                this.setCompositionPrototype((SoftwareComposition)newValue);
                return;
            }
            case 6: {
                this.getComponentPrototypes().clear();
                this.getComponentPrototypes().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 8: {
                this.setOperation((OperationPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClientServerToSignalGroupMapping(null);
                return;
            }
            case 5: {
                this.setCompositionPrototype(null);
                return;
            }
            case 6: {
                this.getComponentPrototypes().clear();
                return;
            }
            case 7: {
                this.setPortPrototype(null);
                return;
            }
            case 8: {
                this.setOperation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClientServerToSignalGroupMapping() != null;
            }
            case 5: {
                return this.compositionPrototype != null;
            }
            case 6: {
                return this.componentPrototypes != null && !this.componentPrototypes.isEmpty();
            }
            case 7: {
                return this.portPrototype != null;
            }
            case 8: {
                return this.operation != null;
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

