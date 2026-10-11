/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GIntervalTypeEnum;

public interface GAbstractLimit
extends GARObject {
    public GIntervalTypeEnum gGetIntervalType();

    public void gSetIntervalType(GIntervalTypeEnum var1);

    public void gUnsetIntervalType();

    public boolean gIsSetIntervalType();
}

