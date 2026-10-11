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

import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.SenderRecCompositeTypeMapping;
import autosar40.system.datamapping.SenderRecRecordElementMapping;
import autosar40.system.datamapping.SenderRecRecordTypeMapping;
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

public class SenderRecRecordElementMappingImpl
extends ARObjectImpl
implements SenderRecRecordElementMapping,
IReferringClass {
    protected ApplicationRecordElement applicationRecordElement;
    protected SenderRecCompositeTypeMapping complexTypeMapping;
    protected ImplementationDataTypeElement implementationRecordElement;
    protected SystemSignal systemSignal;

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

    public ApplicationRecordElement getApplicationRecordElement() {
        if (this.applicationRecordElement != null && this.applicationRecordElement.eIsProxy()) {
            InternalEObject oldApplicationRecordElement = (InternalEObject)this.applicationRecordElement;
            this.applicationRecordElement = (ApplicationRecordElement)this.eResolveProxy(oldApplicationRecordElement);
            if (this.applicationRecordElement != oldApplicationRecordElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldApplicationRecordElement, (Object)this.applicationRecordElement));
            }
        }
        return this.applicationRecordElement;
    }

    public ApplicationRecordElement basicGetApplicationRecordElement() {
        return this.applicationRecordElement;
    }

    public void setApplicationRecordElement(ApplicationRecordElement newApplicationRecordElement) {
        ApplicationRecordElement oldApplicationRecordElement = this.applicationRecordElement;
        this.applicationRecordElement = newApplicationRecordElement;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldApplicationRecordElement, (Object)this.applicationRecordElement));
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

    public ImplementationDataTypeElement getImplementationRecordElement() {
        if (this.implementationRecordElement != null && this.implementationRecordElement.eIsProxy()) {
            InternalEObject oldImplementationRecordElement = (InternalEObject)this.implementationRecordElement;
            this.implementationRecordElement = (ImplementationDataTypeElement)this.eResolveProxy(oldImplementationRecordElement);
            if (this.implementationRecordElement != oldImplementationRecordElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldImplementationRecordElement, (Object)this.implementationRecordElement));
            }
        }
        return this.implementationRecordElement;
    }

    public ImplementationDataTypeElement basicGetImplementationRecordElement() {
        return this.implementationRecordElement;
    }

    public void setImplementationRecordElement(ImplementationDataTypeElement newImplementationRecordElement) {
        ImplementationDataTypeElement oldImplementationRecordElement = this.implementationRecordElement;
        this.implementationRecordElement = newImplementationRecordElement;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldImplementationRecordElement, (Object)this.implementationRecordElement));
        }
    }

    public SystemSignal getSystemSignal() {
        if (this.systemSignal != null && this.systemSignal.eIsProxy()) {
            InternalEObject oldSystemSignal = (InternalEObject)this.systemSignal;
            this.systemSignal = (SystemSignal)this.eResolveProxy(oldSystemSignal);
            if (this.systemSignal != oldSystemSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldSystemSignal, (Object)this.systemSignal));
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
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSystemSignal, (Object)this.systemSignal));
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
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSenderRecRecordTypeMapping(null, msgs);
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
                if (resolve) {
                    return this.getApplicationRecordElement();
                }
                return this.basicGetApplicationRecordElement();
            }
            case 6: {
                return this.getComplexTypeMapping();
            }
            case 7: {
                if (resolve) {
                    return this.getImplementationRecordElement();
                }
                return this.basicGetImplementationRecordElement();
            }
            case 8: {
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
                this.setSenderRecRecordTypeMapping((SenderRecRecordTypeMapping)newValue);
                return;
            }
            case 5: {
                this.setApplicationRecordElement((ApplicationRecordElement)newValue);
                return;
            }
            case 6: {
                this.setComplexTypeMapping((SenderRecCompositeTypeMapping)newValue);
                return;
            }
            case 7: {
                this.setImplementationRecordElement((ImplementationDataTypeElement)newValue);
                return;
            }
            case 8: {
                this.setSystemSignal((SystemSignal)newValue);
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
                this.setApplicationRecordElement(null);
                return;
            }
            case 6: {
                this.setComplexTypeMapping(null);
                return;
            }
            case 7: {
                this.setImplementationRecordElement(null);
                return;
            }
            case 8: {
                this.setSystemSignal(null);
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
                return this.applicationRecordElement != null;
            }
            case 6: {
                return this.complexTypeMapping != null;
            }
            case 7: {
                return this.implementationRecordElement != null;
            }
            case 8: {
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

