/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceneeds;

import autosar3x.commonstructure.serviceneeds.NvBlockNeedsReliabilityEnum;
import autosar3x.commonstructure.serviceneeds.NvBlockNeedsWritingPriorityEnum;
import autosar3x.commonstructure.serviceneeds.ServiceNeeds;

public interface NvBlockNeeds
extends ServiceNeeds {
    public Integer getNDataSets();

    public void setNDataSets(Integer var1);

    public void unsetNDataSets();

    public boolean isSetNDataSets();

    public Boolean getReadonly();

    public void setReadonly(Boolean var1);

    public void unsetReadonly();

    public boolean isSetReadonly();

    public NvBlockNeedsReliabilityEnum getReliability();

    public void setReliability(NvBlockNeedsReliabilityEnum var1);

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

    public Boolean getWriteOnlyOnce();

    public void setWriteOnlyOnce(Boolean var1);

    public void unsetWriteOnlyOnce();

    public boolean isSetWriteOnlyOnce();

    public Integer getWritingFrequency();

    public void setWritingFrequency(Integer var1);

    public void unsetWritingFrequency();

    public boolean isSetWritingFrequency();

    public NvBlockNeedsWritingPriorityEnum getWritingPriority();

    public void setWritingPriority(NvBlockNeedsWritingPriorityEnum var1);

    public void unsetWritingPriority();

    public boolean isSetWritingPriority();
}

