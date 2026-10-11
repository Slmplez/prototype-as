/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef
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
package autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import autosar3x.swcomponent.swcinternalbehavior.servercall.ServerCallPoint;
import autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.ServerCallPointOperation;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef;
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
public class ServerCallPointOperationImpl
extends ARObjectImpl
implements ServerCallPointOperation,
IReferringClass {
    protected RPortPrototype rPortPrototype;
    protected OperationPrototype operationPrototype;

    protected ServerCallPointOperationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.SERVER_CALL_POINT_OPERATION;
    }

    public GRPortPrototype gGetContextRPort() {
        return this.getRPortPrototype();
    }

    public void gSetContextRPort(GRPortPrototype newGContextRPort) {
        this.setRPortPrototype((RPortPrototype)newGContextRPort);
    }

    public GClientServerOperation gGetTargetRequiredOperation() {
        return this.getOperationPrototype();
    }

    public void gSetTargetRequiredOperation(GClientServerOperation newGTargetRequiredOperation) {
        this.setOperationPrototype((OperationPrototype)newGTargetRequiredOperation);
    }

    @Override
    public ServerCallPoint getServerCallPoint() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (ServerCallPoint)this.eContainer();
    }

    public NotificationChain basicSetServerCallPoint(ServerCallPoint newServerCallPoint, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newServerCallPoint, 6, msgs);
        return msgs;
    }

    @Override
    public void setServerCallPoint(ServerCallPoint newServerCallPoint) {
        if (newServerCallPoint != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newServerCallPoint != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newServerCallPoint)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newServerCallPoint != null) {
                msgs = ((InternalEObject)newServerCallPoint).eInverseAdd((InternalEObject)this, 19, ServerCallPoint.class, msgs);
            }
            if ((msgs = this.basicSetServerCallPoint(newServerCallPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newServerCallPoint, (Object)newServerCallPoint));
        }
    }

    @Override
    public RPortPrototype getRPortPrototype() {
        if (this.rPortPrototype != null && this.rPortPrototype.eIsProxy()) {
            InternalEObject oldRPortPrototype = (InternalEObject)this.rPortPrototype;
            this.rPortPrototype = (RPortPrototype)this.eResolveProxy(oldRPortPrototype);
            if (this.rPortPrototype != oldRPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
            }
        }
        return this.rPortPrototype;
    }

    public RPortPrototype basicGetRPortPrototype() {
        return this.rPortPrototype;
    }

    @Override
    public void setRPortPrototype(RPortPrototype newRPortPrototype) {
        RPortPrototype oldRPortPrototype = this.rPortPrototype;
        this.rPortPrototype = newRPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldRPortPrototype, (Object)this.rPortPrototype));
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
                return this.basicSetServerCallPoint((ServerCallPoint)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetServerCallPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ServerCallPoint.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetContextRPort();
            }
            case 5: {
                return this.gGetTargetRequiredOperation();
            }
            case 6: {
                return this.getServerCallPoint();
            }
            case 7: {
                if (resolve) {
                    return this.getRPortPrototype();
                }
                return this.basicGetRPortPrototype();
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
                this.gSetContextRPort((GRPortPrototype)newValue);
                return;
            }
            case 5: {
                this.gSetTargetRequiredOperation((GClientServerOperation)newValue);
                return;
            }
            case 6: {
                this.setServerCallPoint((ServerCallPoint)newValue);
                return;
            }
            case 7: {
                this.setRPortPrototype((RPortPrototype)newValue);
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
                this.gSetContextRPort(null);
                return;
            }
            case 5: {
                this.gSetTargetRequiredOperation(null);
                return;
            }
            case 6: {
                this.setServerCallPoint(null);
                return;
            }
            case 7: {
                this.setRPortPrototype(null);
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
                return this.gGetContextRPort() != null;
            }
            case 5: {
                return this.gGetTargetRequiredOperation() != null;
            }
            case 6: {
                return this.getServerCallPoint() != null;
            }
            case 7: {
                return this.rPortPrototype != null;
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
        if (baseClass == GROperationInAtomicSwcIRef.class) {
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
        if (baseClass == GROperationInAtomicSwcIRef.class) {
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

