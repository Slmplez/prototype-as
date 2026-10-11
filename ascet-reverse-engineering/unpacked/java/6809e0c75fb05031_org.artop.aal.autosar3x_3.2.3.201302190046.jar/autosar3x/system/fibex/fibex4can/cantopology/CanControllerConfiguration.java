/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4can.cantopology;

import autosar3x.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;

public interface CanControllerConfiguration
extends AbstractCanCommunicationControllerAttributes {
    public Integer getNumberOfSamples();

    public void setNumberOfSamples(Integer var1);

    public void unsetNumberOfSamples();

    public boolean isSetNumberOfSamples();

    public Integer getPropagationDelay();

    public void setPropagationDelay(Integer var1);

    public void unsetPropagationDelay();

    public boolean isSetPropagationDelay();

    public Integer getSyncJumpWidth();

    public void setSyncJumpWidth(Integer var1);

    public void unsetSyncJumpWidth();

    public boolean isSetSyncJumpWidth();

    public Integer getTimeSeg1();

    public void setTimeSeg1(Integer var1);

    public void unsetTimeSeg1();

    public boolean isSetTimeSeg1();

    public Integer getTimeSeg2();

    public void setTimeSeg2(Integer var1);

    public void unsetTimeSeg2();

    public boolean isSetTimeSeg2();
}

