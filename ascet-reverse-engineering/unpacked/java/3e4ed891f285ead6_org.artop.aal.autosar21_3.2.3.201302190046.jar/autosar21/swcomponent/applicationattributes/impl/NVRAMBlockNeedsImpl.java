/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeeds;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeedsReliabilityEnum;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeedsWritingPriorityEnum;
import autosar21.swcomponent.applicationattributes.impl.ServiceNeedsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class NVRAMBlockNeedsImpl
extends ServiceNeedsImpl
implements NVRAMBlockNeeds {
    protected static final Integer NDATA_SETS_EDEFAULT = new Integer(0);
    protected Integer nDataSets = NDATA_SETS_EDEFAULT;
    protected boolean nDataSetsESet;
    protected static final Boolean READONLY_EDEFAULT = Boolean.FALSE;
    protected Boolean readonly = READONLY_EDEFAULT;
    protected boolean readonlyESet;
    protected static final NVRAMBlockNeedsReliabilityEnum RELIABILITY_EDEFAULT = NVRAMBlockNeedsReliabilityEnum.LOW;
    protected NVRAMBlockNeedsReliabilityEnum reliability = RELIABILITY_EDEFAULT;
    protected boolean reliabilityESet;
    protected static final Boolean RESISTANT_TO_CHANGED_SW_EDEFAULT = Boolean.FALSE;
    protected Boolean resistantToChangedSw = RESISTANT_TO_CHANGED_SW_EDEFAULT;
    protected boolean resistantToChangedSwESet;
    protected static final Boolean RESTORE_AT_START_EDEFAULT = Boolean.FALSE;
    protected Boolean restoreAtStart = RESTORE_AT_START_EDEFAULT;
    protected boolean restoreAtStartESet;
    protected static final Boolean TRANSACTION_SAFE_EDEFAULT = Boolean.FALSE;
    protected Boolean transactionSafe = TRANSACTION_SAFE_EDEFAULT;
    protected boolean transactionSafeESet;
    protected static final Boolean WRITE_ONLY_ONCE_EDEFAULT = Boolean.FALSE;
    protected Boolean writeOnlyOnce = WRITE_ONLY_ONCE_EDEFAULT;
    protected boolean writeOnlyOnceESet;
    protected static final Integer WRITING_FREQUENCY_EDEFAULT = new Integer(0);
    protected Integer writingFrequency = WRITING_FREQUENCY_EDEFAULT;
    protected boolean writingFrequencyESet;
    protected static final NVRAMBlockNeedsWritingPriorityEnum WRITING_PRIORITY_EDEFAULT = NVRAMBlockNeedsWritingPriorityEnum.LOW;
    protected NVRAMBlockNeedsWritingPriorityEnum writingPriority = WRITING_PRIORITY_EDEFAULT;
    protected boolean writingPriorityESet;

    protected NVRAMBlockNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.NVRAM_BLOCK_NEEDS;
    }

    public Integer getNDataSets() {
        return this.nDataSets;
    }

    public void setNDataSets(Integer newNDataSets) {
        Integer oldNDataSets = this.nDataSets;
        this.nDataSets = newNDataSets;
        boolean oldNDataSetsESet = this.nDataSetsESet;
        this.nDataSetsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldNDataSets, (Object)this.nDataSets, !oldNDataSetsESet));
        }
    }

    public void unsetNDataSets() {
        Integer oldNDataSets = this.nDataSets;
        boolean oldNDataSetsESet = this.nDataSetsESet;
        this.nDataSets = NDATA_SETS_EDEFAULT;
        this.nDataSetsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldNDataSets, (Object)NDATA_SETS_EDEFAULT, oldNDataSetsESet));
        }
    }

    public boolean isSetNDataSets() {
        return this.nDataSetsESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldReadonly, (Object)this.readonly, !oldReadonlyESet));
        }
    }

    public void unsetReadonly() {
        Boolean oldReadonly = this.readonly;
        boolean oldReadonlyESet = this.readonlyESet;
        this.readonly = READONLY_EDEFAULT;
        this.readonlyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldReadonly, (Object)READONLY_EDEFAULT, oldReadonlyESet));
        }
    }

    public boolean isSetReadonly() {
        return this.readonlyESet;
    }

    public NVRAMBlockNeedsReliabilityEnum getReliability() {
        return this.reliability;
    }

    public void setReliability(NVRAMBlockNeedsReliabilityEnum newReliability) {
        NVRAMBlockNeedsReliabilityEnum oldReliability = this.reliability;
        this.reliability = newReliability == null ? RELIABILITY_EDEFAULT : newReliability;
        boolean oldReliabilityESet = this.reliabilityESet;
        this.reliabilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldReliability, (Object)this.reliability, !oldReliabilityESet));
        }
    }

    public void unsetReliability() {
        NVRAMBlockNeedsReliabilityEnum oldReliability = this.reliability;
        boolean oldReliabilityESet = this.reliabilityESet;
        this.reliability = RELIABILITY_EDEFAULT;
        this.reliabilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldReliability, (Object)RELIABILITY_EDEFAULT, oldReliabilityESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldResistantToChangedSw, (Object)this.resistantToChangedSw, !oldResistantToChangedSwESet));
        }
    }

    public void unsetResistantToChangedSw() {
        Boolean oldResistantToChangedSw = this.resistantToChangedSw;
        boolean oldResistantToChangedSwESet = this.resistantToChangedSwESet;
        this.resistantToChangedSw = RESISTANT_TO_CHANGED_SW_EDEFAULT;
        this.resistantToChangedSwESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldResistantToChangedSw, (Object)RESISTANT_TO_CHANGED_SW_EDEFAULT, oldResistantToChangedSwESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldRestoreAtStart, (Object)this.restoreAtStart, !oldRestoreAtStartESet));
        }
    }

    public void unsetRestoreAtStart() {
        Boolean oldRestoreAtStart = this.restoreAtStart;
        boolean oldRestoreAtStartESet = this.restoreAtStartESet;
        this.restoreAtStart = RESTORE_AT_START_EDEFAULT;
        this.restoreAtStartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldRestoreAtStart, (Object)RESTORE_AT_START_EDEFAULT, oldRestoreAtStartESet));
        }
    }

    public boolean isSetRestoreAtStart() {
        return this.restoreAtStartESet;
    }

    public Boolean getTransactionSafe() {
        return this.transactionSafe;
    }

    public void setTransactionSafe(Boolean newTransactionSafe) {
        Boolean oldTransactionSafe = this.transactionSafe;
        this.transactionSafe = newTransactionSafe;
        boolean oldTransactionSafeESet = this.transactionSafeESet;
        this.transactionSafeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldTransactionSafe, (Object)this.transactionSafe, !oldTransactionSafeESet));
        }
    }

    public void unsetTransactionSafe() {
        Boolean oldTransactionSafe = this.transactionSafe;
        boolean oldTransactionSafeESet = this.transactionSafeESet;
        this.transactionSafe = TRANSACTION_SAFE_EDEFAULT;
        this.transactionSafeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldTransactionSafe, (Object)TRANSACTION_SAFE_EDEFAULT, oldTransactionSafeESet));
        }
    }

    public boolean isSetTransactionSafe() {
        return this.transactionSafeESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldWriteOnlyOnce, (Object)this.writeOnlyOnce, !oldWriteOnlyOnceESet));
        }
    }

    public void unsetWriteOnlyOnce() {
        Boolean oldWriteOnlyOnce = this.writeOnlyOnce;
        boolean oldWriteOnlyOnceESet = this.writeOnlyOnceESet;
        this.writeOnlyOnce = WRITE_ONLY_ONCE_EDEFAULT;
        this.writeOnlyOnceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldWriteOnlyOnce, (Object)WRITE_ONLY_ONCE_EDEFAULT, oldWriteOnlyOnceESet));
        }
    }

    public boolean isSetWriteOnlyOnce() {
        return this.writeOnlyOnceESet;
    }

    public Integer getWritingFrequency() {
        return this.writingFrequency;
    }

    public void setWritingFrequency(Integer newWritingFrequency) {
        Integer oldWritingFrequency = this.writingFrequency;
        this.writingFrequency = newWritingFrequency;
        boolean oldWritingFrequencyESet = this.writingFrequencyESet;
        this.writingFrequencyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldWritingFrequency, (Object)this.writingFrequency, !oldWritingFrequencyESet));
        }
    }

    public void unsetWritingFrequency() {
        Integer oldWritingFrequency = this.writingFrequency;
        boolean oldWritingFrequencyESet = this.writingFrequencyESet;
        this.writingFrequency = WRITING_FREQUENCY_EDEFAULT;
        this.writingFrequencyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldWritingFrequency, (Object)WRITING_FREQUENCY_EDEFAULT, oldWritingFrequencyESet));
        }
    }

    public boolean isSetWritingFrequency() {
        return this.writingFrequencyESet;
    }

    public NVRAMBlockNeedsWritingPriorityEnum getWritingPriority() {
        return this.writingPriority;
    }

    public void setWritingPriority(NVRAMBlockNeedsWritingPriorityEnum newWritingPriority) {
        NVRAMBlockNeedsWritingPriorityEnum oldWritingPriority = this.writingPriority;
        this.writingPriority = newWritingPriority == null ? WRITING_PRIORITY_EDEFAULT : newWritingPriority;
        boolean oldWritingPriorityESet = this.writingPriorityESet;
        this.writingPriorityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldWritingPriority, (Object)this.writingPriority, !oldWritingPriorityESet));
        }
    }

    public void unsetWritingPriority() {
        NVRAMBlockNeedsWritingPriorityEnum oldWritingPriority = this.writingPriority;
        boolean oldWritingPriorityESet = this.writingPriorityESet;
        this.writingPriority = WRITING_PRIORITY_EDEFAULT;
        this.writingPriorityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldWritingPriority, (Object)WRITING_PRIORITY_EDEFAULT, oldWritingPriorityESet));
        }
    }

    public boolean isSetWritingPriority() {
        return this.writingPriorityESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getNDataSets();
            }
            case 7: {
                return this.getReadonly();
            }
            case 8: {
                return this.getReliability();
            }
            case 9: {
                return this.getResistantToChangedSw();
            }
            case 10: {
                return this.getRestoreAtStart();
            }
            case 11: {
                return this.getTransactionSafe();
            }
            case 12: {
                return this.getWriteOnlyOnce();
            }
            case 13: {
                return this.getWritingFrequency();
            }
            case 14: {
                return this.getWritingPriority();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setNDataSets((Integer)newValue);
                return;
            }
            case 7: {
                this.setReadonly((Boolean)newValue);
                return;
            }
            case 8: {
                this.setReliability((NVRAMBlockNeedsReliabilityEnum)((Object)newValue));
                return;
            }
            case 9: {
                this.setResistantToChangedSw((Boolean)newValue);
                return;
            }
            case 10: {
                this.setRestoreAtStart((Boolean)newValue);
                return;
            }
            case 11: {
                this.setTransactionSafe((Boolean)newValue);
                return;
            }
            case 12: {
                this.setWriteOnlyOnce((Boolean)newValue);
                return;
            }
            case 13: {
                this.setWritingFrequency((Integer)newValue);
                return;
            }
            case 14: {
                this.setWritingPriority((NVRAMBlockNeedsWritingPriorityEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetNDataSets();
                return;
            }
            case 7: {
                this.unsetReadonly();
                return;
            }
            case 8: {
                this.unsetReliability();
                return;
            }
            case 9: {
                this.unsetResistantToChangedSw();
                return;
            }
            case 10: {
                this.unsetRestoreAtStart();
                return;
            }
            case 11: {
                this.unsetTransactionSafe();
                return;
            }
            case 12: {
                this.unsetWriteOnlyOnce();
                return;
            }
            case 13: {
                this.unsetWritingFrequency();
                return;
            }
            case 14: {
                this.unsetWritingPriority();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetNDataSets();
            }
            case 7: {
                return this.isSetReadonly();
            }
            case 8: {
                return this.isSetReliability();
            }
            case 9: {
                return this.isSetResistantToChangedSw();
            }
            case 10: {
                return this.isSetRestoreAtStart();
            }
            case 11: {
                return this.isSetTransactionSafe();
            }
            case 12: {
                return this.isSetWriteOnlyOnce();
            }
            case 13: {
                return this.isSetWritingFrequency();
            }
            case 14: {
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
        result.append(" (nDataSets: ");
        if (this.nDataSetsESet) {
            result.append(this.nDataSets);
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
        result.append(", transactionSafe: ");
        if (this.transactionSafeESet) {
            result.append(this.transactionSafe);
        } else {
            result.append("<unset>");
        }
        result.append(", writeOnlyOnce: ");
        if (this.writeOnlyOnceESet) {
            result.append(this.writeOnlyOnce);
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

