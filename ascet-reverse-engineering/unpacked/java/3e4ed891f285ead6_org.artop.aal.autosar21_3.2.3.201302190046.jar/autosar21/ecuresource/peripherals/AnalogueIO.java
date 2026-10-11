/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.basicelements.ElectricalRange;
import autosar21.ecuresource.peripherals.AnalogueIOModeEnum;
import autosar21.ecuresource.peripherals.Peripheral;

public interface AnalogueIO
extends Peripheral {
    public Double getAccuracy();

    public void setAccuracy(Double var1);

    public void unsetAccuracy();

    public boolean isSetAccuracy();

    public Double getConversionTime();

    public void setConversionTime(Double var1);

    public void unsetConversionTime();

    public boolean isSetConversionTime();

    public ElectricalRange getExternalReferenceVoltage();

    public void setExternalReferenceVoltage(ElectricalRange var1);

    public AnalogueIOModeEnum getMode();

    public void setMode(AnalogueIOModeEnum var1);

    public void unsetMode();

    public boolean isSetMode();

    public Integer getMultiplexedM();

    public void setMultiplexedM(Integer var1);

    public void unsetMultiplexedM();

    public boolean isSetMultiplexedM();

    public Integer getMultiplexedN();

    public void setMultiplexedN(Integer var1);

    public void unsetMultiplexedN();

    public boolean isSetMultiplexedN();

    public Integer getResolution();

    public void setResolution(Integer var1);

    public void unsetResolution();

    public boolean isSetResolution();

    public Integer getWidth();

    public void setWidth(Integer var1);

    public void unsetWidth();

    public boolean isSetWidth();
}

