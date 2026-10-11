/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.sensoractuator;

import autosar21.ecuresource.sensoractuator.DisplayHWColourEnum;
import autosar21.ecuresource.sensoractuator.DisplayHWTypeOfCharactersEnum;
import autosar21.ecuresource.sensoractuator.SensorActuatorHW;

public interface DisplayHW
extends SensorActuatorHW {
    public Boolean getBacklight();

    public void setBacklight(Boolean var1);

    public void unsetBacklight();

    public boolean isSetBacklight();

    public Double getBrightness();

    public void setBrightness(Double var1);

    public void unsetBrightness();

    public boolean isSetBrightness();

    public Boolean getCharacterGenerator();

    public void setCharacterGenerator(Boolean var1);

    public void unsetCharacterGenerator();

    public boolean isSetCharacterGenerator();

    public String getCharacterSet();

    public void setCharacterSet(String var1);

    public void unsetCharacterSet();

    public boolean isSetCharacterSet();

    public DisplayHWColourEnum getColour();

    public void setColour(DisplayHWColourEnum var1);

    public void unsetColour();

    public boolean isSetColour();

    public Double getResolutionRation();

    public void setResolutionRation(Double var1);

    public void unsetResolutionRation();

    public boolean isSetResolutionRation();

    public Integer getResolutionX();

    public void setResolutionX(Integer var1);

    public void unsetResolutionX();

    public boolean isSetResolutionX();

    public Integer getResolutionY();

    public void setResolutionY(Integer var1);

    public void unsetResolutionY();

    public boolean isSetResolutionY();

    public Double getResponseTime();

    public void setResponseTime(Double var1);

    public void unsetResponseTime();

    public boolean isSetResponseTime();

    public DisplayHWTypeOfCharactersEnum getTypeOfCharacters();

    public void setTypeOfCharacters(DisplayHWTypeOfCharactersEnum var1);

    public void unsetTypeOfCharacters();

    public boolean isSetTypeOfCharacters();

    public Integer getViewingAngle();

    public void setViewingAngle(Integer var1);

    public void unsetViewingAngle();

    public boolean isSetViewingAngle();
}

