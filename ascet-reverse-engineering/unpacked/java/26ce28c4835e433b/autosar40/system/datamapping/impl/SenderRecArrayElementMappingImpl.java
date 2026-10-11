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
package autosar40.system.datamapping.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.IndexedArrayElement;
import autosar40.system.datamapping.SenderRecArrayElementMapping;
import autosar40.system.datamapping.SenderRecArrayTypeMapping;
import autosar40.system.datamapping.SenderRecCompositeTypeMapping;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;
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
    protected SenderRecCompositeTypeMapping complexTypeMapping;
    protected IndexedArrayElement indexedArrayElement;
    protected SystemSignal systemSignal;

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

    public IndexedArrayElement getIndexedArrayElement() {
        return this.indexedArrayElement;
    }

    public NotificationChain basicSetIndexedArrayElement(IndexedArrayElement newIndexedArrayElement, NotificationChain msgs) {
        IndexedArrayElement oldIndexedArrayElement = this.indexedArrayElement;
        this.indexedArrayElement = newIndexedArrayElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldIndexedArrayElement, (Object)newIndexedArrayElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setIndexedArrayElement(IndexedArrayElement newIndexedArrayElement) {
        if (newIndexedArrayElement != this.indexedArrayElement) {
            NotificationChain msgs = null;
            if (this.indexedArrayElement != null) {
                msgs = ((InternalEObject)this.indexedArrayElement).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newIndexedArrayElement != null) {
                msgs = ((InternalEObject)newIndexedArrayElement).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetIndexedArrayElement(newIndexedArrayElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newIndexedArrayElement, (Object)newIndexedArrayElement));
        }
    }

    public SystemSignal getSystemSignal() {
        if (this.systemSignal != null && this.systemSignal.eIsProxy()) {
            InternalEObject oldSystemSignal = (InternalEObject)this.systemSignal;
            this.systemSignal = (SystemSignal)this.eResolveProxy(oldSystemSignal);
            if (this.systemSignal != oldSystemSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldSystemSignal, (Object)this.systemSignal));
            }
        }
        return this.systemSignal;
    }

    public SystemSignal basicGetSystemSignal() {
        return this.systemSignal;
    }

    public void setSystemSignal(SystemSignal newSystemSignal) {
        SystemSignal oldSystemSignal = this.systemSignal;
        this.systemSignal = newSystemSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSystemSignal, (Object)this.systemSignal));
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
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSenderRecArrayTypeMapping(null, msgs);
            }
            case 5: {
                return this.basicSetComplexTypeMapping(null, msgs);
            }
            case 6: {
                return this.basicSetIndexedArrayElement(null, msgs);
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
                return this.getComplexTypeMapping();
            }
            case 6: {
                return this.getIndexedArrayElement();
            }
            case 7: {
                if (resolve) {
                    return this.getSystemSignal();
                }
                return this.basicGetSystemSignal();
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
                this.setComplexTypeMapping((SenderRecCompositeTypeMapping)newValue);
                return;
            }
            case 6: {
                this.setIndexedArrayElement((IndexedArrayElement)newValue);
                return;
            }
            case 7: {
                this.setSystemSignal((SystemSignal)newValue);
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
                this.setComplexTypeMapping(null);
                return;
            }
            case 6: {
                this.setIndexedArrayElement(null);
                return;
            }
            case 7: {
                this.setSystemSignal(null);
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
                return this.complexTypeMapping != null;
            }
            case 6: {
                return this.indexedArrayElement != null;
            }
            case 7: {
                return this.systemSignal != null;
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

