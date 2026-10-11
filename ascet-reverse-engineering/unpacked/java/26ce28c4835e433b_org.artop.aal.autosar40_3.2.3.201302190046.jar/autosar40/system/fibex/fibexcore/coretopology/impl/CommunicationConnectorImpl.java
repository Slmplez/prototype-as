/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.coretopology.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.system.fibex.fibexcore.coretopology.CommConnectorPort;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.fibex.fibexcore.coretopology.PncGatewayTypeEnum;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommunicationConnectorImpl
extends IdentifiableImpl
implements CommunicationConnector,
IReferringClass {
    protected CommunicationController commController;
    protected EList<CommConnectorPort> ecuCommPortInstances;
    protected static final PncGatewayTypeEnum PNC_GATEWAY_TYPE_EDEFAULT = PncGatewayTypeEnum.NONE;
    protected PncGatewayTypeEnum pncGatewayType = PNC_GATEWAY_TYPE_EDEFAULT;
    protected boolean pncGatewayTypeESet;

    protected CommunicationConnectorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.COMMUNICATION_CONNECTOR;
    }

    @Override
    public EcuInstance getEcuInstance() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (EcuInstance)this.eContainer();
    }

    public NotificationChain basicSetEcuInstance(EcuInstance newEcuInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcuInstance, 18, msgs);
        return msgs;
    }

    @Override
    public void setEcuInstance(EcuInstance newEcuInstance) {
        if (newEcuInstance != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newEcuInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcuInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcuInstance != null) {
                msgs = ((InternalEObject)newEcuInstance).eInverseAdd((InternalEObject)this, 29, EcuInstance.class, msgs);
            }
            if ((msgs = this.basicSetEcuInstance(newEcuInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newEcuInstance, (Object)newEcuInstance));
        }
    }

    @Override
    public CommunicationController getCommController() {
        if (this.commController != null && this.commController.eIsProxy()) {
            InternalEObject oldCommController = (InternalEObject)this.commController;
            this.commController = (CommunicationController)this.eResolveProxy(oldCommController);
            if (this.commController != oldCommController && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldCommController, (Object)this.commController));
            }
        }
        return this.commController;
    }

    public CommunicationController basicGetCommController() {
        return this.commController;
    }

    @Override
    public void setCommController(CommunicationController newCommController) {
        CommunicationController oldCommController = this.commController;
        this.commController = newCommController;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldCommController, (Object)this.commController));
        }
    }

    @Override
    public EList<CommConnectorPort> getEcuCommPortInstances() {
        if (this.ecuCommPortInstances == null) {
            this.ecuCommPortInstances = new EObjectContainmentWithInverseEList(CommConnectorPort.class, (InternalEObject)this, 20, 18);
        }
        return this.ecuCommPortInstances;
    }

    @Override
    public PncGatewayTypeEnum getPncGatewayType() {
        return this.pncGatewayType;
    }

    @Override
    public void setPncGatewayType(PncGatewayTypeEnum newPncGatewayType) {
        PncGatewayTypeEnum oldPncGatewayType = this.pncGatewayType;
        this.pncGatewayType = newPncGatewayType == null ? PNC_GATEWAY_TYPE_EDEFAULT : newPncGatewayType;
        boolean oldPncGatewayTypeESet = this.pncGatewayTypeESet;
        this.pncGatewayTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldPncGatewayType, (Object)this.pncGatewayType, !oldPncGatewayTypeESet));
        }
    }

    @Override
    public void unsetPncGatewayType() {
        PncGatewayTypeEnum oldPncGatewayType = this.pncGatewayType;
        boolean oldPncGatewayTypeESet = this.pncGatewayTypeESet;
        this.pncGatewayType = PNC_GATEWAY_TYPE_EDEFAULT;
        this.pncGatewayTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldPncGatewayType, (Object)PNC_GATEWAY_TYPE_EDEFAULT, oldPncGatewayTypeESet));
        }
    }

    @Override
    public boolean isSetPncGatewayType() {
        return this.pncGatewayTypeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcuInstance((EcuInstance)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getEcuCommPortInstances()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetEcuInstance(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getEcuCommPortInstances()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 29, EcuInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getEcuInstance();
            }
            case 19: {
                if (resolve) {
                    return this.getCommController();
                }
                return this.basicGetCommController();
            }
            case 20: {
                return this.getEcuCommPortInstances();
            }
            case 21: {
                return this.getPncGatewayType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setEcuInstance((EcuInstance)newValue);
                return;
            }
            case 19: {
                this.setCommController((CommunicationController)newValue);
                return;
            }
            case 20: {
                this.getEcuCommPortInstances().clear();
                this.getEcuCommPortInstances().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setPncGatewayType((PncGatewayTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setEcuInstance(null);
                return;
            }
            case 19: {
                this.setCommController(null);
                return;
            }
            case 20: {
                this.getEcuCommPortInstances().clear();
                return;
            }
            case 21: {
                this.unsetPncGatewayType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getEcuInstance() != null;
            }
            case 19: {
                return this.commController != null;
            }
            case 20: {
                return this.ecuCommPortInstances != null && !this.ecuCommPortInstances.isEmpty();
            }
            case 21: {
                return this.isSetPncGatewayType();
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (pncGatewayType: ");
        if (this.pncGatewayTypeESet) {
            result.append((Object)this.pncGatewayType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

