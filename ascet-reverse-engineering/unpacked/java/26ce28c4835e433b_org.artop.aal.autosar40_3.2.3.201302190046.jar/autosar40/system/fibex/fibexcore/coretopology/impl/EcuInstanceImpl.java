/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.coretopology.impl;

import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduGroup;
import autosar40.system.fibex.fibexcore.corecommunication.PdurIPduGroup;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import autosar40.system.swmapping.EcuPartition;
import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.TpAddress;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcuInstanceImpl
extends FibexElementImpl
implements EcuInstance,
IReferringClass {
    protected EList<ISignalIPduGroup> associatedComIPduGroups;
    protected EList<PdurIPduGroup> associatedPdurIPduGroups;
    protected EList<CanTpAddress> canTpAddress;
    protected static final Double COM_CONFIGURATION_GW_TIME_BASE_EDEFAULT = new Double(0.0);
    protected Double comConfigurationGwTimeBase = COM_CONFIGURATION_GW_TIME_BASE_EDEFAULT;
    protected boolean comConfigurationGwTimeBaseESet;
    protected static final Double COM_CONFIGURATION_RX_TIME_BASE_EDEFAULT = new Double(0.0);
    protected Double comConfigurationRxTimeBase = COM_CONFIGURATION_RX_TIME_BASE_EDEFAULT;
    protected boolean comConfigurationRxTimeBaseESet;
    protected static final Double COM_CONFIGURATION_TX_TIME_BASE_EDEFAULT = new Double(0.0);
    protected Double comConfigurationTxTimeBase = COM_CONFIGURATION_TX_TIME_BASE_EDEFAULT;
    protected boolean comConfigurationTxTimeBaseESet;
    protected static final Boolean COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION_EDEFAULT = Boolean.FALSE;
    protected Boolean comEnableMDTForCyclicTransmission = COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION_EDEFAULT;
    protected boolean comEnableMDTForCyclicTransmissionESet;
    protected EList<CommunicationController> commControllers;
    protected EList<CommunicationConnector> connectors;
    protected static final IntegerDatatype DIAGNOSTIC_ADDRESS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype diagnosticAddress = DIAGNOSTIC_ADDRESS_EDEFAULT.clone();
    protected boolean diagnosticAddressESet;
    protected EList<EcuPartition> partitions;
    protected static final Boolean SLEEP_MODE_SUPPORTED_EDEFAULT = Boolean.FALSE;
    protected Boolean sleepModeSupported = SLEEP_MODE_SUPPORTED_EDEFAULT;
    protected boolean sleepModeSupportedESet;
    protected EList<TpAddress> tpAddress;
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
    public EList<ISignalIPduGroup> getAssociatedComIPduGroups() {
        if (this.associatedComIPduGroups == null) {
            this.associatedComIPduGroups = new EObjectResolvingReferringEList(ISignalIPduGroup.class, (InternalEObject)this, 21);
        }
        return this.associatedComIPduGroups;
    }

    @Override
    public EList<PdurIPduGroup> getAssociatedPdurIPduGroups() {
        if (this.associatedPdurIPduGroups == null) {
            this.associatedPdurIPduGroups = new EObjectResolvingReferringEList(PdurIPduGroup.class, (InternalEObject)this, 22);
        }
        return this.associatedPdurIPduGroups;
    }

    @Override
    public EList<CanTpAddress> getCanTpAddress() {
        if (this.canTpAddress == null) {
            this.canTpAddress = new EObjectResolvingReferringEList(CanTpAddress.class, (InternalEObject)this, 23);
        }
        return this.canTpAddress;
    }

    @Override
    public Double getComConfigurationGwTimeBase() {
        return this.comConfigurationGwTimeBase;
    }

    @Override
    public void setComConfigurationGwTimeBase(Double newComConfigurationGwTimeBase) {
        Double oldComConfigurationGwTimeBase = this.comConfigurationGwTimeBase;
        this.comConfigurationGwTimeBase = newComConfigurationGwTimeBase;
        boolean oldComConfigurationGwTimeBaseESet = this.comConfigurationGwTimeBaseESet;
        this.comConfigurationGwTimeBaseESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldComConfigurationGwTimeBase, (Object)this.comConfigurationGwTimeBase, !oldComConfigurationGwTimeBaseESet));
        }
    }

    @Override
    public void unsetComConfigurationGwTimeBase() {
        Double oldComConfigurationGwTimeBase = this.comConfigurationGwTimeBase;
        boolean oldComConfigurationGwTimeBaseESet = this.comConfigurationGwTimeBaseESet;
        this.comConfigurationGwTimeBase = COM_CONFIGURATION_GW_TIME_BASE_EDEFAULT;
        this.comConfigurationGwTimeBaseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldComConfigurationGwTimeBase, (Object)COM_CONFIGURATION_GW_TIME_BASE_EDEFAULT, oldComConfigurationGwTimeBaseESet));
        }
    }

    @Override
    public boolean isSetComConfigurationGwTimeBase() {
        return this.comConfigurationGwTimeBaseESet;
    }

    @Override
    public Double getComConfigurationRxTimeBase() {
        return this.comConfigurationRxTimeBase;
    }

    @Override
    public void setComConfigurationRxTimeBase(Double newComConfigurationRxTimeBase) {
        Double oldComConfigurationRxTimeBase = this.comConfigurationRxTimeBase;
        this.comConfigurationRxTimeBase = newComConfigurationRxTimeBase;
        boolean oldComConfigurationRxTimeBaseESet = this.comConfigurationRxTimeBaseESet;
        this.comConfigurationRxTimeBaseESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldComConfigurationRxTimeBase, (Object)this.comConfigurationRxTimeBase, !oldComConfigurationRxTimeBaseESet));
        }
    }

    @Override
    public void unsetComConfigurationRxTimeBase() {
        Double oldComConfigurationRxTimeBase = this.comConfigurationRxTimeBase;
        boolean oldComConfigurationRxTimeBaseESet = this.comConfigurationRxTimeBaseESet;
        this.comConfigurationRxTimeBase = COM_CONFIGURATION_RX_TIME_BASE_EDEFAULT;
        this.comConfigurationRxTimeBaseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldComConfigurationRxTimeBase, (Object)COM_CONFIGURATION_RX_TIME_BASE_EDEFAULT, oldComConfigurationRxTimeBaseESet));
        }
    }

    @Override
    public boolean isSetComConfigurationRxTimeBase() {
        return this.comConfigurationRxTimeBaseESet;
    }

    @Override
    public Double getComConfigurationTxTimeBase() {
        return this.comConfigurationTxTimeBase;
    }

    @Override
    public void setComConfigurationTxTimeBase(Double newComConfigurationTxTimeBase) {
        Double oldComConfigurationTxTimeBase = this.comConfigurationTxTimeBase;
        this.comConfigurationTxTimeBase = newComConfigurationTxTimeBase;
        boolean oldComConfigurationTxTimeBaseESet = this.comConfigurationTxTimeBaseESet;
        this.comConfigurationTxTimeBaseESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldComConfigurationTxTimeBase, (Object)this.comConfigurationTxTimeBase, !oldComConfigurationTxTimeBaseESet));
        }
    }

    @Override
    public void unsetComConfigurationTxTimeBase() {
        Double oldComConfigurationTxTimeBase = this.comConfigurationTxTimeBase;
        boolean oldComConfigurationTxTimeBaseESet = this.comConfigurationTxTimeBaseESet;
        this.comConfigurationTxTimeBase = COM_CONFIGURATION_TX_TIME_BASE_EDEFAULT;
        this.comConfigurationTxTimeBaseESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldComConfigurationTxTimeBase, (Object)COM_CONFIGURATION_TX_TIME_BASE_EDEFAULT, oldComConfigurationTxTimeBaseESet));
        }
    }

    @Override
    public boolean isSetComConfigurationTxTimeBase() {
        return this.comConfigurationTxTimeBaseESet;
    }

    @Override
    public Boolean getComEnableMDTForCyclicTransmission() {
        return this.comEnableMDTForCyclicTransmission;
    }

    @Override
    public void setComEnableMDTForCyclicTransmission(Boolean newComEnableMDTForCyclicTransmission) {
        Boolean oldComEnableMDTForCyclicTransmission = this.comEnableMDTForCyclicTransmission;
        this.comEnableMDTForCyclicTransmission = newComEnableMDTForCyclicTransmission;
        boolean oldComEnableMDTForCyclicTransmissionESet = this.comEnableMDTForCyclicTransmissionESet;
        this.comEnableMDTForCyclicTransmissionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldComEnableMDTForCyclicTransmission, (Object)this.comEnableMDTForCyclicTransmission, !oldComEnableMDTForCyclicTransmissionESet));
        }
    }

    @Override
    public void unsetComEnableMDTForCyclicTransmission() {
        Boolean oldComEnableMDTForCyclicTransmission = this.comEnableMDTForCyclicTransmission;
        boolean oldComEnableMDTForCyclicTransmissionESet = this.comEnableMDTForCyclicTransmissionESet;
        this.comEnableMDTForCyclicTransmission = COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION_EDEFAULT;
        this.comEnableMDTForCyclicTransmissionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldComEnableMDTForCyclicTransmission, (Object)COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION_EDEFAULT, oldComEnableMDTForCyclicTransmissionESet));
        }
    }

    @Override
    public boolean isSetComEnableMDTForCyclicTransmission() {
        return this.comEnableMDTForCyclicTransmissionESet;
    }

    @Override
    public EList<CommunicationController> getCommControllers() {
        if (this.commControllers == null) {
            this.commControllers = new EObjectContainmentWithInverseEList(CommunicationController.class, (InternalEObject)this, 28, 18);
        }
        return this.commControllers;
    }

    @Override
    public EList<CommunicationConnector> getConnectors() {
        if (this.connectors == null) {
            this.connectors = new EObjectContainmentWithInverseEList(CommunicationConnector.class, (InternalEObject)this, 29, 18);
        }
        return this.connectors;
    }

    @Override
    public Integer getDiagnosticAddress() {
        return (Integer)this.diagnosticAddress.basicGetValue();
    }

    @Override
    public void setDiagnosticAddress(Integer newDiagnosticAddress) {
        Integer oldDiagnosticAddress = (Integer)this.diagnosticAddress.basicGetValue();
        this.diagnosticAddress.basicSetValue((Object)newDiagnosticAddress);
        boolean oldDiagnosticAddressESet = this.diagnosticAddressESet;
        this.diagnosticAddressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldDiagnosticAddress, (Object)newDiagnosticAddress, !oldDiagnosticAddressESet));
        }
    }

    @Override
    public void unsetDiagnosticAddress() {
        Integer oldDiagnosticAddress = (Integer)this.diagnosticAddress.basicGetValue();
        boolean oldDiagnosticAddressESet = this.diagnosticAddressESet;
        this.diagnosticAddress = DIAGNOSTIC_ADDRESS_EDEFAULT.clone();
        this.diagnosticAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldDiagnosticAddress, (Object)DIAGNOSTIC_ADDRESS_EDEFAULT, oldDiagnosticAddressESet));
        }
    }

    @Override
    public boolean isSetDiagnosticAddress() {
        return this.diagnosticAddressESet;
    }

    @Override
    public EList<EcuPartition> getPartitions() {
        if (this.partitions == null) {
            this.partitions = new EObjectContainmentWithInverseEList(EcuPartition.class, (InternalEObject)this, 31, 18);
        }
        return this.partitions;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldSleepModeSupported, (Object)this.sleepModeSupported, !oldSleepModeSupportedESet));
        }
    }

    @Override
    public void unsetSleepModeSupported() {
        Boolean oldSleepModeSupported = this.sleepModeSupported;
        boolean oldSleepModeSupportedESet = this.sleepModeSupportedESet;
        this.sleepModeSupported = SLEEP_MODE_SUPPORTED_EDEFAULT;
        this.sleepModeSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldSleepModeSupported, (Object)SLEEP_MODE_SUPPORTED_EDEFAULT, oldSleepModeSupportedESet));
        }
    }

    @Override
    public boolean isSetSleepModeSupported() {
        return this.sleepModeSupportedESet;
    }

    @Override
    public EList<TpAddress> getTpAddress() {
        if (this.tpAddress == null) {
            this.tpAddress = new EObjectResolvingReferringEList(TpAddress.class, (InternalEObject)this, 33);
        }
        return this.tpAddress;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldWakeUpOverBusSupported, (Object)this.wakeUpOverBusSupported, !oldWakeUpOverBusSupportedESet));
        }
    }

    @Override
    public void unsetWakeUpOverBusSupported() {
        Boolean oldWakeUpOverBusSupported = this.wakeUpOverBusSupported;
        boolean oldWakeUpOverBusSupportedESet = this.wakeUpOverBusSupportedESet;
        this.wakeUpOverBusSupported = WAKE_UP_OVER_BUS_SUPPORTED_EDEFAULT;
        this.wakeUpOverBusSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldWakeUpOverBusSupported, (Object)WAKE_UP_OVER_BUS_SUPPORTED_EDEFAULT, oldWakeUpOverBusSupportedESet));
        }
    }

    @Override
    public boolean isSetWakeUpOverBusSupported() {
        return this.wakeUpOverBusSupportedESet;
    }

    @Override
    public IntegerDatatype getDiagnosticAddressData() {
        return this.diagnosticAddress.clone();
    }

    @Override
    public void setDiagnosticAddressData(IntegerDatatype newDiagnosticAddress) {
        this.diagnosticAddress.setRadix((int)newDiagnosticAddress.getRadix());
        this.diagnosticAddress.setNoOfDigits((int)newDiagnosticAddress.getNoOfDigits());
        this.setDiagnosticAddress(newDiagnosticAddress.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                return ((InternalEList)this.getCommControllers()).basicAdd((Object)otherEnd, msgs);
            }
            case 29: {
                return ((InternalEList)this.getConnectors()).basicAdd((Object)otherEnd, msgs);
            }
            case 31: {
                return ((InternalEList)this.getPartitions()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                return ((InternalEList)this.getCommControllers()).basicRemove((Object)otherEnd, msgs);
            }
            case 29: {
                return ((InternalEList)this.getConnectors()).basicRemove((Object)otherEnd, msgs);
            }
            case 31: {
                return ((InternalEList)this.getPartitions()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getAssociatedComIPduGroups();
            }
            case 22: {
                return this.getAssociatedPdurIPduGroups();
            }
            case 23: {
                return this.getCanTpAddress();
            }
            case 24: {
                return this.getComConfigurationGwTimeBase();
            }
            case 25: {
                return this.getComConfigurationRxTimeBase();
            }
            case 26: {
                return this.getComConfigurationTxTimeBase();
            }
            case 27: {
                return this.getComEnableMDTForCyclicTransmission();
            }
            case 28: {
                return this.getCommControllers();
            }
            case 29: {
                return this.getConnectors();
            }
            case 30: {
                return this.getDiagnosticAddress();
            }
            case 31: {
                return this.getPartitions();
            }
            case 32: {
                return this.getSleepModeSupported();
            }
            case 33: {
                return this.getTpAddress();
            }
            case 34: {
                return this.getWakeUpOverBusSupported();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getAssociatedComIPduGroups().clear();
                this.getAssociatedComIPduGroups().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getAssociatedPdurIPduGroups().clear();
                this.getAssociatedPdurIPduGroups().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getCanTpAddress().clear();
                this.getCanTpAddress().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setComConfigurationGwTimeBase((Double)newValue);
                return;
            }
            case 25: {
                this.setComConfigurationRxTimeBase((Double)newValue);
                return;
            }
            case 26: {
                this.setComConfigurationTxTimeBase((Double)newValue);
                return;
            }
            case 27: {
                this.setComEnableMDTForCyclicTransmission((Boolean)newValue);
                return;
            }
            case 28: {
                this.getCommControllers().clear();
                this.getCommControllers().addAll((Collection)newValue);
                return;
            }
            case 29: {
                this.getConnectors().clear();
                this.getConnectors().addAll((Collection)newValue);
                return;
            }
            case 30: {
                this.setDiagnosticAddress((Integer)newValue);
                return;
            }
            case 31: {
                this.getPartitions().clear();
                this.getPartitions().addAll((Collection)newValue);
                return;
            }
            case 32: {
                this.setSleepModeSupported((Boolean)newValue);
                return;
            }
            case 33: {
                this.getTpAddress().clear();
                this.getTpAddress().addAll((Collection)newValue);
                return;
            }
            case 34: {
                this.setWakeUpOverBusSupported((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getAssociatedComIPduGroups().clear();
                return;
            }
            case 22: {
                this.getAssociatedPdurIPduGroups().clear();
                return;
            }
            case 23: {
                this.getCanTpAddress().clear();
                return;
            }
            case 24: {
                this.unsetComConfigurationGwTimeBase();
                return;
            }
            case 25: {
                this.unsetComConfigurationRxTimeBase();
                return;
            }
            case 26: {
                this.unsetComConfigurationTxTimeBase();
                return;
            }
            case 27: {
                this.unsetComEnableMDTForCyclicTransmission();
                return;
            }
            case 28: {
                this.getCommControllers().clear();
                return;
            }
            case 29: {
                this.getConnectors().clear();
                return;
            }
            case 30: {
                this.unsetDiagnosticAddress();
                return;
            }
            case 31: {
                this.getPartitions().clear();
                return;
            }
            case 32: {
                this.unsetSleepModeSupported();
                return;
            }
            case 33: {
                this.getTpAddress().clear();
                return;
            }
            case 34: {
                this.unsetWakeUpOverBusSupported();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.associatedComIPduGroups != null && !this.associatedComIPduGroups.isEmpty();
            }
            case 22: {
                return this.associatedPdurIPduGroups != null && !this.associatedPdurIPduGroups.isEmpty();
            }
            case 23: {
                return this.canTpAddress != null && !this.canTpAddress.isEmpty();
            }
            case 24: {
                return this.isSetComConfigurationGwTimeBase();
            }
            case 25: {
                return this.isSetComConfigurationRxTimeBase();
            }
            case 26: {
                return this.isSetComConfigurationTxTimeBase();
            }
            case 27: {
                return this.isSetComEnableMDTForCyclicTransmission();
            }
            case 28: {
                return this.commControllers != null && !this.commControllers.isEmpty();
            }
            case 29: {
                return this.connectors != null && !this.connectors.isEmpty();
            }
            case 30: {
                return this.isSetDiagnosticAddress();
            }
            case 31: {
                return this.partitions != null && !this.partitions.isEmpty();
            }
            case 32: {
                return this.isSetSleepModeSupported();
            }
            case 33: {
                return this.tpAddress != null && !this.tpAddress.isEmpty();
            }
            case 34: {
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
        result.append(" (comConfigurationGwTimeBase: ");
        if (this.comConfigurationGwTimeBaseESet) {
            result.append(this.comConfigurationGwTimeBase);
        } else {
            result.append("<unset>");
        }
        result.append(", comConfigurationRxTimeBase: ");
        if (this.comConfigurationRxTimeBaseESet) {
            result.append(this.comConfigurationRxTimeBase);
        } else {
            result.append("<unset>");
        }
        result.append(", comConfigurationTxTimeBase: ");
        if (this.comConfigurationTxTimeBaseESet) {
            result.append(this.comConfigurationTxTimeBase);
        } else {
            result.append("<unset>");
        }
        result.append(", comEnableMDTForCyclicTransmission: ");
        if (this.comEnableMDTForCyclicTransmissionESet) {
            result.append(this.comEnableMDTForCyclicTransmission);
        } else {
            result.append("<unset>");
        }
        result.append(", diagnosticAddress: ");
        if (this.diagnosticAddressESet) {
            result.append(this.diagnosticAddress);
        } else {
            result.append("<unset>");
        }
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

