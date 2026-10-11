/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagEventDebounceAlgorithm;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface DiagEventDebounceCounterBased
extends DiagEventDebounceAlgorithm {
    public Integer getCounterDecrementStepSize();

    public void setCounterDecrementStepSize(Integer var1);

    public void unsetCounterDecrementStepSize();

    public boolean isSetCounterDecrementStepSize();

    public Integer getCounterFailedThreshold();

    public void setCounterFailedThreshold(Integer var1);

    public void unsetCounterFailedThreshold();

    public boolean isSetCounterFailedThreshold();

    public Integer getCounterIncrementStepSize();

    public void setCounterIncrementStepSize(Integer var1);

    public void unsetCounterIncrementStepSize();

    public boolean isSetCounterIncrementStepSize();

    public Boolean getCounterJumpDown();

    public void setCounterJumpDown(Boolean var1);

    public void unsetCounterJumpDown();

    public boolean isSetCounterJumpDown();

    public Integer getCounterJumpDownValue();

    public void setCounterJumpDownValue(Integer var1);

    public void unsetCounterJumpDownValue();

    public boolean isSetCounterJumpDownValue();

    public Boolean getCounterJumpUp();

    public void setCounterJumpUp(Boolean var1);

    public void unsetCounterJumpUp();

    public boolean isSetCounterJumpUp();

    public Integer getCounterJumpUpValue();

    public void setCounterJumpUpValue(Integer var1);

    public void unsetCounterJumpUpValue();

    public boolean isSetCounterJumpUpValue();

    public Integer getCounterPassedThreshold();

    public void setCounterPassedThreshold(Integer var1);

    public void unsetCounterPassedThreshold();

    public boolean isSetCounterPassedThreshold();

    public IntegerDatatype getCounterDecrementStepSizeData();

    public void setCounterDecrementStepSizeData(IntegerDatatype var1);

    public IntegerDatatype getCounterFailedThresholdData();

    public void setCounterFailedThresholdData(IntegerDatatype var1);

    public IntegerDatatype getCounterIncrementStepSizeData();

    public void setCounterIncrementStepSizeData(IntegerDatatype var1);

    public IntegerDatatype getCounterJumpDownValueData();

    public void setCounterJumpDownValueData(IntegerDatatype var1);

    public IntegerDatatype getCounterJumpUpValueData();

    public void setCounterJumpUpValueData(IntegerDatatype var1);

    public IntegerDatatype getCounterPassedThresholdData();

    public void setCounterPassedThresholdData(IntegerDatatype var1);
}

