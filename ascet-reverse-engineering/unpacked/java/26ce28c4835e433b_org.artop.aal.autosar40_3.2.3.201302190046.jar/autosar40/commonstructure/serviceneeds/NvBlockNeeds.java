/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.NvBlockNeedsReliabilityEnum;
import autosar40.commonstructure.serviceneeds.NvBlockNeedsWritingPriorityEnum;
import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface NvBlockNeeds
extends ServiceNeeds {
    public NvBlockDescriptor getNvBlockDescriptor();

    public void setNvBlockDescriptor(NvBlockDescriptor var1);

    public Boolean getCalcRamBlockCrc();

    public void setCalcRamBlockCrc(Boolean var1);

    public void unsetCalcRamBlockCrc();

    public boolean isSetCalcRamBlockCrc();

    public Boolean getCheckStaticBlockId();

    public void setCheckStaticBlockId(Boolean var1);

    public void unsetCheckStaticBlockId();

    public boolean isSetCheckStaticBlockId();

    public Long getNDataSets();

    public void setNDataSets(Long var1);

    public void unsetNDataSets();

    public boolean isSetNDataSets();

    public Long getNRomBlocks();

    public void setNRomBlocks(Long var1);

    public void unsetNRomBlocks();

    public boolean isSetNRomBlocks();

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

    public Boolean getStoreAtShutdown();

    public void setStoreAtShutdown(Boolean var1);

    public void unsetStoreAtShutdown();

    public boolean isSetStoreAtShutdown();

    public Boolean getWriteOnlyOnce();

    public void setWriteOnlyOnce(Boolean var1);

    public void unsetWriteOnlyOnce();

    public boolean isSetWriteOnlyOnce();

    public Boolean getWriteVerification();

    public void setWriteVerification(Boolean var1);

    public void unsetWriteVerification();

    public boolean isSetWriteVerification();

    public Long getWritingFrequency();

    public void setWritingFrequency(Long var1);

    public void unsetWritingFrequency();

    public boolean isSetWritingFrequency();

    public NvBlockNeedsWritingPriorityEnum getWritingPriority();

    public void setWritingPriority(NvBlockNeedsWritingPriorityEnum var1);

    public void unsetWritingPriority();

    public boolean isSetWritingPriority();

    public PositiveIntegerDatatype getNDataSetsData();

    public void setNDataSetsData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getNRomBlocksData();

    public void setNRomBlocksData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getWritingFrequencyData();

    public void setWritingFrequencyData(PositiveIntegerDatatype var1);
}

