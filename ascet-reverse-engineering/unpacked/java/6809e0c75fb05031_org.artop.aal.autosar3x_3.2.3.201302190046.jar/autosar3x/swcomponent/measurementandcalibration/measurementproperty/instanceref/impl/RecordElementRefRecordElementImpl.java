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
package autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.datatype.datatypes.RecordElement;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.RecordElementRefRecordElement;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
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
public class RecordElementRefRecordElementImpl
extends ARObjectImpl
implements RecordElementRefRecordElement,
IReferringClass {
    protected EList<ComponentPrototype> compositionComponentPrototypes;
    protected ComponentPrototype componentPrototype;
    protected PortPrototype portPrototype;
    protected EList<DataElementPrototype> dataElementPrototypes;
    protected RecordElement recordElement;

    protected RecordElementRefRecordElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.RECORD_ELEMENT_REF_RECORD_ELEMENT;
    }

    @Override
    public RecordElementRef getRecordElementRef() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (RecordElementRef)this.eContainer();
    }

    public NotificationChain basicSetRecordElementRef(RecordElementRef newRecordElementRef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRecordElementRef, 4, msgs);
        return msgs;
    }

    @Override
    public void setRecordElementRef(RecordElementRef newRecordElementRef) {
        if (newRecordElementRef != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newRecordElementRef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRecordElementRef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRecordElementRef != null) {
                msgs = ((InternalEObject)newRecordElementRef).eInverseAdd((InternalEObject)this, 4, RecordElementRef.class, msgs);
            }
            if ((msgs = this.basicSetRecordElementRef(newRecordElementRef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newRecordElementRef, (Object)newRecordElementRef));
        }
    }

    @Override
    public EList<ComponentPrototype> getCompositionComponentPrototypes() {
        if (this.compositionComponentPrototypes == null) {
            this.compositionComponentPrototypes = new EObjectResolvingReferringEList(ComponentPrototype.class, (InternalEObject)this, 5);
        }
        return this.compositionComponentPrototypes;
    }

    @Override
    public ComponentPrototype getComponentPrototype() {
        if (this.componentPrototype != null && this.componentPrototype.eIsProxy()) {
            InternalEObject oldComponentPrototype = (InternalEObject)this.componentPrototype;
            this.componentPrototype = (ComponentPrototype)this.eResolveProxy(oldComponentPrototype);
            if (this.componentPrototype != oldComponentPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldComponentPrototype, (Object)this.componentPrototype));
            }
        }
        return this.componentPrototype;
    }

    public ComponentPrototype basicGetComponentPrototype() {
        return this.componentPrototype;
    }

    @Override
    public void setComponentPrototype(ComponentPrototype newComponentPrototype) {
        ComponentPrototype oldComponentPrototype = this.componentPrototype;
        this.componentPrototype = newComponentPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldComponentPrototype, (Object)this.componentPrototype));
        }
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
    public EList<DataElementPrototype> getDataElementPrototypes() {
        if (this.dataElementPrototypes == null) {
            this.dataElementPrototypes = new EObjectResolvingReferringEList(DataElementPrototype.class, (InternalEObject)this, 8);
        }
        return this.dataElementPrototypes;
    }

    @Override
    public RecordElement getRecordElement() {
        if (this.recordElement != null && this.recordElement.eIsProxy()) {
            InternalEObject oldRecordElement = (InternalEObject)this.recordElement;
            this.recordElement = (RecordElement)this.eResolveProxy(oldRecordElement);
            if (this.recordElement != oldRecordElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldRecordElement, (Object)this.recordElement));
            }
        }
        return this.recordElement;
    }

    public RecordElement basicGetRecordElement() {
        return this.recordElement;
    }

    @Override
    public void setRecordElement(RecordElement newRecordElement) {
        RecordElement oldRecordElement = this.recordElement;
        this.recordElement = newRecordElement;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldRecordElement, (Object)this.recordElement));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetRecordElementRef((RecordElementRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetRecordElementRef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, RecordElementRef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getRecordElementRef();
            }
            case 5: {
                return this.getCompositionComponentPrototypes();
            }
            case 6: {
                if (resolve) {
                    return this.getComponentPrototype();
                }
                return this.basicGetComponentPrototype();
            }
            case 7: {
                if (resolve) {
                    return this.getPortPrototype();
                }
                return this.basicGetPortPrototype();
            }
            case 8: {
                return this.getDataElementPrototypes();
            }
            case 9: {
                if (resolve) {
                    return this.getRecordElement();
                }
                return this.basicGetRecordElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setRecordElementRef((RecordElementRef)newValue);
                return;
            }
            case 5: {
                this.getCompositionComponentPrototypes().clear();
                this.getCompositionComponentPrototypes().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setComponentPrototype((ComponentPrototype)newValue);
                return;
            }
            case 7: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 8: {
                this.getDataElementPrototypes().clear();
                this.getDataElementPrototypes().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.setRecordElement((RecordElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setRecordElementRef(null);
                return;
            }
            case 5: {
                this.getCompositionComponentPrototypes().clear();
                return;
            }
            case 6: {
                this.setComponentPrototype(null);
                return;
            }
            case 7: {
                this.setPortPrototype(null);
                return;
            }
            case 8: {
                this.getDataElementPrototypes().clear();
                return;
            }
            case 9: {
                this.setRecordElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getRecordElementRef() != null;
            }
            case 5: {
                return this.compositionComponentPrototypes != null && !this.compositionComponentPrototypes.isEmpty();
            }
            case 6: {
                return this.componentPrototype != null;
            }
            case 7: {
                return this.portPrototype != null;
            }
            case 8: {
                return this.dataElementPrototypes != null && !this.dataElementPrototypes.isEmpty();
            }
            case 9: {
                return this.recordElement != null;
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

