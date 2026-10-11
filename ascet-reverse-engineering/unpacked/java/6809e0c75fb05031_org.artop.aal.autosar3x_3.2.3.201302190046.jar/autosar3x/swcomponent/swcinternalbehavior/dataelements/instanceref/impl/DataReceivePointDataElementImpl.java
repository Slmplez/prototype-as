/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
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
package autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataReceivePoint;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataReceivePointDataElement;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.InstancerefPackage;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
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
public class DataReceivePointDataElementImpl
extends ARObjectImpl
implements DataReceivePointDataElement,
IReferringClass {
    protected RPortPrototype rPortPrototype;
    protected DataElementPrototype dataElementPrototype;

    protected DataReceivePointDataElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.DATA_RECEIVE_POINT_DATA_ELEMENT;
    }

    public GRPortPrototype gGetContextRPort() {
        return this.getRPortPrototype();
    }

    public void gSetContextRPort(GRPortPrototype newGContextRPort) {
        this.setRPortPrototype((RPortPrototype)newGContextRPort);
    }

    public GVariableDataPrototype gGetTargetDataElement() {
        return this.getDataElementPrototype();
    }

    public void gSetTargetDataElement(GVariableDataPrototype newGTargetDataElement) {
        this.setDataElementPrototype((DataElementPrototype)newGTargetDataElement);
    }

    @Override
    public DataReceivePoint getDataReceivePoint() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (DataReceivePoint)this.eContainer();
    }

    public NotificationChain basicSetDataReceivePoint(DataReceivePoint newDataReceivePoint, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDataReceivePoint, 6, msgs);
        return msgs;
    }

    @Override
    public void setDataReceivePoint(DataReceivePoint newDataReceivePoint) {
        if (newDataReceivePoint != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newDataReceivePoint != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDataReceivePoint)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDataReceivePoint != null) {
                msgs = ((InternalEObject)newDataReceivePoint).eInverseAdd((InternalEObject)this, 19, DataReceivePoint.class, msgs);
            }
            if ((msgs = this.basicSetDataReceivePoint(newDataReceivePoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newDataReceivePoint, (Object)newDataReceivePoint));
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
    public DataElementPrototype getDataElementPrototype() {
        if (this.dataElementPrototype != null && this.dataElementPrototype.eIsProxy()) {
            InternalEObject oldDataElementPrototype = (InternalEObject)this.dataElementPrototype;
            this.dataElementPrototype = (DataElementPrototype)this.eResolveProxy(oldDataElementPrototype);
            if (this.dataElementPrototype != oldDataElementPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldDataElementPrototype, (Object)this.dataElementPrototype));
            }
        }
        return this.dataElementPrototype;
    }

    public DataElementPrototype basicGetDataElementPrototype() {
        return this.dataElementPrototype;
    }

    @Override
    public void setDataElementPrototype(DataElementPrototype newDataElementPrototype) {
        DataElementPrototype oldDataElementPrototype = this.dataElementPrototype;
        this.dataElementPrototype = newDataElementPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldDataElementPrototype, (Object)this.dataElementPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDataReceivePoint((DataReceivePoint)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetDataReceivePoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, DataReceivePoint.class, msgs);
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
                return this.gGetTargetDataElement();
            }
            case 6: {
                return this.getDataReceivePoint();
            }
            case 7: {
                if (resolve) {
                    return this.getRPortPrototype();
                }
                return this.basicGetRPortPrototype();
            }
            case 8: {
                if (resolve) {
                    return this.getDataElementPrototype();
                }
                return this.basicGetDataElementPrototype();
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
                this.gSetTargetDataElement((GVariableDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setDataReceivePoint((DataReceivePoint)newValue);
                return;
            }
            case 7: {
                this.setRPortPrototype((RPortPrototype)newValue);
                return;
            }
            case 8: {
                this.setDataElementPrototype((DataElementPrototype)newValue);
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
                this.gSetTargetDataElement(null);
                return;
            }
            case 6: {
                this.setDataReceivePoint(null);
                return;
            }
            case 7: {
                this.setRPortPrototype(null);
                return;
            }
            case 8: {
                this.setDataElementPrototype(null);
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
                return this.gGetTargetDataElement() != null;
            }
            case 6: {
                return this.getDataReceivePoint() != null;
            }
            case 7: {
                return this.rPortPrototype != null;
            }
            case 8: {
                return this.dataElementPrototype != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GVariableInAtomicSwcIRef.class) {
            return -1;
        }
        if (baseClass == GRVariableInAtomicSwcIRef.class) {
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
        if (baseClass == GVariableInAtomicSwcIRef.class) {
            return -1;
        }
        if (baseClass == GRVariableInAtomicSwcIRef.class) {
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

