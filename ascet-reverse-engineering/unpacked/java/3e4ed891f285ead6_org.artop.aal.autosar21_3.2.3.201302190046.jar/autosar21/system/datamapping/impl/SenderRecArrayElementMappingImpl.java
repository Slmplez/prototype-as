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
package autosar21.system.datamapping.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.datamapping.DatamappingPackage;
import autosar21.system.datamapping.SenderRecArrayElementMapping;
import autosar21.system.datamapping.SenderRecArrayTypeMapping;
import autosar21.system.datamapping.SenderRecCompositeTypeMapping;
import autosar21.system.datamapping.instanceref.SenderRecArrayElementMappingArrayElement;
import autosar21.system.systemsignal.SystemSignal;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SenderRecArrayElementMappingImpl
extends ARObjectImpl
implements SenderRecArrayElementMapping,
IReferringClass {
    protected SenderRecArrayElementMappingArrayElement arrayElement;
    protected SenderRecCompositeTypeMapping complexTypeMapping;
    protected SystemSignal signal;

    protected SenderRecArrayElementMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.SENDER_REC_ARRAY_ELEMENT_MAPPING;
    }

    public SenderRecArrayTypeMapping getSenderRecArrayTypeMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SenderRecArrayTypeMapping)this.eContainer();
    }

    public NotificationChain basicSetSenderRecArrayTypeMapping(SenderRecArrayTypeMapping newSenderRecArrayTypeMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSenderRecArrayTypeMapping, 4, msgs);
        return msgs;
    }

    public void setSenderRecArrayTypeMapping(SenderRecArrayTypeMapping newSenderRecArrayTypeMapping) {
        if (newSenderRecArrayTypeMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSenderRecArrayTypeMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSenderRecArrayTypeMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSenderRecArrayTypeMapping != null) {
                msgs = ((InternalEObject)newSenderRecArrayTypeMapping).eInverseAdd((InternalEObject)this, 4, SenderRecArrayTypeMapping.class, msgs);
            }
            if ((msgs = this.basicSetSenderRecArrayTypeMapping(newSenderRecArrayTypeMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSenderRecArrayTypeMapping, (Object)newSenderRecArrayTypeMapping));
        }
    }

    public SenderRecArrayElementMappingArrayElement getArrayElement() {
        return this.arrayElement;
    }

    public NotificationChain basicSetArrayElement(SenderRecArrayElementMappingArrayElement newArrayElement, NotificationChain msgs) {
        SenderRecArrayElementMappingArrayElement oldArrayElement = this.arrayElement;
        this.arrayElement = newArrayElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldArrayElement, (Object)newArrayElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setArrayElement(SenderRecArrayElementMappingArrayElement newArrayElement) {
        if (newArrayElement != this.arrayElement) {
            NotificationChain msgs = null;
            if (this.arrayElement != null) {
                msgs = ((InternalEObject)this.arrayElement).eInverseRemove((InternalEObject)this, 4, SenderRecArrayElementMappingArrayElement.class, msgs);
            }
            if (newArrayElement != null) {
                msgs = ((InternalEObject)newArrayElement).eInverseAdd((InternalEObject)this, 4, SenderRecArrayElementMappingArrayElement.class, msgs);
            }
            if ((msgs = this.basicSetArrayElement(newArrayElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newArrayElement, (Object)newArrayElement));
        }
    }

    public SenderRecCompositeTypeMapping getComplexTypeMapping() {
        return this.complexTypeMapping;
    }

    public NotificationChain basicSetComplexTypeMapping(SenderRecCompositeTypeMapping newComplexTypeMapping, NotificationChain msgs) {
        SenderRecCompositeTypeMapping oldComplexTypeMapping = this.complexTypeMapping;
        this.complexTypeMapping = newComplexTypeMapping;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldComplexTypeMapping, (Object)newComplexTypeMapping);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setComplexTypeMapping(SenderRecCompositeTypeMapping newComplexTypeMapping) {
        if (newComplexTypeMapping != this.complexTypeMapping) {
            NotificationChain msgs = null;
            if (this.complexTypeMapping != null) {
                msgs = ((InternalEObject)this.complexTypeMapping).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newComplexTypeMapping != null) {
                msgs = ((InternalEObject)newComplexTypeMapping).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetComplexTypeMapping(newComplexTypeMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newComplexTypeMapping, (Object)newComplexTypeMapping));
        }
    }

    public SystemSignal getSignal() {
        if (this.signal != null && this.signal.eIsProxy()) {
            InternalEObject oldSignal = (InternalEObject)this.signal;
            this.signal = (SystemSignal)this.eResolveProxy(oldSignal);
            if (this.signal != oldSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldSignal, (Object)this.signal));
            }
        }
        return this.signal;
    }

    public SystemSignal basicGetSignal() {
        return this.signal;
    }

    public void setSignal(SystemSignal newSignal) {
        SystemSignal oldSignal = this.signal;
        this.signal = newSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSignal, (Object)this.signal));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSenderRecArrayTypeMapping((SenderRecArrayTypeMapping)otherEnd, msgs);
            }
            case 5: {
                if (this.arrayElement != null) {
                    msgs = ((InternalEObject)this.arrayElement).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetArrayElement((SenderRecArrayElementMappingArrayElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSenderRecArrayTypeMapping(null, msgs);
            }
            case 5: {
                return this.basicSetArrayElement(null, msgs);
            }
            case 6: {
                return this.basicSetComplexTypeMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, SenderRecArrayTypeMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSenderRecArrayTypeMapping();
            }
            case 5: {
                return this.getArrayElement();
            }
            case 6: {
                return this.getComplexTypeMapping();
            }
            case 7: {
                if (resolve) {
                    return this.getSignal();
                }
                return this.basicGetSignal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSenderRecArrayTypeMapping((SenderRecArrayTypeMapping)newValue);
                return;
            }
            case 5: {
                this.setArrayElement((SenderRecArrayElementMappingArrayElement)newValue);
                return;
            }
            case 6: {
                this.setComplexTypeMapping((SenderRecCompositeTypeMapping)newValue);
                return;
            }
            case 7: {
                this.setSignal((SystemSignal)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSenderRecArrayTypeMapping(null);
                return;
            }
            case 5: {
                this.setArrayElement(null);
                return;
            }
            case 6: {
                this.setComplexTypeMapping(null);
                return;
            }
            case 7: {
                this.setSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSenderRecArrayTypeMapping() != null;
            }
            case 5: {
                return this.arrayElement != null;
            }
            case 6: {
                return this.complexTypeMapping != null;
            }
            case 7: {
                return this.signal != null;
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

