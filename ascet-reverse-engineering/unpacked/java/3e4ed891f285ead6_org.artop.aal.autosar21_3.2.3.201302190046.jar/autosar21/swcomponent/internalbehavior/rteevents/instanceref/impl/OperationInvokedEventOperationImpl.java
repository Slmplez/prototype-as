/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
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
package autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.internalbehavior.rteevents.OperationInvokedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.InstancerefPackage;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import autosar21.swcomponent.portinterface.OperationPrototype;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OperationInvokedEventOperationImpl
extends ARObjectImpl
implements OperationInvokedEventOperation,
IReferringClass {
    protected PPortPrototype pPortPrototype;
    protected OperationPrototype operationPrototype;

    protected OperationInvokedEventOperationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.OPERATION_INVOKED_EVENT_OPERATION;
    }

    public GPPortPrototype gGetContextPPort() {
        return this.getPPortPrototype();
    }

    public void gSetContextPPort(GPPortPrototype newGContextPPort) {
        this.setPPortPrototype((PPortPrototype)newGContextPPort);
    }

    public GClientServerOperation gGetTargetProvidedOperation() {
        return this.getOperationPrototype();
    }

    public void gSetTargetProvidedOperation(GClientServerOperation newGTargetProvidedOperation) {
        this.setOperationPrototype((OperationPrototype)newGTargetProvidedOperation);
    }

    @Override
    public OperationInvokedEvent getOperationInvokedEvent() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (OperationInvokedEvent)this.eContainer();
    }

    public NotificationChain basicSetOperationInvokedEvent(OperationInvokedEvent newOperationInvokedEvent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newOperationInvokedEvent, 6, msgs);
        return msgs;
    }

    @Override
    public void setOperationInvokedEvent(OperationInvokedEvent newOperationInvokedEvent) {
        if (newOperationInvokedEvent != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newOperationInvokedEvent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newOperationInvokedEvent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newOperationInvokedEvent != null) {
                msgs = ((InternalEObject)newOperationInvokedEvent).eInverseAdd((InternalEObject)this, 21, OperationInvokedEvent.class, msgs);
            }
            if ((msgs = this.basicSetOperationInvokedEvent(newOperationInvokedEvent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newOperationInvokedEvent, (Object)newOperationInvokedEvent));
        }
    }

    @Override
    public PPortPrototype getPPortPrototype() {
        if (this.pPortPrototype != null && this.pPortPrototype.eIsProxy()) {
            InternalEObject oldPPortPrototype = (InternalEObject)this.pPortPrototype;
            this.pPortPrototype = (PPortPrototype)this.eResolveProxy(oldPPortPrototype);
            if (this.pPortPrototype != oldPPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldPPortPrototype, (Object)this.pPortPrototype));
            }
        }
        return this.pPortPrototype;
    }

    public PPortPrototype basicGetPPortPrototype() {
        return this.pPortPrototype;
    }

    @Override
    public void setPPortPrototype(PPortPrototype newPPortPrototype) {
        PPortPrototype oldPPortPrototype = this.pPortPrototype;
        this.pPortPrototype = newPPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPPortPrototype, (Object)this.pPortPrototype));
        }
    }

    @Override
    public OperationPrototype getOperationPrototype() {
        if (this.operationPrototype != null && this.operationPrototype.eIsProxy()) {
            InternalEObject oldOperationPrototype = (InternalEObject)this.operationPrototype;
            this.operationPrototype = (OperationPrototype)this.eResolveProxy(oldOperationPrototype);
            if (this.operationPrototype != oldOperationPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldOperationPrototype, (Object)this.operationPrototype));
            }
        }
        return this.operationPrototype;
    }

    public OperationPrototype basicGetOperationPrototype() {
        return this.operationPrototype;
    }

    @Override
    public void setOperationPrototype(OperationPrototype newOperationPrototype) {
        OperationPrototype oldOperationPrototype = this.operationPrototype;
        this.operationPrototype = newOperationPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldOperationPrototype, (Object)this.operationPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetOperationInvokedEvent((OperationInvokedEvent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetOperationInvokedEvent(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, OperationInvokedEvent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetContextPPort();
            }
            case 5: {
                return this.gGetTargetProvidedOperation();
            }
            case 6: {
                return this.getOperationInvokedEvent();
            }
            case 7: {
                if (resolve) {
                    return this.getPPortPrototype();
                }
                return this.basicGetPPortPrototype();
            }
            case 8: {
                if (resolve) {
                    return this.getOperationPrototype();
                }
                return this.basicGetOperationPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetContextPPort((GPPortPrototype)newValue);
                return;
            }
            case 5: {
                this.gSetTargetProvidedOperation((GClientServerOperation)newValue);
                return;
            }
            case 6: {
                this.setOperationInvokedEvent((OperationInvokedEvent)newValue);
                return;
            }
            case 7: {
                this.setPPortPrototype((PPortPrototype)newValue);
                return;
            }
            case 8: {
                this.setOperationPrototype((OperationPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetContextPPort(null);
                return;
            }
            case 5: {
                this.gSetTargetProvidedOperation(null);
                return;
            }
            case 6: {
                this.setOperationInvokedEvent(null);
                return;
            }
            case 7: {
                this.setPPortPrototype(null);
                return;
            }
            case 8: {
                this.setOperationPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetContextPPort() != null;
            }
            case 5: {
                return this.gGetTargetProvidedOperation() != null;
            }
            case 6: {
                return this.getOperationInvokedEvent() != null;
            }
            case 7: {
                return this.pPortPrototype != null;
            }
            case 8: {
                return this.operationPrototype != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GOperationInAtomicSwcIRef.class) {
            return -1;
        }
        if (baseClass == GPOperationInAtomicSwcIRef.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GOperationInAtomicSwcIRef.class) {
            return -1;
        }
        if (baseClass == GPOperationInAtomicSwcIRef.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

