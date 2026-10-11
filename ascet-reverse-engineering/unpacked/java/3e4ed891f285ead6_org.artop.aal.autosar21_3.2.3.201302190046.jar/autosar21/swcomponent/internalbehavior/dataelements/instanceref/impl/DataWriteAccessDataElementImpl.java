/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef
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
package autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.internalbehavior.dataelements.DataWriteAccess;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataWriteAccessDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.InstancerefPackage;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;
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
public class DataWriteAccessDataElementImpl
extends ARObjectImpl
implements DataWriteAccessDataElement,
IReferringClass {
    protected PPortPrototype pPortPrototype;
    protected DataElementPrototype dataElementPrototype;

    protected DataWriteAccessDataElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.DATA_WRITE_ACCESS_DATA_ELEMENT;
    }

    public GPPortPrototype gGetContextPPort() {
        return this.getPPortPrototype();
    }

    public void gSetContextPPort(GPPortPrototype newGContextPPort) {
        this.setPPortPrototype((PPortPrototype)newGContextPPort);
    }

    public GVariableDataPrototype gGetTargetDataElement() {
        return this.getDataElementPrototype();
    }

    public void gSetTargetDataElement(GVariableDataPrototype newGTargetDataElement) {
        this.setDataElementPrototype((DataElementPrototype)newGTargetDataElement);
    }

    @Override
    public DataWriteAccess getDataWriteAccess() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (DataWriteAccess)this.eContainer();
    }

    public NotificationChain basicSetDataWriteAccess(DataWriteAccess newDataWriteAccess, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDataWriteAccess, 6, msgs);
        return msgs;
    }

    @Override
    public void setDataWriteAccess(DataWriteAccess newDataWriteAccess) {
        if (newDataWriteAccess != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newDataWriteAccess != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDataWriteAccess)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDataWriteAccess != null) {
                msgs = ((InternalEObject)newDataWriteAccess).eInverseAdd((InternalEObject)this, 18, DataWriteAccess.class, msgs);
            }
            if ((msgs = this.basicSetDataWriteAccess(newDataWriteAccess, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newDataWriteAccess, (Object)newDataWriteAccess));
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
                return this.basicSetDataWriteAccess((DataWriteAccess)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetDataWriteAccess(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, DataWriteAccess.class, msgs);
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
                return this.gGetTargetDataElement();
            }
            case 6: {
                return this.getDataWriteAccess();
            }
            case 7: {
                if (resolve) {
                    return this.getPPortPrototype();
                }
                return this.basicGetPPortPrototype();
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
                this.gSetContextPPort((GPPortPrototype)newValue);
                return;
            }
            case 5: {
                this.gSetTargetDataElement((GVariableDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setDataWriteAccess((DataWriteAccess)newValue);
                return;
            }
            case 7: {
                this.setPPortPrototype((PPortPrototype)newValue);
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
                this.gSetContextPPort(null);
                return;
            }
            case 5: {
                this.gSetTargetDataElement(null);
                return;
            }
            case 6: {
                this.setDataWriteAccess(null);
                return;
            }
            case 7: {
                this.setPPortPrototype(null);
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
                return this.gGetContextPPort() != null;
            }
            case 5: {
                return this.gGetTargetDataElement() != null;
            }
            case 6: {
                return this.getDataWriteAccess() != null;
            }
            case 7: {
                return this.pPortPrototype != null;
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
        if (baseClass == GPVariableInAtomicSwcIRef.class) {
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
        if (baseClass == GPVariableInAtomicSwcIRef.class) {
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

