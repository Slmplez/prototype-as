/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.NvBlockNeeds;
import autosar40.commonstructure.serviceneeds.NvBlockNeedsReliabilityEnum;
import autosar40.commonstructure.serviceneeds.NvBlockNeedsWritingPriorityEnum;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class NvBlockNeedsImpl
extends ServiceNeedsImpl
implements NvBlockNeeds {
    protected static final Boolean CALC_RAM_BLOCK_CRC_EDEFAULT = Boolean.FALSE;
    protected Boolean calcRamBlockCrc = CALC_RAM_BLOCK_CRC_EDEFAULT;
    protected boolean calcRamBlockCrcESet;
    protected static final Boolean CHECK_STATIC_BLOCK_ID_EDEFAULT = Boolean.FALSE;
    protected Boolean checkStaticBlockId = CHECK_STATIC_BLOCK_ID_EDEFAULT;
    protected boolean checkStaticBlockIdESet;
    protected static final PositiveIntegerDatatype NDATA_SETS_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype nDataSets = NDATA_SETS_EDEFAULT.clone();
    protected boolean nDataSetsESet;
    protected static final PositiveIntegerDatatype NROM_BLOCKS_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype nRomBlocks = NROM_BLOCKS_EDEFAULT.clone();
    protected boolean nRomBlocksESet;
    protected static final Boolean READONLY_EDEFAULT = Boolean.FALSE;
    protected Boolean readonly = READONLY_EDEFAULT;
    protected boolean readonlyESet;
    protected static final NvBlockNeedsReliabilityEnum RELIABILITY_EDEFAULT = NvBlockNeedsReliabilityEnum.NO_PROTECTION;
    protected NvBlockNeedsReliabilityEnum reliability = RELIABILITY_EDEFAULT;
    protected boolean reliabilityESet;
    protected static final Boolean RESISTANT_TO_CHANGED_SW_EDEFAULT = Boolean.FALSE;
    protected Boolean resistantToChangedSw = RESISTANT_TO_CHANGED_SW_EDEFAULT;
    protected boolean resistantToChangedSwESet;
    protected static final Boolean RESTORE_AT_START_EDEFAULT = Boolean.FALSE;
    protected Boolean restoreAtStart = RESTORE_AT_START_EDEFAULT;
    protected boolean restoreAtStartESet;
    protected static final Boolean STORE_AT_SHUTDOWN_EDEFAULT = Boolean.FALSE;
    protected Boolean storeAtShutdown = STORE_AT_SHUTDOWN_EDEFAULT;
    protected boolean storeAtShutdownESet;
    protected static final Boolean WRITE_ONLY_ONCE_EDEFAULT = Boolean.FALSE;
    protected Boolean writeOnlyOnce = WRITE_ONLY_ONCE_EDEFAULT;
    protected boolean writeOnlyOnceESet;
    protected static final Boolean WRITE_VERIFICATION_EDEFAULT = Boolean.FALSE;
    protected Boolean writeVerification = WRITE_VERIFICATION_EDEFAULT;
    protected boolean writeVerificationESet;
    protected static final PositiveIntegerDatatype WRITING_FREQUENCY_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype writingFrequency = WRITING_FREQUENCY_EDEFAULT.clone();
    protected boolean writingFrequencyESet;
    protected static final NvBlockNeedsWritingPriorityEnum WRITING_PRIORITY_EDEFAULT = NvBlockNeedsWritingPriorityEnum.LOW;
    protected NvBlockNeedsWritingPriorityEnum writingPriority = WRITING_PRIORITY_EDEFAULT;
    protected boolean writingPriorityESet;

    protected NvBlockNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.NV_BLOCK_NEEDS;
    }

    public NvBlockDescriptor getNvBlockDescriptor() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (NvBlockDescriptor)this.eContainer();
    }

    public NotificationChain basicSetNvBlockDescriptor(NvBlockDescriptor newNvBlockDescriptor, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newNvBlockDescriptor, 18, msgs);
        return msgs;
    }

    public void setNvBlockDescriptor(NvBlockDescriptor newNvBlockDescriptor) {
        if (newNvBlockDescriptor != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newNvBlockDescriptor != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newNvBlockDescriptor)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newNvBlockDescriptor != null) {
                msgs = ((InternalEObject)newNvBlockDescriptor).eInverseAdd((InternalEObject)this, 24, NvBlockDescriptor.class, msgs);
            }
            if ((msgs = this.basicSetNvBlockDescriptor(newNvBlockDescriptor, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newNvBlockDescriptor, (Object)newNvBlockDescriptor));
        }
    }

    public Boolean getCalcRamBlockCrc() {
        return this.calcRamBlockCrc;
    }

    public void setCalcRamBlockCrc(Boolean newCalcRamBlockCrc) {
        Boolean oldCalcRamBlockCrc = this.calcRamBlockCrc;
        this.calcRamBlockCrc = newCalcRamBlockCrc;
        boolean oldCalcRamBlockCrcESet = this.calcRamBlockCrcESet;
        this.calcRamBlockCrcESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldCalcRamBlockCrc, (Object)this.calcRamBlockCrc, !oldCalcRamBlockCrcESet));
        }
    }

    public void unsetCalcRamBlockCrc() {
        Boolean oldCalcRamBlockCrc = this.calcRamBlockCrc;
        boolean oldCalcRamBlockCrcESet = this.calcRamBlockCrcESet;
        this.calcRamBlockCrc = CALC_RAM_BLOCK_CRC_EDEFAULT;
        this.calcRamBlockCrcESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldCalcRamBlockCrc, (Object)CALC_RAM_BLOCK_CRC_EDEFAULT, oldCalcRamBlockCrcESet));
        }
    }

    public boolean isSetCalcRamBlockCrc() {
        return this.calcRamBlockCrcESet;
    }

    public Boolean getCheckStaticBlockId() {
        return this.checkStaticBlockId;
    }

    public void setCheckStaticBlockId(Boolean newCheckStaticBlockId) {
        Boolean oldCheckStaticBlockId = this.checkStaticBlockId;
        this.checkStaticBlockId = newCheckStaticBlockId;
        boolean oldCheckStaticBlockIdESet = this.checkStaticBlockIdESet;
        this.checkStaticBlockIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldCheckStaticBlockId, (Object)this.checkStaticBlockId, !oldCheckStaticBlockIdESet));
        }
    }

    public void unsetCheckStaticBlockId() {
        Boolean oldCheckStaticBlockId = this.checkStaticBlockId;
        boolean oldCheckStaticBlockIdESet = this.checkStaticBlockIdESet;
        this.checkStaticBlockId = CHECK_STATIC_BLOCK_ID_EDEFAULT;
        this.checkStaticBlockIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldCheckStaticBlockId, (Object)CHECK_STATIC_BLOCK_ID_EDEFAULT, oldCheckStaticBlockIdESet));
        }
    }

    public boolean isSetCheckStaticBlockId() {
        return this.checkStaticBlockIdESet;
    }

    public Long getNDataSets() {
        return (Long)this.nDataSets.basicGetValue();
    }

    public void setNDataSets(Long newNDataSets) {
        Long oldNDataSets = (Long)this.nDataSets.basicGetValue();
        this.nDataSets.basicSetValue((Object)newNDataSets);
        boolean oldNDataSetsESet = this.nDataSetsESet;
        this.nDataSetsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldNDataSets, (Object)newNDataSets, !oldNDataSetsESet));
        }
    }

    public void unsetNDataSets() {
        Long oldNDataSets = (Long)this.nDataSets.basicGetValue();
        boolean oldNDataSetsESet = this.nDataSetsESet;
        this.nDataSets = NDATA_SETS_EDEFAULT.clone();
        this.nDataSetsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldNDataSets, (Object)NDATA_SETS_EDEFAULT, oldNDataSetsESet));
        }
    }

    public boolean isSetNDataSets() {
        return this.nDataSetsESet;
    }

    public Long getNRomBlocks() {
        return (Long)this.nRomBlocks.basicGetValue();
    }

    public void setNRomBlocks(Long newNRomBlocks) {
        Long oldNRomBlocks = (Long)this.nRomBlocks.basicGetValue();
        this.nRomBlocks.basicSetValue((Object)newNRomBlocks);
        boolean oldNRomBlocksESet = this.nRomBlocksESet;
        this.nRomBlocksESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldNRomBlocks, (Object)newNRomBlocks, !oldNRomBlocksESet));
        }
    }

    public void unsetNRomBlocks() {
        Long oldNRomBlocks = (Long)this.nRomBlocks.basicGetValue();
        boolean oldNRomBlocksESet = this.nRomBlocksESet;
        this.nRomBlocks = NROM_BLOCKS_EDEFAULT.clone();
        this.nRomBlocksESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldNRomBlocks, (Object)NROM_BLOCKS_EDEFAULT, oldNRomBlocksESet));
        }
    }

    public boolean isSetNRomBlocks() {
        return this.nRomBlocksESet;
    }

    public Boolean getReadonly() {
        return this.readonly;
    }

    public void setReadonly(Boolean newReadonly) {
        Boolean oldReadonly = this.readonly;
        this.readonly = newReadonly;
        boolean oldReadonlyESet = this.readonlyESet;
        this.readonlyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldReadonly, (Object)this.readonly, !oldReadonlyESet));
        }
    }

    public void unsetReadonly() {
        Boolean oldReadonly = this.readonly;
        boolean oldReadonlyESet = this.readonlyESet;
        this.readonly = READONLY_EDEFAULT;
        this.readonlyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldReadonly, (Object)READONLY_EDEFAULT, oldReadonlyESet));
        }
    }

    public boolean isSetReadonly() {
        return this.readonlyESet;
    }

    public NvBlockNeedsReliabilityEnum getReliability() {
        return this.reliability;
    }

    public void setReliability(NvBlockNeedsReliabilityEnum newReliability) {
        NvBlockNeedsReliabilityEnum oldReliability = this.reliability;
        this.reliability = newReliability == null ? RELIABILITY_EDEFAULT : newReliability;
        boolean oldReliabilityESet = this.reliabilityESet;
        this.reliabilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldReliability, (Object)this.reliability, !oldReliabilityESet));
        }
    }

    public void unsetReliability() {
        NvBlockNeedsReliabilityEnum oldReliability = this.reliability;
        boolean oldReliabilityESet = this.reliabilityESet;
        this.reliability = RELIABILITY_EDEFAULT;
        this.reliabilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldReliability, (Object)RELIABILITY_EDEFAULT, oldReliabilityESet));
        }
    }

    public boolean isSetReliability() {
        return this.reliabilityESet;
    }

    public Boolean getResistantToChangedSw() {
        return this.resistantToChangedSw;
    }

    public void setResistantToChangedSw(Boolean newResistantToChangedSw) {
        Boolean oldResistantToChangedSw = this.resistantToChangedSw;
        this.resistantToChangedSw = newResistantToChangedSw;
        boolean oldResistantToChangedSwESet = this.resistantToChangedSwESet;
        this.resistantToChangedSwESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldResistantToChangedSw, (Object)this.resistantToChangedSw, !oldResistantToChangedSwESet));
        }
    }

    public void unsetResistantToChangedSw() {
        Boolean oldResistantToChangedSw = this.resistantToChangedSw;
        boolean oldResistantToChangedSwESet = this.resistantToChangedSwESet;
        this.resistantToChangedSw = RESISTANT_TO_CHANGED_SW_EDEFAULT;
        this.resistantToChangedSwESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldResistantToChangedSw, (Object)RESISTANT_TO_CHANGED_SW_EDEFAULT, oldResistantToChangedSwESet));
        }
    }

    public boolean isSetResistantToChangedSw() {
        return this.resistantToChangedSwESet;
    }

    public Boolean getRestoreAtStart() {
        return this.restoreAtStart;
    }

    public void setRestoreAtStart(Boolean newRestoreAtStart) {
        Boolean oldRestoreAtStart = this.restoreAtStart;
        this.restoreAtStart = newRestoreAtStart;
        boolean oldRestoreAtStartESet = this.restoreAtStartESet;
        this.restoreAtStartESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldRestoreAtStart, (Object)this.restoreAtStart, !oldRestoreAtStartESet));
        }
    }

    public void unsetRestoreAtStart() {
        Boolean oldRestoreAtStart = this.restoreAtStart;
        boolean oldRestoreAtStartESet = this.restoreAtStartESet;
        this.restoreAtStart = RESTORE_AT_START_EDEFAULT;
        this.restoreAtStartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldRestoreAtStart, (Object)RESTORE_AT_START_EDEFAULT, oldRestoreAtStartESet));
        }
    }

    public boolean isSetRestoreAtStart() {
        return this.restoreAtStartESet;
    }

    public Boolean getStoreAtShutdown() {
        return this.storeAtShutdown;
    }

    public void setStoreAtShutdown(Boolean newStoreAtShutdown) {
        Boolean oldStoreAtShutdown = this.storeAtShutdown;
        this.storeAtShutdown = newStoreAtShutdown;
        boolean oldStoreAtShutdownESet = this.storeAtShutdownESet;
        this.storeAtShutdownESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldStoreAtShutdown, (Object)this.storeAtShutdown, !oldStoreAtShutdownESet));
        }
    }

    public void unsetStoreAtShutdown() {
        Boolean oldStoreAtShutdown = this.storeAtShutdown;
        boolean oldStoreAtShutdownESet = this.storeAtShutdownESet;
        this.storeAtShutdown = STORE_AT_SHUTDOWN_EDEFAULT;
        this.storeAtShutdownESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldStoreAtShutdown, (Object)STORE_AT_SHUTDOWN_EDEFAULT, oldStoreAtShutdownESet));
        }
    }

    public boolean isSetStoreAtShutdown() {
        return this.storeAtShutdownESet;
    }

    public Boolean getWriteOnlyOnce() {
        return this.writeOnlyOnce;
    }

    public void setWriteOnlyOnce(Boolean newWriteOnlyOnce) {
        Boolean oldWriteOnlyOnce = this.writeOnlyOnce;
        this.writeOnlyOnce = newWriteOnlyOnce;
        boolean oldWriteOnlyOnceESet = this.writeOnlyOnceESet;
        this.writeOnlyOnceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldWriteOnlyOnce, (Object)this.writeOnlyOnce, !oldWriteOnlyOnceESet));
        }
    }

    public void unsetWriteOnlyOnce() {
        Boolean oldWriteOnlyOnce = this.writeOnlyOnce;
        boolean oldWriteOnlyOnceESet = this.writeOnlyOnceESet;
        this.writeOnlyOnce = WRITE_ONLY_ONCE_EDEFAULT;
        this.writeOnlyOnceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldWriteOnlyOnce, (Object)WRITE_ONLY_ONCE_EDEFAULT, oldWriteOnlyOnceESet));
        }
    }

    public boolean isSetWriteOnlyOnce() {
        return this.writeOnlyOnceESet;
    }

    public Boolean getWriteVerification() {
        return this.writeVerification;
    }

    public void setWriteVerification(Boolean newWriteVerification) {
        Boolean oldWriteVerification = this.writeVerification;
        this.writeVerification = newWriteVerification;
        boolean oldWriteVerificationESet = this.writeVerificationESet;
        this.writeVerificationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldWriteVerification, (Object)this.writeVerification, !oldWriteVerificationESet));
        }
    }

    public void unsetWriteVerification() {
        Boolean oldWriteVerification = this.writeVerification;
        boolean oldWriteVerificationESet = this.writeVerificationESet;
        this.writeVerification = WRITE_VERIFICATION_EDEFAULT;
        this.writeVerificationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldWriteVerification, (Object)WRITE_VERIFICATION_EDEFAULT, oldWriteVerificationESet));
        }
    }

    public boolean isSetWriteVerification() {
        return this.writeVerificationESet;
    }

    public Long getWritingFrequency() {
        return (Long)this.writingFrequency.basicGetValue();
    }

    public void setWritingFrequency(Long newWritingFrequency) {
        Long oldWritingFrequency = (Long)this.writingFrequency.basicGetValue();
        this.writingFrequency.basicSetValue((Object)newWritingFrequency);
        boolean oldWritingFrequencyESet = this.writingFrequencyESet;
        this.writingFrequencyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldWritingFrequency, (Object)newWritingFrequency, !oldWritingFrequencyESet));
        }
    }

    public void unsetWritingFrequency() {
        Long oldWritingFrequency = (Long)this.writingFrequency.basicGetValue();
        boolean oldWritingFrequencyESet = this.writingFrequencyESet;
        this.writingFrequency = WRITING_FREQUENCY_EDEFAULT.clone();
        this.writingFrequencyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldWritingFrequency, (Object)WRITING_FREQUENCY_EDEFAULT, oldWritingFrequencyESet));
        }
    }

    public boolean isSetWritingFrequency() {
        return this.writingFrequencyESet;
    }

    public NvBlockNeedsWritingPriorityEnum getWritingPriority() {
        return this.writingPriority;
    }

    public void setWritingPriority(NvBlockNeedsWritingPriorityEnum newWritingPriority) {
        NvBlockNeedsWritingPriorityEnum oldWritingPriority = this.writingPriority;
        this.writingPriority = newWritingPriority == null ? WRITING_PRIORITY_EDEFAULT : newWritingPriority;
        boolean oldWritingPriorityESet = this.writingPriorityESet;
        this.writingPriorityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldWritingPriority, (Object)this.writingPriority, !oldWritingPriorityESet));
        }
    }

    public void unsetWritingPriority() {
        NvBlockNeedsWritingPriorityEnum oldWritingPriority = this.writingPriority;
        boolean oldWritingPriorityESet = this.writingPriorityESet;
        this.writingPriority = WRITING_PRIORITY_EDEFAULT;
        this.writingPriorityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldWritingPriority, (Object)WRITING_PRIORITY_EDEFAULT, oldWritingPriorityESet));
        }
    }

    public boolean isSetWritingPriority() {
        return this.writingPriorityESet;
    }

    public PositiveIntegerDatatype getNDataSetsData() {
        return this.nDataSets.clone();
    }

    public void setNDataSetsData(PositiveIntegerDatatype newNDataSets) {
        this.nDataSets.setRadix((int)newNDataSets.getRadix());
        this.nDataSets.setNoOfDigits((int)newNDataSets.getNoOfDigits());
        this.setNDataSets(newNDataSets.getValue());
    }

    public PositiveIntegerDatatype getNRomBlocksData() {
        return this.nRomBlocks.clone();
    }

    public void setNRomBlocksData(PositiveIntegerDatatype newNRomBlocks) {
        this.nRomBlocks.setRadix((int)newNRomBlocks.getRadix());
        this.nRomBlocks.setNoOfDigits((int)newNRomBlocks.getNoOfDigits());
        this.setNRomBlocks(newNRomBlocks.getValue());
    }

    public PositiveIntegerDatatype getWritingFrequencyData() {
        return this.writingFrequency.clone();
    }

    public void setWritingFrequencyData(PositiveIntegerDatatype newWritingFrequency) {
        this.writingFrequency.setRadix((int)newWritingFrequency.getRadix());
        this.writingFrequency.setNoOfDigits((int)newWritingFrequency.getNoOfDigits());
        this.setWritingFrequency(newWritingFrequency.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetNvBlockDescriptor((NvBlockDescriptor)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetNvBlockDescriptor(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, NvBlockDescriptor.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getNvBlockDescriptor();
            }
            case 19: {
                return this.getCalcRamBlockCrc();
            }
            case 20: {
                return this.getCheckStaticBlockId();
            }
            case 21: {
                return this.getNDataSets();
            }
            case 22: {
                return this.getNRomBlocks();
            }
            case 23: {
                return this.getReadonly();
            }
            case 24: {
                return this.getReliability();
            }
            case 25: {
                return this.getResistantToChangedSw();
            }
            case 26: {
                return this.getRestoreAtStart();
            }
            case 27: {
                return this.getStoreAtShutdown();
            }
            case 28: {
                return this.getWriteOnlyOnce();
            }
            case 29: {
                return this.getWriteVerification();
            }
            case 30: {
                return this.getWritingFrequency();
            }
            case 31: {
                return this.getWritingPriority();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setNvBlockDescriptor((NvBlockDescriptor)newValue);
                return;
            }
            case 19: {
                this.setCalcRamBlockCrc((Boolean)newValue);
                return;
            }
            case 20: {
                this.setCheckStaticBlockId((Boolean)newValue);
                return;
            }
            case 21: {
                this.setNDataSets((Long)newValue);
                return;
            }
            case 22: {
                this.setNRomBlocks((Long)newValue);
                return;
            }
            case 23: {
                this.setReadonly((Boolean)newValue);
                return;
            }
            case 24: {
                this.setReliability((NvBlockNeedsReliabilityEnum)((Object)newValue));
                return;
            }
            case 25: {
                this.setResistantToChangedSw((Boolean)newValue);
                return;
            }
            case 26: {
                this.setRestoreAtStart((Boolean)newValue);
                return;
            }
            case 27: {
                this.setStoreAtShutdown((Boolean)newValue);
                return;
            }
            case 28: {
                this.setWriteOnlyOnce((Boolean)newValue);
                return;
            }
            case 29: {
                this.setWriteVerification((Boolean)newValue);
                return;
            }
            case 30: {
                this.setWritingFrequency((Long)newValue);
                return;
            }
            case 31: {
                this.setWritingPriority((NvBlockNeedsWritingPriorityEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setNvBlockDescriptor(null);
                return;
            }
            case 19: {
                this.unsetCalcRamBlockCrc();
                return;
            }
            case 20: {
                this.unsetCheckStaticBlockId();
                return;
            }
            case 21: {
                this.unsetNDataSets();
                return;
            }
            case 22: {
                this.unsetNRomBlocks();
                return;
            }
            case 23: {
                this.unsetReadonly();
                return;
            }
            case 24: {
                this.unsetReliability();
                return;
            }
            case 25: {
                this.unsetResistantToChangedSw();
                return;
            }
            case 26: {
                this.unsetRestoreAtStart();
                return;
            }
            case 27: {
                this.unsetStoreAtShutdown();
                return;
            }
            case 28: {
                this.unsetWriteOnlyOnce();
                return;
            }
            case 29: {
                this.unsetWriteVerification();
                return;
            }
            case 30: {
                this.unsetWritingFrequency();
                return;
            }
            case 31: {
                this.unsetWritingPriority();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getNvBlockDescriptor() != null;
            }
            case 19: {
                return this.isSetCalcRamBlockCrc();
            }
            case 20: {
                return this.isSetCheckStaticBlockId();
            }
            case 21: {
                return this.isSetNDataSets();
            }
            case 22: {
                return this.isSetNRomBlocks();
            }
            case 23: {
                return this.isSetReadonly();
            }
            case 24: {
                return this.isSetReliability();
            }
            case 25: {
                return this.isSetResistantToChangedSw();
            }
            case 26: {
                return this.isSetRestoreAtStart();
            }
            case 27: {
                return this.isSetStoreAtShutdown();
            }
            case 28: {
                return this.isSetWriteOnlyOnce();
            }
            case 29: {
                return this.isSetWriteVerification();
            }
            case 30: {
                return this.isSetWritingFrequency();
            }
            case 31: {
                return this.isSetWritingPriority();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (calcRamBlockCrc: ");
        if (this.calcRamBlockCrcESet) {
            result.append(this.calcRamBlockCrc);
        } else {
            result.append("<unset>");
        }
        result.append(", checkStaticBlockId: ");
        if (this.checkStaticBlockIdESet) {
            result.append(this.checkStaticBlockId);
        } else {
            result.append("<unset>");
        }
        result.append(", nDataSets: ");
        if (this.nDataSetsESet) {
            result.append(this.nDataSets);
        } else {
            result.append("<unset>");
        }
        result.append(", nRomBlocks: ");
        if (this.nRomBlocksESet) {
            result.append(this.nRomBlocks);
        } else {
            result.append("<unset>");
        }
        result.append(", readonly: ");
        if (this.readonlyESet) {
            result.append(this.readonly);
        } else {
            result.append("<unset>");
        }
        result.append(", reliability: ");
        if (this.reliabilityESet) {
            result.append((Object)this.reliability);
        } else {
            result.append("<unset>");
        }
        result.append(", resistantToChangedSw: ");
        if (this.resistantToChangedSwESet) {
            result.append(this.resistantToChangedSw);
        } else {
            result.append("<unset>");
        }
        result.append(", restoreAtStart: ");
        if (this.restoreAtStartESet) {
            result.append(this.restoreAtStart);
        } else {
            result.append("<unset>");
        }
        result.append(", storeAtShutdown: ");
        if (this.storeAtShutdownESet) {
            result.append(this.storeAtShutdown);
        } else {
            result.append("<unset>");
        }
        result.append(", writeOnlyOnce: ");
        if (this.writeOnlyOnceESet) {
            result.append(this.writeOnlyOnce);
        } else {
            result.append("<unset>");
        }
        result.append(", writeVerification: ");
        if (this.writeVerificationESet) {
            result.append(this.writeVerification);
        } else {
            result.append("<unset>");
        }
        result.append(", writingFrequency: ");
        if (this.writingFrequencyESet) {
            result.append(this.writingFrequency);
        } else {
            result.append("<unset>");
        }
        result.append(", writingPriority: ");
        if (this.writingPriorityESet) {
            result.append((Object)this.writingPriority);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

