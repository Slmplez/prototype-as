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
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.topology.impl;

import autosar21.ecuresource.ECU;
import autosar21.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar21.system.topology.Connector;
import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.ECUInstance;
import autosar21.system.topology.ECUInstancePowerSupplyEnum;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.impl.TopologyElementImpl;
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
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ECUInstanceImpl
extends TopologyElementImpl
implements ECUInstance,
IReferringClass {
    protected static final Double COM_PROCESSING_PERIOD_EDEFAULT = new Double(0.0);
    protected Double comProcessingPeriod = COM_PROCESSING_PERIOD_EDEFAULT;
    protected boolean comProcessingPeriodESet;
    protected EList<ECUCommunicationPortInstance> commPorts;
    protected EList<Connector> connectors;
    protected static final Integer ECU_ADDRESS_EDEFAULT = new Integer(0);
    protected Integer ecuAddress = ECU_ADDRESS_EDEFAULT;
    protected boolean ecuAddressESet;
    protected ECU ecu;
    protected static final ECUInstancePowerSupplyEnum POWER_SUPPLY_EDEFAULT = ECUInstancePowerSupplyEnum.BATTERY;
    protected ECUInstancePowerSupplyEnum powerSupply = POWER_SUPPLY_EDEFAULT;
    protected boolean powerSupplyESet;
    protected static final ByteOrderEnum PROCESSING_UNIT_ENDIANNESS_EDEFAULT = ByteOrderEnum.MOST_SIGNIFICANT_BYTE_LAST;
    protected ByteOrderEnum processingUnitEndianness = PROCESSING_UNIT_ENDIANNESS_EDEFAULT;
    protected boolean processingUnitEndiannessESet;
    protected static final Boolean SLEEP_MODE_SUPPORTED_EDEFAULT = Boolean.FALSE;
    protected Boolean sleepModeSupported = SLEEP_MODE_SUPPORTED_EDEFAULT;
    protected boolean sleepModeSupportedESet;
    protected static final Boolean WAKE_UP_ON_INTERNAL_SUPPORTED_EDEFAULT = Boolean.FALSE;
    protected Boolean wakeUpOnInternalSupported = WAKE_UP_ON_INTERNAL_SUPPORTED_EDEFAULT;
    protected boolean wakeUpOnInternalSupportedESet;
    protected static final Boolean WAKE_UP_ON_IO_SUPPORTED_EDEFAULT = Boolean.FALSE;
    protected Boolean wakeUpOnIoSupported = WAKE_UP_ON_IO_SUPPORTED_EDEFAULT;
    protected boolean wakeUpOnIoSupportedESet;

    protected ECUInstanceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TopologyPackage.Literals.ECU_INSTANCE;
    }

    @Override
    public Double getCOMProcessingPeriod() {
        return this.comProcessingPeriod;
    }

    @Override
    public void setCOMProcessingPeriod(Double newCOMProcessingPeriod) {
        Double oldCOMProcessingPeriod = this.comProcessingPeriod;
        this.comProcessingPeriod = newCOMProcessingPeriod;
        boolean oldCOMProcessingPeriodESet = this.comProcessingPeriodESet;
        this.comProcessingPeriodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldCOMProcessingPeriod, (Object)this.comProcessingPeriod, !oldCOMProcessingPeriodESet));
        }
    }

    @Override
    public void unsetCOMProcessingPeriod() {
        Double oldCOMProcessingPeriod = this.comProcessingPeriod;
        boolean oldCOMProcessingPeriodESet = this.comProcessingPeriodESet;
        this.comProcessingPeriod = COM_PROCESSING_PERIOD_EDEFAULT;
        this.comProcessingPeriodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldCOMProcessingPeriod, (Object)COM_PROCESSING_PERIOD_EDEFAULT, oldCOMProcessingPeriodESet));
        }
    }

    @Override
    public boolean isSetCOMProcessingPeriod() {
        return this.comProcessingPeriodESet;
    }

    @Override
    public EList<ECUCommunicationPortInstance> getCommPorts() {
        if (this.commPorts == null) {
            this.commPorts = new EObjectContainmentWithInverseEList(ECUCommunicationPortInstance.class, (InternalEObject)this, 20, 16);
        }
        return this.commPorts;
    }

    @Override
    public EList<Connector> getConnectors() {
        if (this.connectors == null) {
            this.connectors = new EObjectContainmentWithInverseEList(Connector.class, (InternalEObject)this, 21, 16);
        }
        return this.connectors;
    }

    @Override
    public Integer getEcuAddress() {
        return this.ecuAddress;
    }

    @Override
    public void setEcuAddress(Integer newEcuAddress) {
        Integer oldEcuAddress = this.ecuAddress;
        this.ecuAddress = newEcuAddress;
        boolean oldEcuAddressESet = this.ecuAddressESet;
        this.ecuAddressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldEcuAddress, (Object)this.ecuAddress, !oldEcuAddressESet));
        }
    }

    @Override
    public void unsetEcuAddress() {
        Integer oldEcuAddress = this.ecuAddress;
        boolean oldEcuAddressESet = this.ecuAddressESet;
        this.ecuAddress = ECU_ADDRESS_EDEFAULT;
        this.ecuAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldEcuAddress, (Object)ECU_ADDRESS_EDEFAULT, oldEcuAddressESet));
        }
    }

    @Override
    public boolean isSetEcuAddress() {
        return this.ecuAddressESet;
    }

    @Override
    public ECU getEcu() {
        if (this.ecu != null && this.ecu.eIsProxy()) {
            InternalEObject oldEcu = (InternalEObject)this.ecu;
            this.ecu = (ECU)this.eResolveProxy(oldEcu);
            if (this.ecu != oldEcu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldEcu, (Object)this.ecu));
            }
        }
        return this.ecu;
    }

    public ECU basicGetEcu() {
        return this.ecu;
    }

    @Override
    public void setEcu(ECU newEcu) {
        ECU oldEcu = this.ecu;
        this.ecu = newEcu;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldEcu, (Object)this.ecu));
        }
    }

    @Override
    public ECUInstancePowerSupplyEnum getPowerSupply() {
        return this.powerSupply;
    }

    @Override
    public void setPowerSupply(ECUInstancePowerSupplyEnum newPowerSupply) {
        ECUInstancePowerSupplyEnum oldPowerSupply = this.powerSupply;
        this.powerSupply = newPowerSupply == null ? POWER_SUPPLY_EDEFAULT : newPowerSupply;
        boolean oldPowerSupplyESet = this.powerSupplyESet;
        this.powerSupplyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldPowerSupply, (Object)this.powerSupply, !oldPowerSupplyESet));
        }
    }

    @Override
    public void unsetPowerSupply() {
        ECUInstancePowerSupplyEnum oldPowerSupply = this.powerSupply;
        boolean oldPowerSupplyESet = this.powerSupplyESet;
        this.powerSupply = POWER_SUPPLY_EDEFAULT;
        this.powerSupplyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldPowerSupply, (Object)POWER_SUPPLY_EDEFAULT, oldPowerSupplyESet));
        }
    }

    @Override
    public boolean isSetPowerSupply() {
        return this.powerSupplyESet;
    }

    @Override
    public ByteOrderEnum getProcessingUnitEndianness() {
        return this.processingUnitEndianness;
    }

    @Override
    public void setProcessingUnitEndianness(ByteOrderEnum newProcessingUnitEndianness) {
        ByteOrderEnum oldProcessingUnitEndianness = this.processingUnitEndianness;
        this.processingUnitEndianness = newProcessingUnitEndianness == null ? PROCESSING_UNIT_ENDIANNESS_EDEFAULT : newProcessingUnitEndianness;
        boolean oldProcessingUnitEndiannessESet = this.processingUnitEndiannessESet;
        this.processingUnitEndiannessESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldProcessingUnitEndianness, (Object)this.processingUnitEndianness, !oldProcessingUnitEndiannessESet));
        }
    }

    @Override
    public void unsetProcessingUnitEndianness() {
        ByteOrderEnum oldProcessingUnitEndianness = this.processingUnitEndianness;
        boolean oldProcessingUnitEndiannessESet = this.processingUnitEndiannessESet;
        this.processingUnitEndianness = PROCESSING_UNIT_ENDIANNESS_EDEFAULT;
        this.processingUnitEndiannessESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldProcessingUnitEndianness, (Object)PROCESSING_UNIT_ENDIANNESS_EDEFAULT, oldProcessingUnitEndiannessESet));
        }
    }

    @Override
    public boolean isSetProcessingUnitEndianness() {
        return this.processingUnitEndiannessESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldSleepModeSupported, (Object)this.sleepModeSupported, !oldSleepModeSupportedESet));
        }
    }

    @Override
    public void unsetSleepModeSupported() {
        Boolean oldSleepModeSupported = this.sleepModeSupported;
        boolean oldSleepModeSupportedESet = this.sleepModeSupportedESet;
        this.sleepModeSupported = SLEEP_MODE_SUPPORTED_EDEFAULT;
        this.sleepModeSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldSleepModeSupported, (Object)SLEEP_MODE_SUPPORTED_EDEFAULT, oldSleepModeSupportedESet));
        }
    }

    @Override
    public boolean isSetSleepModeSupported() {
        return this.sleepModeSupportedESet;
    }

    @Override
    public Boolean getWakeUpOnInternalSupported() {
        return this.wakeUpOnInternalSupported;
    }

    @Override
    public void setWakeUpOnInternalSupported(Boolean newWakeUpOnInternalSupported) {
        Boolean oldWakeUpOnInternalSupported = this.wakeUpOnInternalSupported;
        this.wakeUpOnInternalSupported = newWakeUpOnInternalSupported;
        boolean oldWakeUpOnInternalSupportedESet = this.wakeUpOnInternalSupportedESet;
        this.wakeUpOnInternalSupportedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldWakeUpOnInternalSupported, (Object)this.wakeUpOnInternalSupported, !oldWakeUpOnInternalSupportedESet));
        }
    }

    @Override
    public void unsetWakeUpOnInternalSupported() {
        Boolean oldWakeUpOnInternalSupported = this.wakeUpOnInternalSupported;
        boolean oldWakeUpOnInternalSupportedESet = this.wakeUpOnInternalSupportedESet;
        this.wakeUpOnInternalSupported = WAKE_UP_ON_INTERNAL_SUPPORTED_EDEFAULT;
        this.wakeUpOnInternalSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldWakeUpOnInternalSupported, (Object)WAKE_UP_ON_INTERNAL_SUPPORTED_EDEFAULT, oldWakeUpOnInternalSupportedESet));
        }
    }

    @Override
    public boolean isSetWakeUpOnInternalSupported() {
        return this.wakeUpOnInternalSupportedESet;
    }

    @Override
    public Boolean getWakeUpOnIoSupported() {
        return this.wakeUpOnIoSupported;
    }

    @Override
    public void setWakeUpOnIoSupported(Boolean newWakeUpOnIoSupported) {
        Boolean oldWakeUpOnIoSupported = this.wakeUpOnIoSupported;
        this.wakeUpOnIoSupported = newWakeUpOnIoSupported;
        boolean oldWakeUpOnIoSupportedESet = this.wakeUpOnIoSupportedESet;
        this.wakeUpOnIoSupportedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldWakeUpOnIoSupported, (Object)this.wakeUpOnIoSupported, !oldWakeUpOnIoSupportedESet));
        }
    }

    @Override
    public void unsetWakeUpOnIoSupported() {
        Boolean oldWakeUpOnIoSupported = this.wakeUpOnIoSupported;
        boolean oldWakeUpOnIoSupportedESet = this.wakeUpOnIoSupportedESet;
        this.wakeUpOnIoSupported = WAKE_UP_ON_IO_SUPPORTED_EDEFAULT;
        this.wakeUpOnIoSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldWakeUpOnIoSupported, (Object)WAKE_UP_ON_IO_SUPPORTED_EDEFAULT, oldWakeUpOnIoSupportedESet));
        }
    }

    @Override
    public boolean isSetWakeUpOnIoSupported() {
        return this.wakeUpOnIoSupportedESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getCommPorts()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getConnectors()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getCommPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getConnectors()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getCOMProcessingPeriod();
            }
            case 20: {
                return this.getCommPorts();
            }
            case 21: {
                return this.getConnectors();
            }
            case 22: {
                return this.getEcuAddress();
            }
            case 23: {
                if (resolve) {
                    return this.getEcu();
                }
                return this.basicGetEcu();
            }
            case 24: {
                return this.getPowerSupply();
            }
            case 25: {
                return this.getProcessingUnitEndianness();
            }
            case 26: {
                return this.getSleepModeSupported();
            }
            case 27: {
                return this.getWakeUpOnInternalSupported();
            }
            case 28: {
                return this.getWakeUpOnIoSupported();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setCOMProcessingPeriod((Double)newValue);
                return;
            }
            case 20: {
                this.getCommPorts().clear();
                this.getCommPorts().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getConnectors().clear();
                this.getConnectors().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setEcuAddress((Integer)newValue);
                return;
            }
            case 23: {
                this.setEcu((ECU)newValue);
                return;
            }
            case 24: {
                this.setPowerSupply((ECUInstancePowerSupplyEnum)((Object)newValue));
                return;
            }
            case 25: {
                this.setProcessingUnitEndianness((ByteOrderEnum)((Object)newValue));
                return;
            }
            case 26: {
                this.setSleepModeSupported((Boolean)newValue);
                return;
            }
            case 27: {
                this.setWakeUpOnInternalSupported((Boolean)newValue);
                return;
            }
            case 28: {
                this.setWakeUpOnIoSupported((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetCOMProcessingPeriod();
                return;
            }
            case 20: {
                this.getCommPorts().clear();
                return;
            }
            case 21: {
                this.getConnectors().clear();
                return;
            }
            case 22: {
                this.unsetEcuAddress();
                return;
            }
            case 23: {
                this.setEcu(null);
                return;
            }
            case 24: {
                this.unsetPowerSupply();
                return;
            }
            case 25: {
                this.unsetProcessingUnitEndianness();
                return;
            }
            case 26: {
                this.unsetSleepModeSupported();
                return;
            }
            case 27: {
                this.unsetWakeUpOnInternalSupported();
                return;
            }
            case 28: {
                this.unsetWakeUpOnIoSupported();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetCOMProcessingPeriod();
            }
            case 20: {
                return this.commPorts != null && !this.commPorts.isEmpty();
            }
            case 21: {
                return this.connectors != null && !this.connectors.isEmpty();
            }
            case 22: {
                return this.isSetEcuAddress();
            }
            case 23: {
                return this.ecu != null;
            }
            case 24: {
                return this.isSetPowerSupply();
            }
            case 25: {
                return this.isSetProcessingUnitEndianness();
            }
            case 26: {
                return this.isSetSleepModeSupported();
            }
            case 27: {
                return this.isSetWakeUpOnInternalSupported();
            }
            case 28: {
                return this.isSetWakeUpOnIoSupported();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    @Override
    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    @Override
    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    @Override
    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (COMProcessingPeriod: ");
        if (this.comProcessingPeriodESet) {
            result.append(this.comProcessingPeriod);
        } else {
            result.append("<unset>");
        }
        result.append(", EcuAddress: ");
        if (this.ecuAddressESet) {
            result.append(this.ecuAddress);
        } else {
            result.append("<unset>");
        }
        result.append(", powerSupply: ");
        if (this.powerSupplyESet) {
            result.append((Object)this.powerSupply);
        } else {
            result.append("<unset>");
        }
        result.append(", processingUnitEndianness: ");
        if (this.processingUnitEndiannessESet) {
            result.append((Object)this.processingUnitEndianness);
        } else {
            result.append("<unset>");
        }
        result.append(", sleepModeSupported: ");
        if (this.sleepModeSupportedESet) {
            result.append(this.sleepModeSupported);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpOnInternalSupported: ");
        if (this.wakeUpOnInternalSupportedESet) {
            result.append(this.wakeUpOnInternalSupported);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpOnIoSupported: ");
        if (this.wakeUpOnIoSupportedESet) {
            result.append(this.wakeUpOnIoSupported);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

