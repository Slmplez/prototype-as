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
import autosar21.swcomponent.communication.ReceiverComSpec;
import autosar21.swcomponent.communication.instanceref.InstancerefPackage;
import autosar21.swcomponent.communication.instanceref.ReceiverComSpecDataElement;
import autosar21.swcomponent.components.RPortPrototype;
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

public class ReceiverComSpecDataElementImpl
extends ARObjectImpl
implements ReceiverComSpecDataElement,
IReferringClass {
    protected RPortPrototype rPortPrototype;
    protected DataElementPrototype dataElementPrototype;

    protected ReceiverComSpecDataElementImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.RECEIVER_COM_SPEC_DATA_ELEMENT;
    }

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
                msgs = ((InternalEObject)newReceiverComSpec).eInverseAdd((InternalEObject)this, 6, ReceiverComSpec.class, msgs);
            }
            if ((msgs = this.basicSetReceiverComSpec(newReceiverComSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newReceiverComSpec, (Object)newReceiverComSpec));
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

    public DataElementPrototype getDataElementPrototype() {
        if (this.dataElementPrototype != null && this.dataElementPrototype.eIsProxy()) {
            InternalEObject oldDataElementPrototype = (InternalEObject)this.dataElementPrototype;
            this.dataElementPrototype = (DataElementPrototype)this.eResolveProxy(oldDataElementPrototype);
            if (this.dataElementPrototype != oldDataElementPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDataElementPrototype, (Object)this.dataElementPrototype));
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
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDataElementPrototype, (Object)this.dataElementPrototype));
        }
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, ReceiverComSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getReceiverComSpec();
            }
            case 5: {
                if (resolve) {
                    return this.getRPortPrototype();
                }
                return this.basicGetRPortPrototype();
            }
            case 6: {
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
                this.setReceiverComSpec((ReceiverComSpec)newValue);
                return;
            }
            case 5: {
                this.setRPortPrototype((RPortPrototype)newValue);
                return;
            }
            case 6: {
                this.setDataElementPrototype((DataElementPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setReceiverComSpec(null);
                return;
            }
            case 5: {
                this.setRPortPrototype(null);
                return;
            }
            case 6: {
                this.setDataElementPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getReceiverComSpec() != null;
            }
            case 5: {
                return this.rPortPrototype != null;
            }
            case 6: {
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

