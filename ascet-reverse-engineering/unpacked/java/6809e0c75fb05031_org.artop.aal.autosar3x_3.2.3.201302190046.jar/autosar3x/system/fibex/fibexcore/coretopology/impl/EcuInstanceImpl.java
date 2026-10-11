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
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar3x.system.fibex.fibexcore.coretopology.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.IPduGroup;
import autosar3x.system.fibex.fibexcore.corecommunication.PdurIPduGroup;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar3x.system.fibex.fibexcore.impl.FibexElementImpl;
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
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcuInstanceImpl
extends FibexElementImpl
implements EcuInstance,
IReferringClass {
    protected EList<IPduGroup> associatedIPduGroups;
    protected EList<PdurIPduGroup> associatedPdurIPduGroups;
    protected static final Integer COM_CONFIGURATION_ID_EDEFAULT = new Integer(0);
    protected Integer comConfigurationId = COM_CONFIGURATION_ID_EDEFAULT;
    protected boolean comConfigurationIdESet;
    protected static final Double COM_PROCESSING_PERIOD_EDEFAULT = new Double(0.0);
    protected Double comProcessingPeriod = COM_PROCESSING_PERIOD_EDEFAULT;
    protected boolean comProcessingPeriodESet;
    protected static final Double COM_PROCESSING_PERIOD_GW_EDEFAULT = new Double(0.0);
    protected Double comProcessingPeriodGw = COM_PROCESSING_PERIOD_GW_EDEFAULT;
    protected boolean comProcessingPeriodGwESet;
    protected static final Double COM_PROCESSING_PERIOD_RX_EDEFAULT = new Double(0.0);
    protected Double comProcessingPeriodRx = COM_PROCESSING_PERIOD_RX_EDEFAULT;
    protected boolean comProcessingPeriodRxESet;
    protected EList<CommunicationController> commControllers;
    protected EList<CommunicationConnector> connectors;
    protected static final Integer DIAGNOSTIC_ADDRESS_EDEFAULT = new Integer(0);
    protected Integer diagnosticAddress = DIAGNOSTIC_ADDRESS_EDEFAULT;
    protected boolean diagnosticAddressESet;
    protected static final Integer PDU_RCONFIGURATION_ID_EDEFAULT = new Integer(0);
    protected Integer pduRConfigurationId = PDU_RCONFIGURATION_ID_EDEFAULT;
    protected boolean pduRConfigurationIdESet;
    protected EList<Integer> responseAddress;
    protected static final Boolean SLEEP_MODE_SUPPORTED_EDEFAULT = Boolean.FALSE;
    protected Boolean sleepModeSupported = SLEEP_MODE_SUPPORTED_EDEFAULT;
    protected boolean sleepModeSupportedESet;
    protected static final Boolean WAKE_UP_OVER_BUS_SUPPORTED_EDEFAULT = Boolean.FALSE;
    protected Boolean wakeUpOverBusSupported = WAKE_UP_OVER_BUS_SUPPORTED_EDEFAULT;
    protected boolean wakeUpOverBusSupportedESet;

    protected EcuInstanceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.ECU_INSTANCE;
    }

    @Override
    public EList<IPduGroup> getAssociatedIPduGroups() {
        if (this.associatedIPduGroups == null) {
            this.associatedIPduGroups = new EObjectResolvingReferringEList(IPduGroup.class, (InternalEObject)this, 19);
        }
        return this.associatedIPduGroups;
    }

    @Override
    public EList<PdurIPduGroup> getAssociatedPdurIPduGroups() {
        if (this.associatedPdurIPduGroups == null) {
            this.associatedPdurIPduGroups = new EObjectResolvingReferringEList(PdurIPduGroup.class, (InternalEObject)this, 20);
        }
        return this.associatedPdurIPduGroups;
    }

    @Override
    public Integer getComConfigurationId() {
        return this.comConfigurationId;
    }

    @Override
    public void setComConfigurationId(Integer newComConfigurationId) {
        Integer oldComConfigurationId = this.comConfigurationId;
        this.comConfigurationId = newComConfigurationId;
        boolean oldComConfigurationIdESet = this.comConfigurationIdESet;
        this.comConfigurationIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldComConfigurationId, (Object)this.comConfigurationId, !oldComConfigurationIdESet));
        }
    }

    @Override
    public void unsetComConfigurationId() {
        Integer oldComConfigurationId = this.comConfigurationId;
        boolean oldComConfigurationIdESet = this.comConfigurationIdESet;
        this.comConfigurationId = COM_CONFIGURATION_ID_EDEFAULT;
        this.comConfigurationIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldComConfigurationId, (Object)COM_CONFIGURATION_ID_EDEFAULT, oldComConfigurationIdESet));
        }
    }

    @Override
    public boolean isSetComConfigurationId() {
        return this.comConfigurationIdESet;
    }

    @Override
    public Double getComProcessingPeriod() {
        return this.comProcessingPeriod;
    }

    @Override
    public void setComProcessingPeriod(Double newComProcessingPeriod) {
        Double oldComProcessingPeriod = this.comProcessingPeriod;
        this.comProcessingPeriod = newComProcessingPeriod;
        boolean oldComProcessingPeriodESet = this.comProcessingPeriodESet;
        this.comProcessingPeriodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldComProcessingPeriod, (Object)this.comProcessingPeriod, !oldComProcessingPeriodESet));
        }
    }

    @Override
    public void unsetComProcessingPeriod() {
        Double oldComProcessingPeriod = this.comProcessingPeriod;
        boolean oldComProcessingPeriodESet = this.comProcessingPeriodESet;
        this.comProcessingPeriod = COM_PROCESSING_PERIOD_EDEFAULT;
        this.comProcessingPeriodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldComProcessingPeriod, (Object)COM_PROCESSING_PERIOD_EDEFAULT, oldComProcessingPeriodESet));
        }
    }

    @Override
    public boolean isSetComProcessingPeriod() {
        return this.comProcessingPeriodESet;
    }

    @Override
    public Double getComProcessingPeriodGw() {
        return this.comProcessingPeriodGw;
    }

    @Override
    public void setComProcessingPeriodGw(Double newComProcessingPeriodGw) {
        Double oldComProcessingPeriodGw = this.comProcessingPeriodGw;
        this.comProcessingPeriodGw = newComProcessingPeriodGw;
        boolean oldComProcessingPeriodGwESet = this.comProcessingPeriodGwESet;
        this.comProcessingPeriodGwESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldComProcessingPeriodGw, (Object)this.comProcessingPeriodGw, !oldComProcessingPeriodGwESet));
        }
    }

    @Override
    public void unsetComProcessingPeriodGw() {
        Double oldComProcessingPeriodGw = this.comProcessingPeriodGw;
        boolean oldComProcessingPeriodGwESet = this.comProcessingPeriodGwESet;
        this.comProcessingPeriodGw = COM_PROCESSING_PERIOD_GW_EDEFAULT;
        this.comProcessingPeriodGwESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldComProcessingPeriodGw, (Object)COM_PROCESSING_PERIOD_GW_EDEFAULT, oldComProcessingPeriodGwESet));
        }
    }

    @Override
    public boolean isSetComProcessingPeriodGw() {
        return this.comProcessingPeriodGwESet;
    }

    @Override
    public Double getComProcessingPeriodRx() {
        return this.comProcessingPeriodRx;
    }

    @Override
    public void setComProcessingPeriodRx(Double newComProcessingPeriodRx) {
        Double oldComProcessingPeriodRx = this.comProcessingPeriodRx;
        this.comProcessingPeriodRx = newComProcessingPeriodRx;
        boolean oldComProcessingPeriodRxESet = this.comProcessingPeriodRxESet;
        this.comProcessingPeriodRxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldComProcessingPeriodRx, (Object)this.comProcessingPeriodRx, !oldComProcessingPeriodRxESet));
        }
    }

    @Override
    public void unsetComProcessingPeriodRx() {
        Double oldComProcessingPeriodRx = this.comProcessingPeriodRx;
        boolean oldComProcessingPeriodRxESet = this.comProcessingPeriodRxESet;
        this.comProcessingPeriodRx = COM_PROCESSING_PERIOD_RX_EDEFAULT;
        this.comProcessingPeriodRxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldComProcessingPeriodRx, (Object)COM_PROCESSING_PERIOD_RX_EDEFAULT, oldComProcessingPeriodRxESet));
        }
    }

    @Override
    public boolean isSetComProcessingPeriodRx() {
        return this.comProcessingPeriodRxESet;
    }

    @Override
    public EList<CommunicationController> getCommControllers() {
        if (this.commControllers == null) {
            this.commControllers = new EObjectContainmentWithInverseEList(CommunicationController.class, (InternalEObject)this, 25, 17);
        }
        return this.commControllers;
    }

    @Override
    public EList<CommunicationConnector> getConnectors() {
        if (this.connectors == null) {
            this.connectors = new EObjectContainmentWithInverseEList(CommunicationConnector.class, (InternalEObject)this, 26, 17);
        }
        return this.connectors;
    }

    @Override
    public Integer getDiagnosticAddress() {
        return this.diagnosticAddress;
    }

    @Override
    public void setDiagnosticAddress(Integer newDiagnosticAddress) {
        Integer oldDiagnosticAddress = this.diagnosticAddress;
        this.diagnosticAddress = newDiagnosticAddress;
        boolean oldDiagnosticAddressESet = this.diagnosticAddressESet;
        this.diagnosticAddressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldDiagnosticAddress, (Object)this.diagnosticAddress, !oldDiagnosticAddressESet));
        }
    }

    @Override
    public void unsetDiagnosticAddress() {
        Integer oldDiagnosticAddress = this.diagnosticAddress;
        boolean oldDiagnosticAddressESet = this.diagnosticAddressESet;
        this.diagnosticAddress = DIAGNOSTIC_ADDRESS_EDEFAULT;
        this.diagnosticAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldDiagnosticAddress, (Object)DIAGNOSTIC_ADDRESS_EDEFAULT, oldDiagnosticAddressESet));
        }
    }

    @Override
    public boolean isSetDiagnosticAddress() {
        return this.diagnosticAddressESet;
    }

    @Override
    public Integer getPduRConfigurationId() {
        return this.pduRConfigurationId;
    }

    @Override
    public void setPduRConfigurationId(Integer newPduRConfigurationId) {
        Integer oldPduRConfigurationId = this.pduRConfigurationId;
        this.pduRConfigurationId = newPduRConfigurationId;
        boolean oldPduRConfigurationIdESet = this.pduRConfigurationIdESet;
        this.pduRConfigurationIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldPduRConfigurationId, (Object)this.pduRConfigurationId, !oldPduRConfigurationIdESet));
        }
    }

    @Override
    public void unsetPduRConfigurationId() {
        Integer oldPduRConfigurationId = this.pduRConfigurationId;
        boolean oldPduRConfigurationIdESet = this.pduRConfigurationIdESet;
        this.pduRConfigurationId = PDU_RCONFIGURATION_ID_EDEFAULT;
        this.pduRConfigurationIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldPduRConfigurationId, (Object)PDU_RCONFIGURATION_ID_EDEFAULT, oldPduRConfigurationIdESet));
        }
    }

    @Override
    public boolean isSetPduRConfigurationId() {
        return this.pduRConfigurationIdESet;
    }

    @Override
    public EList<Integer> getResponseAddress() {
        if (this.responseAddress == null) {
            this.responseAddress = new EDataTypeUniqueEList.Unsettable(Integer.class, (InternalEObject)this, 29);
        }
        return this.responseAddress;
    }

    @Override
    public void unsetResponseAddress() {
        if (this.responseAddress != null) {
            ((InternalEList.Unsettable)this.responseAddress).unset();
        }
    }

    @Override
    public boolean isSetResponseAddress() {
        return this.responseAddress != null && ((InternalEList.Unsettable)this.responseAddress).isSet();
    }

    @Override
    public Boolean getSleepModeSupported() {
        return this.sleepModeSupported;
    }

    @Override
    public void setSleepModeSupported(Boolean newSleepModeSupported) {
        Boolean oldSleepModeSupported = this.sleepModeSupported;
        this.sleepModeSupported = newSleepModeSupported;
        boolean oldSleepModeSupportedESet = this.sleepModeSupportedESet;
        this.sleepModeSupportedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldSleepModeSupported, (Object)this.sleepModeSupported, !oldSleepModeSupportedESet));
        }
    }

    @Override
    public void unsetSleepModeSupported() {
        Boolean oldSleepModeSupported = this.sleepModeSupported;
        boolean oldSleepModeSupportedESet = this.sleepModeSupportedESet;
        this.sleepModeSupported = SLEEP_MODE_SUPPORTED_EDEFAULT;
        this.sleepModeSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldSleepModeSupported, (Object)SLEEP_MODE_SUPPORTED_EDEFAULT, oldSleepModeSupportedESet));
        }
    }

    @Override
    public boolean isSetSleepModeSupported() {
        return this.sleepModeSupportedESet;
    }

    @Override
    public Boolean getWakeUpOverBusSupported() {
        return this.wakeUpOverBusSupported;
    }

    @Override
    public void setWakeUpOverBusSupported(Boolean newWakeUpOverBusSupported) {
        Boolean oldWakeUpOverBusSupported = this.wakeUpOverBusSupported;
        this.wakeUpOverBusSupported = newWakeUpOverBusSupported;
        boolean oldWakeUpOverBusSupportedESet = this.wakeUpOverBusSupportedESet;
        this.wakeUpOverBusSupportedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldWakeUpOverBusSupported, (Object)this.wakeUpOverBusSupported, !oldWakeUpOverBusSupportedESet));
        }
    }

    @Override
    public void unsetWakeUpOverBusSupported() {
        Boolean oldWakeUpOverBusSupported = this.wakeUpOverBusSupported;
        boolean oldWakeUpOverBusSupportedESet = this.wakeUpOverBusSupportedESet;
        this.wakeUpOverBusSupported = WAKE_UP_OVER_BUS_SUPPORTED_EDEFAULT;
        this.wakeUpOverBusSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldWakeUpOverBusSupported, (Object)WAKE_UP_OVER_BUS_SUPPORTED_EDEFAULT, oldWakeUpOverBusSupportedESet));
        }
    }

    @Override
    public boolean isSetWakeUpOverBusSupported() {
        return this.wakeUpOverBusSupportedESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getCommControllers()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getConnectors()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getCommControllers()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getConnectors()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getAssociatedIPduGroups();
            }
            case 20: {
                return this.getAssociatedPdurIPduGroups();
            }
            case 21: {
                return this.getComConfigurationId();
            }
            case 22: {
                return this.getComProcessingPeriod();
            }
            case 23: {
                return this.getComProcessingPeriodGw();
            }
            case 24: {
                return this.getComProcessingPeriodRx();
            }
            case 25: {
                return this.getCommControllers();
            }
            case 26: {
                return this.getConnectors();
            }
            case 27: {
                return this.getDiagnosticAddress();
            }
            case 28: {
                return this.getPduRConfigurationId();
            }
            case 29: {
                return this.getResponseAddress();
            }
            case 30: {
                return this.getSleepModeSupported();
            }
            case 31: {
                return this.getWakeUpOverBusSupported();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getAssociatedIPduGroups().clear();
                this.getAssociatedIPduGroups().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getAssociatedPdurIPduGroups().clear();
                this.getAssociatedPdurIPduGroups().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setComConfigurationId((Integer)newValue);
                return;
            }
            case 22: {
                this.setComProcessingPeriod((Double)newValue);
                return;
            }
            case 23: {
                this.setComProcessingPeriodGw((Double)newValue);
                return;
            }
            case 24: {
                this.setComProcessingPeriodRx((Double)newValue);
                return;
            }
            case 25: {
                this.getCommControllers().clear();
                this.getCommControllers().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getConnectors().clear();
                this.getConnectors().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.setDiagnosticAddress((Integer)newValue);
                return;
            }
            case 28: {
                this.setPduRConfigurationId((Integer)newValue);
                return;
            }
            case 29: {
                this.getResponseAddress().clear();
                this.getResponseAddress().addAll((Collection)newValue);
                return;
            }
            case 30: {
                this.setSleepModeSupported((Boolean)newValue);
                return;
            }
            case 31: {
                this.setWakeUpOverBusSupported((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getAssociatedIPduGroups().clear();
                return;
            }
            case 20: {
                this.getAssociatedPdurIPduGroups().clear();
                return;
            }
            case 21: {
                this.unsetComConfigurationId();
                return;
            }
            case 22: {
                this.unsetComProcessingPeriod();
                return;
            }
            case 23: {
                this.unsetComProcessingPeriodGw();
                return;
            }
            case 24: {
                this.unsetComProcessingPeriodRx();
                return;
            }
            case 25: {
                this.getCommControllers().clear();
                return;
            }
            case 26: {
                this.getConnectors().clear();
                return;
            }
            case 27: {
                this.unsetDiagnosticAddress();
                return;
            }
            case 28: {
                this.unsetPduRConfigurationId();
                return;
            }
            case 29: {
                this.unsetResponseAddress();
                return;
            }
            case 30: {
                this.unsetSleepModeSupported();
                return;
            }
            case 31: {
                this.unsetWakeUpOverBusSupported();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.associatedIPduGroups != null && !this.associatedIPduGroups.isEmpty();
            }
            case 20: {
                return this.associatedPdurIPduGroups != null && !this.associatedPdurIPduGroups.isEmpty();
            }
            case 21: {
                return this.isSetComConfigurationId();
            }
            case 22: {
                return this.isSetComProcessingPeriod();
            }
            case 23: {
                return this.isSetComProcessingPeriodGw();
            }
            case 24: {
                return this.isSetComProcessingPeriodRx();
            }
            case 25: {
                return this.commControllers != null && !this.commControllers.isEmpty();
            }
            case 26: {
                return this.connectors != null && !this.connectors.isEmpty();
            }
            case 27: {
                return this.isSetDiagnosticAddress();
            }
            case 28: {
                return this.isSetPduRConfigurationId();
            }
            case 29: {
                return this.isSetResponseAddress();
            }
            case 30: {
                return this.isSetSleepModeSupported();
            }
            case 31: {
                return this.isSetWakeUpOverBusSupported();
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
        result.append(" (comConfigurationId: ");
        if (this.comConfigurationIdESet) {
            result.append(this.comConfigurationId);
        } else {
            result.append("<unset>");
        }
        result.append(", comProcessingPeriod: ");
        if (this.comProcessingPeriodESet) {
            result.append(this.comProcessingPeriod);
        } else {
            result.append("<unset>");
        }
        result.append(", comProcessingPeriodGw: ");
        if (this.comProcessingPeriodGwESet) {
            result.append(this.comProcessingPeriodGw);
        } else {
            result.append("<unset>");
        }
        result.append(", comProcessingPeriodRx: ");
        if (this.comProcessingPeriodRxESet) {
            result.append(this.comProcessingPeriodRx);
        } else {
            result.append("<unset>");
        }
        result.append(", diagnosticAddress: ");
        if (this.diagnosticAddressESet) {
            result.append(this.diagnosticAddress);
        } else {
            result.append("<unset>");
        }
        result.append(", pduRConfigurationId: ");
        if (this.pduRConfigurationIdESet) {
            result.append(this.pduRConfigurationId);
        } else {
            result.append("<unset>");
        }
        result.append(", responseAddress: ");
        result.append(this.responseAddress);
        result.append(", sleepModeSupported: ");
        if (this.sleepModeSupportedESet) {
            result.append(this.sleepModeSupported);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpOverBusSupported: ");
        if (this.wakeUpOverBusSupportedESet) {
            result.append(this.wakeUpOverBusSupported);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

