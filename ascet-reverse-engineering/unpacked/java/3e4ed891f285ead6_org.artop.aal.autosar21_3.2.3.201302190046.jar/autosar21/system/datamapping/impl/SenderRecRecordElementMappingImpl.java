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
import autosar21.system.datamapping.SenderRecCompositeTypeMapping;
import autosar21.system.datamapping.SenderRecRecordElementMapping;
import autosar21.system.datamapping.SenderRecRecordTypeMapping;
import autosar21.system.datamapping.instanceref.SenderRecRecordElementMappingRecordElement;
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

public class SenderRecRecordElementMappingImpl
extends ARObjectImpl
implements SenderRecRecordElementMapping,
IReferringClass {
    protected SenderRecCompositeTypeMapping complexTypeMapping;
    protected SenderRecRecordElementMappingRecordElement recordElement;
    protected SystemSignal signal;

    protected SenderRecRecordElementMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.SENDER_REC_RECORD_ELEMENT_MAPPING;
    }

    public SenderRecRecordTypeMapping getSenderRecRecordTypeMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SenderRecRecordTypeMapping)this.eContainer();
    }

    public NotificationChain basicSetSenderRecRecordTypeMapping(SenderRecRecordTypeMapping newSenderRecRecordTypeMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSenderRecRecordTypeMapping, 4, msgs);
        return msgs;
    }

    public void setSenderRecRecordTypeMapping(SenderRecRecordTypeMapping newSenderRecRecordTypeMapping) {
        if (newSenderRecRecordTypeMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSenderRecRecordTypeMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSenderRecRecordTypeMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSenderRecRecordTypeMapping != null) {
                msgs = ((InternalEObject)newSenderRecRecordTypeMapping).eInverseAdd((InternalEObject)this, 4, SenderRecRecordTypeMapping.class, msgs);
            }
            if ((msgs = this.basicSetSenderRecRecordTypeMapping(newSenderRecRecordTypeMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSenderRecRecordTypeMapping, (Object)newSenderRecRecordTypeMapping));
        }
    }

    public SenderRecCompositeTypeMapping getComplexTypeMapping() {
        return this.complexTypeMapping;
    }

    public NotificationChain basicSetComplexTypeMapping(SenderRecCompositeTypeMapping newComplexTypeMapping, NotificationChain msgs) {
        SenderRecCompositeTypeMapping oldComplexTypeMapping = this.complexTypeMapping;
        this.complexTypeMapping = newComplexTypeMapping;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldComplexTypeMapping, (Object)newComplexTypeMapping);
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
                msgs = ((InternalEObject)this.complexTypeMapping).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newComplexTypeMapping != null) {
                msgs = ((InternalEObject)newComplexTypeMapping).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetComplexTypeMapping(newComplexTypeMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newComplexTypeMapping, (Object)newComplexTypeMapping));
        }
    }

    public SenderRecRecordElementMappingRecordElement getRecordElement() {
        return this.recordElement;
    }

    public NotificationChain basicSetRecordElement(SenderRecRecordElementMappingRecordElement newRecordElement, NotificationChain msgs) {
        SenderRecRecordElementMappingRecordElement oldRecordElement = this.recordElement;
        this.recordElement = newRecordElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRecordElement, (Object)newRecordElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setRecordElement(SenderRecRecordElementMappingRecordElement newRecordElement) {
        if (newRecordElement != this.recordElement) {
            NotificationChain msgs = null;
            if (this.recordElement != null) {
                msgs = ((InternalEObject)this.recordElement).eInverseRemove((InternalEObject)this, 4, SenderRecRecordElementMappingRecordElement.class, msgs);
            }
            if (newRecordElement != null) {
                msgs = ((InternalEObject)newRecordElement).eInverseAdd((InternalEObject)this, 4, SenderRecRecordElementMappingRecordElement.class, msgs);
            }
            if ((msgs = this.basicSetRecordElement(newRecordElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newRecordElement, (Object)newRecordElement));
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
                return this.basicSetSenderRecRecordTypeMapping((SenderRecRecordTypeMapping)otherEnd, msgs);
            }
            case 6: {
                if (this.recordElement != null) {
                    msgs = ((InternalEObject)this.recordElement).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetRecordElement((SenderRecRecordElementMappingRecordElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSenderRecRecordTypeMapping(null, msgs);
            }
            case 5: {
                return this.basicSetComplexTypeMapping(null, msgs);
            }
            case 6: {
                return this.basicSetRecordElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, SenderRecRecordTypeMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSenderRecRecordTypeMapping();
            }
            case 5: {
                return this.getComplexTypeMapping();
            }
            case 6: {
                return this.getRecordElement();
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
                this.setSenderRecRecordTypeMapping((SenderRecRecordTypeMapping)newValue);
                return;
            }
            case 5: {
                this.setComplexTypeMapping((SenderRecCompositeTypeMapping)newValue);
                return;
            }
            case 6: {
                this.setRecordElement((SenderRecRecordElementMappingRecordElement)newValue);
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
                this.setSenderRecRecordTypeMapping(null);
                return;
            }
            case 5: {
                this.setComplexTypeMapping(null);
                return;
            }
            case 6: {
                this.setRecordElement(null);
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
                return this.getSenderRecRecordTypeMapping() != null;
            }
            case 5: {
                return this.complexTypeMapping != null;
            }
            case 6: {
                return this.recordElement != null;
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

