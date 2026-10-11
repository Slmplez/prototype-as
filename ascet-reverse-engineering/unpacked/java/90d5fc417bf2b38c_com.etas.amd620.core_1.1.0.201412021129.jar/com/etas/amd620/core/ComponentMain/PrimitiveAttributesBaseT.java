/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.AttributesBaseT;
import com.etas.amd620.core.ComponentMain.KindType;

public interface PrimitiveAttributesBaseT
extends AttributesBaseT {
    public boolean isCalibrationRead();

    public void setCalibrationRead(boolean var1);

    public void unsetCalibrationRead();

    public boolean isSetCalibrationRead();

    public boolean isCalibrationWrite();

    public void setCalibrationWrite(boolean var1);

    public void unsetCalibrationWrite();

    public boolean isSetCalibrationWrite();

    public KindType getKind();

    public void setKind(KindType var1);

    public void unsetKind();

    public boolean isSetKind();

    public boolean isVolatile();

    public void setVolatile(boolean var1);

    public void unsetVolatile();

    public boolean isSetVolatile();
}

