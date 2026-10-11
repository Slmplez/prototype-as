/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gdatatype.gunits;

import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import java.math.BigDecimal;

public interface GPhysicalDimension
extends GPackageableElement {
    public BigDecimal gGetCurrentExp();

    public void gSetCurrentExp(BigDecimal var1);

    public void gUnsetCurrentExp();

    public boolean gIsSetCurrentExp();

    public BigDecimal gGetLengthExp();

    public void gSetLengthExp(BigDecimal var1);

    public void gUnsetLengthExp();

    public boolean gIsSetLengthExp();

    public BigDecimal gGetLuminousIntensityExp();

    public void gSetLuminousIntensityExp(BigDecimal var1);

    public void gUnsetLuminousIntensityExp();

    public boolean gIsSetLuminousIntensityExp();

    public BigDecimal gGetMassExp();

    public void gSetMassExp(BigDecimal var1);

    public void gUnsetMassExp();

    public boolean gIsSetMassExp();

    public BigDecimal gGetMolarAmountExp();

    public void gSetMolarAmountExp(BigDecimal var1);

    public void gUnsetMolarAmountExp();

    public boolean gIsSetMolarAmountExp();

    public BigDecimal gGetTemperatureExp();

    public void gSetTemperatureExp(BigDecimal var1);

    public void gUnsetTemperatureExp();

    public boolean gIsSetTemperatureExp();

    public BigDecimal gGetTimeExp();

    public void gSetTimeExp(BigDecimal var1);

    public void gUnsetTimeExp();

    public boolean gIsSetTimeExp();
}

