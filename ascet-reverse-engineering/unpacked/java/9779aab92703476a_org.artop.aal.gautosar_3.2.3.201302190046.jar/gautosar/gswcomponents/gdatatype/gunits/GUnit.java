/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gdatatype.gunits;

import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;

public interface GUnit
extends GPackageableElement {
    public GPhysicalDimension gGetPhysicalDimension();

    public void gSetPhysicalDimension(GPhysicalDimension var1);

    public Double gGetFactorSiToUnit();

    public void gSetFactorSiToUnit(Double var1);

    public void gUnsetFactorSiToUnit();

    public boolean gIsSetFactorSiToUnit();

    public Double gGetOffsetSiToUnit();

    public void gSetOffsetSiToUnit(Double var1);

    public void gUnsetOffsetSiToUnit();

    public boolean gIsSetOffsetSiToUnit();
}

