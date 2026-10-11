/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar3x.ecuresource.processingunit.impl;

import autosar3x.ecuresource.basicelements.BootTime;
import autosar3x.ecuresource.ecuelectronics.Clock;
import autosar3x.ecuresource.impl.HWElementImpl;
import autosar3x.ecuresource.processingunit.MPU;
import autosar3x.ecuresource.processingunit.ProcessingUnit;
import autosar3x.ecuresource.processingunit.ProcessingUnitAdressingModeEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnitArchitectureKindEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnitArchitectureTypeEnum;
import autosar3x.ecuresource.processingunit.ProcessingUnitSpecialOpcodesEnum;
import autosar3x.ecuresource.processingunit.ProcessingunitPackage;
import autosar3x.ecuresource.processingunit.Register;
import autosar3x.ecuresource.processingunit.SupportedDataType;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProcessingUnitImpl
extends HWElementImpl
implements ProcessingUnit {
    protected EList<ProcessingUnitAdressingModeEnum> addressingModes;
    protected static final ProcessingUnitArchitectureKindEnum ARCHITECTURE_KIND_EDEFAULT = ProcessingUnitArchitectureKindEnum.HARVARD;
    protected ProcessingUnitArchitectureKindEnum architectureKind = ARCHITECTURE_KIND_EDEFAULT;
    protected boolean architectureKindESet;
    protected static final String ARCHITECTURE_NAME_EDEFAULT = "";
    protected String architectureName = "";
    protected boolean architectureNameESet;
    protected static final ProcessingUnitArchitectureTypeEnum ARCHITECTURE_TYPE_EDEFAULT = ProcessingUnitArchitectureTypeEnum.RISC;
    protected ProcessingUnitArchitectureTypeEnum architectureType = ARCHITECTURE_TYPE_EDEFAULT;
    protected boolean architectureTypeESet;
    protected BootTime bootTime;
    protected static final Integer DMA_CHANNEL_COUNT_EDEFAULT = new Integer(0);
    protected Integer dmaChannelCount = DMA_CHANNEL_COUNT_EDEFAULT;
    protected boolean dmaChannelCountESet;
    protected static final String IMPLEMENTATION_TECHNOLOGY_EDEFAULT = "";
    protected String implementationTechnology = "";
    protected boolean implementationTechnologyESet;
    protected static final Integer MAX_INTERRUPT_NESTING_LEVELS_EDEFAULT = new Integer(0);
    protected Integer maxInterruptNestingLevels = MAX_INTERRUPT_NESTING_LEVELS_EDEFAULT;
    protected boolean maxInterruptNestingLevelsESet;
    protected MPU mpu;
    protected static final Integer NATURAL_DATA_SIZE_EDEFAULT = new Integer(0);
    protected Integer naturalDataSize = NATURAL_DATA_SIZE_EDEFAULT;
    protected boolean naturalDataSizeESet;
    protected static final String OPCODE_SIZE_EDEFAULT = "";
    protected String opcodeSize = "";
    protected boolean opcodeSizeESet;
    protected Clock puClock;
    protected EList<Register> registerModels;
    protected EList<ProcessingUnitSpecialOpcodesEnum> specialOpcodes;
    protected EList<SupportedDataType> supportedDataTypes;

    protected ProcessingUnitImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ProcessingunitPackage.Literals.PROCESSING_UNIT;
    }

    @Override
    public EList<ProcessingUnitAdressingModeEnum> getAddressingModes() {
        if (this.addressingModes == null) {
            this.addressingModes = new EDataTypeUniqueEList.Unsettable(ProcessingUnitAdressingModeEnum.class, (InternalEObject)this, 26);
        }
        return this.addressingModes;
    }

    @Override
    public void unsetAddressingModes() {
        if (this.addressingModes != null) {
            ((InternalEList.Unsettable)this.addressingModes).unset();
        }
    }

    @Override
    public boolean isSetAddressingModes() {
        return this.addressingModes != null && ((InternalEList.Unsettable)this.addressingModes).isSet();
    }

    @Override
    public ProcessingUnitArchitectureKindEnum getArchitectureKind() {
        return this.architectureKind;
    }

    @Override
    public void setArchitectureKind(ProcessingUnitArchitectureKindEnum newArchitectureKind) {
        ProcessingUnitArchitectureKindEnum oldArchitectureKind = this.architectureKind;
        this.architectureKind = newArchitectureKind == null ? ARCHITECTURE_KIND_EDEFAULT : newArchitectureKind;
        boolean oldArchitectureKindESet = this.architectureKindESet;
        this.architectureKindESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldArchitectureKind, (Object)this.architectureKind, !oldArchitectureKindESet));
        }
    }

    @Override
    public void unsetArchitectureKind() {
        ProcessingUnitArchitectureKindEnum oldArchitectureKind = this.architectureKind;
        boolean oldArchitectureKindESet = this.architectureKindESet;
        this.architectureKind = ARCHITECTURE_KIND_EDEFAULT;
        this.architectureKindESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldArchitectureKind, (Object)ARCHITECTURE_KIND_EDEFAULT, oldArchitectureKindESet));
        }
    }

    @Override
    public boolean isSetArchitectureKind() {
        return this.architectureKindESet;
    }

    @Override
    public String getArchitectureName() {
        return this.architectureName;
    }

    @Override
    public void setArchitectureName(String newArchitectureName) {
        String oldArchitectureName = this.architectureName;
        this.architectureName = newArchitectureName;
        boolean oldArchitectureNameESet = this.architectureNameESet;
        this.architectureNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldArchitectureName, (Object)this.architectureName, !oldArchitectureNameESet));
        }
    }

    @Override
    public void unsetArchitectureName() {
        String oldArchitectureName = this.architectureName;
        boolean oldArchitectureNameESet = this.architectureNameESet;
        this.architectureName = "";
        this.architectureNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldArchitectureName, (Object)"", oldArchitectureNameESet));
        }
    }

    @Override
    public boolean isSetArchitectureName() {
        return this.architectureNameESet;
    }

    @Override
    public ProcessingUnitArchitectureTypeEnum getArchitectureType() {
        return this.architectureType;
    }

    @Override
    public void setArchitectureType(ProcessingUnitArchitectureTypeEnum newArchitectureType) {
        ProcessingUnitArchitectureTypeEnum oldArchitectureType = this.architectureType;
        this.architectureType = newArchitectureType == null ? ARCHITECTURE_TYPE_EDEFAULT : newArchitectureType;
        boolean oldArchitectureTypeESet = this.architectureTypeESet;
        this.architectureTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldArchitectureType, (Object)this.architectureType, !oldArchitectureTypeESet));
        }
    }

    @Override
    public void unsetArchitectureType() {
        ProcessingUnitArchitectureTypeEnum oldArchitectureType = this.architectureType;
        boolean oldArchitectureTypeESet = this.architectureTypeESet;
        this.architectureType = ARCHITECTURE_TYPE_EDEFAULT;
        this.architectureTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldArchitectureType, (Object)ARCHITECTURE_TYPE_EDEFAULT, oldArchitectureTypeESet));
        }
    }

    @Override
    public boolean isSetArchitectureType() {
        return this.architectureTypeESet;
    }

    @Override
    public BootTime getBootTime() {
        return this.bootTime;
    }

    public NotificationChain basicSetBootTime(BootTime newBootTime, NotificationChain msgs) {
        BootTime oldBootTime = this.bootTime;
        this.bootTime = newBootTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldBootTime, (Object)newBootTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBootTime(BootTime newBootTime) {
        if (newBootTime != this.bootTime) {
            NotificationChain msgs = null;
            if (this.bootTime != null) {
                msgs = ((InternalEObject)this.bootTime).eInverseRemove((InternalEObject)this, 4, BootTime.class, msgs);
            }
            if (newBootTime != null) {
                msgs = ((InternalEObject)newBootTime).eInverseAdd((InternalEObject)this, 4, BootTime.class, msgs);
            }
            if ((msgs = this.basicSetBootTime(newBootTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)newBootTime, (Object)newBootTime));
        }
    }

    @Override
    public Integer getDmaChannelCount() {
        return this.dmaChannelCount;
    }

    @Override
    public void setDmaChannelCount(Integer newDmaChannelCount) {
        Integer oldDmaChannelCount = this.dmaChannelCount;
        this.dmaChannelCount = newDmaChannelCount;
        boolean oldDmaChannelCountESet = this.dmaChannelCountESet;
        this.dmaChannelCountESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldDmaChannelCount, (Object)this.dmaChannelCount, !oldDmaChannelCountESet));
        }
    }

    @Override
    public void unsetDmaChannelCount() {
        Integer oldDmaChannelCount = this.dmaChannelCount;
        boolean oldDmaChannelCountESet = this.dmaChannelCountESet;
        this.dmaChannelCount = DMA_CHANNEL_COUNT_EDEFAULT;
        this.dmaChannelCountESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldDmaChannelCount, (Object)DMA_CHANNEL_COUNT_EDEFAULT, oldDmaChannelCountESet));
        }
    }

    @Override
    public boolean isSetDmaChannelCount() {
        return this.dmaChannelCountESet;
    }

    @Override
    public String getImplementationTechnology() {
        return this.implementationTechnology;
    }

    @Override
    public void setImplementationTechnology(String newImplementationTechnology) {
        String oldImplementationTechnology = this.implementationTechnology;
        this.implementationTechnology = newImplementationTechnology;
        boolean oldImplementationTechnologyESet = this.implementationTechnologyESet;
        this.implementationTechnologyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldImplementationTechnology, (Object)this.implementationTechnology, !oldImplementationTechnologyESet));
        }
    }

    @Override
    public void unsetImplementationTechnology() {
        String oldImplementationTechnology = this.implementationTechnology;
        boolean oldImplementationTechnologyESet = this.implementationTechnologyESet;
        this.implementationTechnology = "";
        this.implementationTechnologyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldImplementationTechnology, (Object)"", oldImplementationTechnologyESet));
        }
    }

    @Override
    public boolean isSetImplementationTechnology() {
        return this.implementationTechnologyESet;
    }

    @Override
    public Integer getMaxInterruptNestingLevels() {
        return this.maxInterruptNestingLevels;
    }

    @Override
    public void setMaxInterruptNestingLevels(Integer newMaxInterruptNestingLevels) {
        Integer oldMaxInterruptNestingLevels = this.maxInterruptNestingLevels;
        this.maxInterruptNestingLevels = newMaxInterruptNestingLevels;
        boolean oldMaxInterruptNestingLevelsESet = this.maxInterruptNestingLevelsESet;
        this.maxInterruptNestingLevelsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldMaxInterruptNestingLevels, (Object)this.maxInterruptNestingLevels, !oldMaxInterruptNestingLevelsESet));
        }
    }

    @Override
    public void unsetMaxInterruptNestingLevels() {
        Integer oldMaxInterruptNestingLevels = this.maxInterruptNestingLevels;
        boolean oldMaxInterruptNestingLevelsESet = this.maxInterruptNestingLevelsESet;
        this.maxInterruptNestingLevels = MAX_INTERRUPT_NESTING_LEVELS_EDEFAULT;
        this.maxInterruptNestingLevelsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldMaxInterruptNestingLevels, (Object)MAX_INTERRUPT_NESTING_LEVELS_EDEFAULT, oldMaxInterruptNestingLevelsESet));
        }
    }

    @Override
    public boolean isSetMaxInterruptNestingLevels() {
        return this.maxInterruptNestingLevelsESet;
    }

    @Override
    public MPU getMpu() {
        return this.mpu;
    }

    public NotificationChain basicSetMpu(MPU newMpu, NotificationChain msgs) {
        MPU oldMpu = this.mpu;
        this.mpu = newMpu;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldMpu, (Object)newMpu);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMpu(MPU newMpu) {
        if (newMpu != this.mpu) {
            NotificationChain msgs = null;
            if (this.mpu != null) {
                msgs = ((InternalEObject)this.mpu).eInverseRemove((InternalEObject)this, 4, MPU.class, msgs);
            }
            if (newMpu != null) {
                msgs = ((InternalEObject)newMpu).eInverseAdd((InternalEObject)this, 4, MPU.class, msgs);
            }
            if ((msgs = this.basicSetMpu(newMpu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)newMpu, (Object)newMpu));
        }
    }

    @Override
    public Integer getNaturalDataSize() {
        return this.naturalDataSize;
    }

    @Override
    public void setNaturalDataSize(Integer newNaturalDataSize) {
        Integer oldNaturalDataSize = this.naturalDataSize;
        this.naturalDataSize = newNaturalDataSize;
        boolean oldNaturalDataSizeESet = this.naturalDataSizeESet;
        this.naturalDataSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldNaturalDataSize, (Object)this.naturalDataSize, !oldNaturalDataSizeESet));
        }
    }

    @Override
    public void unsetNaturalDataSize() {
        Integer oldNaturalDataSize = this.naturalDataSize;
        boolean oldNaturalDataSizeESet = this.naturalDataSizeESet;
        this.naturalDataSize = NATURAL_DATA_SIZE_EDEFAULT;
        this.naturalDataSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldNaturalDataSize, (Object)NATURAL_DATA_SIZE_EDEFAULT, oldNaturalDataSizeESet));
        }
    }

    @Override
    public boolean isSetNaturalDataSize() {
        return this.naturalDataSizeESet;
    }

    @Override
    public String getOpcodeSize() {
        return this.opcodeSize;
    }

    @Override
    public void setOpcodeSize(String newOpcodeSize) {
        String oldOpcodeSize = this.opcodeSize;
        this.opcodeSize = newOpcodeSize;
        boolean oldOpcodeSizeESet = this.opcodeSizeESet;
        this.opcodeSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldOpcodeSize, (Object)this.opcodeSize, !oldOpcodeSizeESet));
        }
    }

    @Override
    public void unsetOpcodeSize() {
        String oldOpcodeSize = this.opcodeSize;
        boolean oldOpcodeSizeESet = this.opcodeSizeESet;
        this.opcodeSize = "";
        this.opcodeSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 36, (Object)oldOpcodeSize, (Object)"", oldOpcodeSizeESet));
        }
    }

    @Override
    public boolean isSetOpcodeSize() {
        return this.opcodeSizeESet;
    }

    @Override
    public Clock getPuClock() {
        return this.puClock;
    }

    public NotificationChain basicSetPuClock(Clock newPuClock, NotificationChain msgs) {
        Clock oldPuClock = this.puClock;
        this.puClock = newPuClock;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldPuClock, (Object)newPuClock);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPuClock(Clock newPuClock) {
        if (newPuClock != this.puClock) {
            NotificationChain msgs = null;
            if (this.puClock != null) {
                msgs = ((InternalEObject)this.puClock).eInverseRemove((InternalEObject)this, 27, Clock.class, msgs);
            }
            if (newPuClock != null) {
                msgs = ((InternalEObject)newPuClock).eInverseAdd((InternalEObject)this, 27, Clock.class, msgs);
            }
            if ((msgs = this.basicSetPuClock(newPuClock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)newPuClock, (Object)newPuClock));
        }
    }

    @Override
    public EList<Register> getRegisterModels() {
        if (this.registerModels == null) {
            this.registerModels = new EObjectContainmentWithInverseEList(Register.class, (InternalEObject)this, 38, 4);
        }
        return this.registerModels;
    }

    @Override
    public EList<ProcessingUnitSpecialOpcodesEnum> getSpecialOpcodes() {
        if (this.specialOpcodes == null) {
            this.specialOpcodes = new EDataTypeUniqueEList.Unsettable(ProcessingUnitSpecialOpcodesEnum.class, (InternalEObject)this, 39);
        }
        return this.specialOpcodes;
    }

    @Override
    public void unsetSpecialOpcodes() {
        if (this.specialOpcodes != null) {
            ((InternalEList.Unsettable)this.specialOpcodes).unset();
        }
    }

    @Override
    public boolean isSetSpecialOpcodes() {
        return this.specialOpcodes != null && ((InternalEList.Unsettable)this.specialOpcodes).isSet();
    }

    @Override
    public EList<SupportedDataType> getSupportedDataTypes() {
        if (this.supportedDataTypes == null) {
            this.supportedDataTypes = new EObjectContainmentWithInverseEList(SupportedDataType.class, (InternalEObject)this, 40, 17);
        }
        return this.supportedDataTypes;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 30: {
                if (this.bootTime != null) {
                    msgs = ((InternalEObject)this.bootTime).eInverseRemove((InternalEObject)this, -31, null, msgs);
                }
                return this.basicSetBootTime((BootTime)otherEnd, msgs);
            }
            case 34: {
                if (this.mpu != null) {
                    msgs = ((InternalEObject)this.mpu).eInverseRemove((InternalEObject)this, -35, null, msgs);
                }
                return this.basicSetMpu((MPU)otherEnd, msgs);
            }
            case 37: {
                if (this.puClock != null) {
                    msgs = ((InternalEObject)this.puClock).eInverseRemove((InternalEObject)this, -38, null, msgs);
                }
                return this.basicSetPuClock((Clock)otherEnd, msgs);
            }
            case 38: {
                return ((InternalEList)this.getRegisterModels()).basicAdd((Object)otherEnd, msgs);
            }
            case 40: {
                return ((InternalEList)this.getSupportedDataTypes()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 30: {
                return this.basicSetBootTime(null, msgs);
            }
            case 34: {
                return this.basicSetMpu(null, msgs);
            }
            case 37: {
                return this.basicSetPuClock(null, msgs);
            }
            case 38: {
                return ((InternalEList)this.getRegisterModels()).basicRemove((Object)otherEnd, msgs);
            }
            case 40: {
                return ((InternalEList)this.getSupportedDataTypes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getAddressingModes();
            }
            case 27: {
                return this.getArchitectureKind();
            }
            case 28: {
                return this.getArchitectureName();
            }
            case 29: {
                return this.getArchitectureType();
            }
            case 30: {
                return this.getBootTime();
            }
            case 31: {
                return this.getDmaChannelCount();
            }
            case 32: {
                return this.getImplementationTechnology();
            }
            case 33: {
                return this.getMaxInterruptNestingLevels();
            }
            case 34: {
                return this.getMpu();
            }
            case 35: {
                return this.getNaturalDataSize();
            }
            case 36: {
                return this.getOpcodeSize();
            }
            case 37: {
                return this.getPuClock();
            }
            case 38: {
                return this.getRegisterModels();
            }
            case 39: {
                return this.getSpecialOpcodes();
            }
            case 40: {
                return this.getSupportedDataTypes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.getAddressingModes().clear();
                this.getAddressingModes().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.setArchitectureKind((ProcessingUnitArchitectureKindEnum)((Object)newValue));
                return;
            }
            case 28: {
                this.setArchitectureName((String)newValue);
                return;
            }
            case 29: {
                this.setArchitectureType((ProcessingUnitArchitectureTypeEnum)((Object)newValue));
                return;
            }
            case 30: {
                this.setBootTime((BootTime)newValue);
                return;
            }
            case 31: {
                this.setDmaChannelCount((Integer)newValue);
                return;
            }
            case 32: {
                this.setImplementationTechnology((String)newValue);
                return;
            }
            case 33: {
                this.setMaxInterruptNestingLevels((Integer)newValue);
                return;
            }
            case 34: {
                this.setMpu((MPU)newValue);
                return;
            }
            case 35: {
                this.setNaturalDataSize((Integer)newValue);
                return;
            }
            case 36: {
                this.setOpcodeSize((String)newValue);
                return;
            }
            case 37: {
                this.setPuClock((Clock)newValue);
                return;
            }
            case 38: {
                this.getRegisterModels().clear();
                this.getRegisterModels().addAll((Collection)newValue);
                return;
            }
            case 39: {
                this.getSpecialOpcodes().clear();
                this.getSpecialOpcodes().addAll((Collection)newValue);
                return;
            }
            case 40: {
                this.getSupportedDataTypes().clear();
                this.getSupportedDataTypes().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.unsetAddressingModes();
                return;
            }
            case 27: {
                this.unsetArchitectureKind();
                return;
            }
            case 28: {
                this.unsetArchitectureName();
                return;
            }
            case 29: {
                this.unsetArchitectureType();
                return;
            }
            case 30: {
                this.setBootTime(null);
                return;
            }
            case 31: {
                this.unsetDmaChannelCount();
                return;
            }
            case 32: {
                this.unsetImplementationTechnology();
                return;
            }
            case 33: {
                this.unsetMaxInterruptNestingLevels();
                return;
            }
            case 34: {
                this.setMpu(null);
                return;
            }
            case 35: {
                this.unsetNaturalDataSize();
                return;
            }
            case 36: {
                this.unsetOpcodeSize();
                return;
            }
            case 37: {
                this.setPuClock(null);
                return;
            }
            case 38: {
                this.getRegisterModels().clear();
                return;
            }
            case 39: {
                this.unsetSpecialOpcodes();
                return;
            }
            case 40: {
                this.getSupportedDataTypes().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.isSetAddressingModes();
            }
            case 27: {
                return this.isSetArchitectureKind();
            }
            case 28: {
                return this.isSetArchitectureName();
            }
            case 29: {
                return this.isSetArchitectureType();
            }
            case 30: {
                return this.bootTime != null;
            }
            case 31: {
                return this.isSetDmaChannelCount();
            }
            case 32: {
                return this.isSetImplementationTechnology();
            }
            case 33: {
                return this.isSetMaxInterruptNestingLevels();
            }
            case 34: {
                return this.mpu != null;
            }
            case 35: {
                return this.isSetNaturalDataSize();
            }
            case 36: {
                return this.isSetOpcodeSize();
            }
            case 37: {
                return this.puClock != null;
            }
            case 38: {
                return this.registerModels != null && !this.registerModels.isEmpty();
            }
            case 39: {
                return this.isSetSpecialOpcodes();
            }
            case 40: {
                return this.supportedDataTypes != null && !this.supportedDataTypes.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (addressingModes: ");
        result.append(this.addressingModes);
        result.append(", architectureKind: ");
        if (this.architectureKindESet) {
            result.append((Object)this.architectureKind);
        } else {
            result.append("<unset>");
        }
        result.append(", architectureName: ");
        if (this.architectureNameESet) {
            result.append(this.architectureName);
        } else {
            result.append("<unset>");
        }
        result.append(", architectureType: ");
        if (this.architectureTypeESet) {
            result.append((Object)this.architectureType);
        } else {
            result.append("<unset>");
        }
        result.append(", dmaChannelCount: ");
        if (this.dmaChannelCountESet) {
            result.append(this.dmaChannelCount);
        } else {
            result.append("<unset>");
        }
        result.append(", implementationTechnology: ");
        if (this.implementationTechnologyESet) {
            result.append(this.implementationTechnology);
        } else {
            result.append("<unset>");
        }
        result.append(", maxInterruptNestingLevels: ");
        if (this.maxInterruptNestingLevelsESet) {
            result.append(this.maxInterruptNestingLevels);
        } else {
            result.append("<unset>");
        }
        result.append(", naturalDataSize: ");
        if (this.naturalDataSizeESet) {
            result.append(this.naturalDataSize);
        } else {
            result.append("<unset>");
        }
        result.append(", opcodeSize: ");
        if (this.opcodeSizeESet) {
            result.append(this.opcodeSize);
        } else {
            result.append("<unset>");
        }
        result.append(", specialOpcodes: ");
        result.append(this.specialOpcodes);
        result.append(')');
        return result.toString();
    }
}

