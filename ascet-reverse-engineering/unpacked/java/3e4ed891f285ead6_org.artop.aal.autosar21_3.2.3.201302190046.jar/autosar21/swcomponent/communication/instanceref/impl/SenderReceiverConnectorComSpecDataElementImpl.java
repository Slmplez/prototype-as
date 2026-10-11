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
import autosar21.swcomponent.communication.SenderReceiverConnectorComSpec;
import autosar21.swcomponent.communication.instanceref.InstancerefPackage;
import autosar21.swcomponent.communication.instanceref.SenderReceiverConnectorComSpecDataElement;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SenderReceiverConnectorComSpecDataElementImpl
extends ARObjectImpl
implements SenderReceiverConnectorComSpecDataElement,
IReferringClass {
    protected ComponentPrototype componentPrototype;
    protected RPortPrototype rPortPrototype;
    protected DataElementPrototype dataElementPrototype;

    protected SenderReceiverConnectorComSpecDataElementImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.SENDER_RECEIVER_CONNECTOR_COM_SPEC_DATA_ELEMENT;
    }

    public SenderReceiverConnectorComSpec getSenderReceiverConnectorComSpec() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SenderReceiverConnectorComSpec)this.eContainer();
    }

    public NotificationChain basicSetSenderReceiverConnectorComSpec(SenderReceiverConnectorComSpec newSenderReceiverConnectorComSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSenderReceiverConnectorComSpec, 4, msgs);
        return msgs;
    }

    public void setSenderReceiverConnectorComSpec(SenderReceiverConnectorComSpec newSenderReceiverConnectorComSpec) {
        if (newSenderReceiverConnectorComSpec != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSenderReceiverConnectorComSpec != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSenderReceiverConnectorComSpec)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSenderReceiverConnectorComSpec != null) {
                msgs = ((InternalEObject)newSenderReceiverConnectorComSpec).eInverseAdd((InternalEObject)this, 5, SenderReceiverConnectorComSpec.class, msgs);
            }
            if ((msgs = this.basicSetSenderReceiverConnectorComSpec(newSenderReceiverConnectorComSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSenderReceiverConnectorComSpec, (Object)newSenderReceiverConnectorComSpec));
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

    public DataElementPrototype getDataElementPrototype() {
        if (this.dataElementPrototype != null && this.dataElementPrototype.eIsProxy()) {
            InternalEObject oldDataElementPrototype = (InternalEObject)this.dataElementPrototype;
            this.dataElementPrototype = (DataElementPrototype)this.eResolveProxy(oldDataElementPrototype);
            if (this.dataElementPrototype != oldDataElementPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldDataElementPrototype, (Object)this.dataElementPrototype));
            }
        }
        return this.dataElementPrototype;
    }

    public DataElementPrototype basicGetDataElementPrototype() {
        return this.dataElementPrototype;
    }

    public void setDataElementPrototype(DataElementPrototype newDataElementPrototype) {
        DataElementPrototype oldDataElementPrototype = this.dataElementPrototype;
        this.dataElementPrototype = newDataElementPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDataElementPrototype, (Object)this.dataElementPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSenderReceiverConnectorComSpec((SenderReceiverConnectorComSpec)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSenderReceiverConnectorComSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, SenderReceiverConnectorComSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSenderReceiverConnectorComSpec();
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
                    return this.getDataElementPrototype();
                }
                return this.basicGetDataElementPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSenderReceiverConnectorComSpec((SenderReceiverConnectorComSpec)newValue);
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
                this.setDataElementPrototype((DataElementPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSenderReceiverConnectorComSpec(null);
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
                this.setDataElementPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSenderReceiverConnectorComSpec() != null;
            }
            case 5: {
                return this.componentPrototype != null;
            }
            case 6: {
                return this.rPortPrototype != null;
            }
            case 7: {
                return this.dataElementPrototype != null;
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

