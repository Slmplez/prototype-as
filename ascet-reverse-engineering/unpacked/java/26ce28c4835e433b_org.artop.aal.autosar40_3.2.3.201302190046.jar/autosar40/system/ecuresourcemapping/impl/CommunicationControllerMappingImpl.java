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
package autosar40.system.ecuresourcemapping.impl;

import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.ecuresourcemapping.CommunicationControllerMapping;
import autosar40.system.ecuresourcemapping.ECUMapping;
import autosar40.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CommunicationControllerMappingImpl
extends ARObjectImpl
implements CommunicationControllerMapping,
IReferringClass {
    protected CommunicationController communicationController;
    protected HwElement hwCommunicationController;

    protected CommunicationControllerMappingImpl() {
    }

    protected EClass eStaticClass() {
        return EcuresourcemappingPackage.Literals.COMMUNICATION_CONTROLLER_MAPPING;
    }

    public ECUMapping getECUMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ECUMapping)this.eContainer();
    }

    public NotificationChain basicSetECUMapping(ECUMapping newECUMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newECUMapping, 4, msgs);
        return msgs;
    }

    public void setECUMapping(ECUMapping newECUMapping) {
        if (newECUMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newECUMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newECUMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newECUMapping != null) {
                msgs = ((InternalEObject)newECUMapping).eInverseAdd((InternalEObject)this, 19, ECUMapping.class, msgs);
            }
            if ((msgs = this.basicSetECUMapping(newECUMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newECUMapping, (Object)newECUMapping));
        }
    }

    public CommunicationController getCommunicationController() {
        if (this.communicationController != null && this.communicationController.eIsProxy()) {
            InternalEObject oldCommunicationController = (InternalEObject)this.communicationController;
            this.communicationController = (CommunicationController)this.eResolveProxy(oldCommunicationController);
            if (this.communicationController != oldCommunicationController && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldCommunicationController, (Object)this.communicationController));
            }
        }
        return this.communicationController;
    }

    public CommunicationController basicGetCommunicationController() {
        return this.communicationController;
    }

    public void setCommunicationController(CommunicationController newCommunicationController) {
        CommunicationController oldCommunicationController = this.communicationController;
        this.communicationController = newCommunicationController;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCommunicationController, (Object)this.communicationController));
        }
    }

    public HwElement getHwCommunicationController() {
        if (this.hwCommunicationController != null && this.hwCommunicationController.eIsProxy()) {
            InternalEObject oldHwCommunicationController = (InternalEObject)this.hwCommunicationController;
            this.hwCommunicationController = (HwElement)this.eResolveProxy(oldHwCommunicationController);
            if (this.hwCommunicationController != oldHwCommunicationController && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldHwCommunicationController, (Object)this.hwCommunicationController));
            }
        }
        return this.hwCommunicationController;
    }

    public HwElement basicGetHwCommunicationController() {
        return this.hwCommunicationController;
    }

    public void setHwCommunicationController(HwElement newHwCommunicationController) {
        HwElement oldHwCommunicationController = this.hwCommunicationController;
        this.hwCommunicationController = newHwCommunicationController;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldHwCommunicationController, (Object)this.hwCommunicationController));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetECUMapping((ECUMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetECUMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ECUMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getECUMapping();
            }
            case 5: {
                if (resolve) {
                    return this.getCommunicationController();
                }
                return this.basicGetCommunicationController();
            }
            case 6: {
                if (resolve) {
                    return this.getHwCommunicationController();
                }
                return this.basicGetHwCommunicationController();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setECUMapping((ECUMapping)newValue);
                return;
            }
            case 5: {
                this.setCommunicationController((CommunicationController)newValue);
                return;
            }
            case 6: {
                this.setHwCommunicationController((HwElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setECUMapping(null);
                return;
            }
            case 5: {
                this.setCommunicationController(null);
                return;
            }
            case 6: {
                this.setHwCommunicationController(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getECUMapping() != null;
            }
            case 5: {
                return this.communicationController != null;
            }
            case 6: {
                return this.hwCommunicationController != null;
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

