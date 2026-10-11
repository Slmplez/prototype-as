/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.applicationattributes;

import autosar21.swcomponent.applicationattributes.NVRAMBlockNeedsReliabilityEnum;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeedsWritingPriorityEnum;
import autosar21.swcomponent.applicationattributes.ServiceNeeds;

public interface NVRAMBlockNeeds
extends ServiceNeeds {
    public Integer getNDataSets();

    public void setNDataSets(Integer var1);

    public void unsetNDataSets();

    public boolean isSetNDataSets();

    public Boolean getReadonly();

    public void setReadonly(Boolean var1);

    public void unsetReadonly();

    public boolean isSetReadonly();

    public NVRAMBlockNeedsReliabilityEnum getReliability();

    public void setReliability(NVRAMBlockNeedsReliabilityEnum var1);

    public void unsetReliability();

    public boolean isSetReliability();

    public Boolean getResistantToChangedSw();

    public void setResistantToChangedSw(Boolean var1);

    public void unsetResistantToChangedSw();

    public boolean isSetResistantToChangedSw();

    public Boolean getRestoreAtStart();

    public void setRestoreAtStart(Boolean var1);

    public void unsetRestoreAtStart();

    public boolean isSetRestoreAtStart();

    public Boolean getTransactionSafe();

    public void setTransactionSafe(Boolean var1);

    public void unsetTransactionSafe();

    public boolean isSetTransactionSafe();

    public Boolean getWriteOnlyOnce();

    public void setWriteOnlyOnce(Boolean var1);

    public void unsetWriteOnlyOnce();

    public boolean isSetWriteOnlyOnce();

    public Integer getWritingFrequency();

    public void setWritingFrequency(Integer var1);

    public void unsetWritingFrequency();

    public boolean isSetWritingFrequency();

    public NVRAMBlockNeedsWritingPriorityEnum getWritingPriority();

    public void setWritingPriority(NVRAMBlockNeedsWritingPriorityEnum var1);

    public void unsetWritingPriority();

    public boolean isSetWritingPriority();
}

