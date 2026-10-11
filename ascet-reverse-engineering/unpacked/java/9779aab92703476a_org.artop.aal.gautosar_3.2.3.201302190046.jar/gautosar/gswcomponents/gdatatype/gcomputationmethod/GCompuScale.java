/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gdatatype.gcomputationmethod;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;

public interface GCompuScale
extends GARObject {
    public GCompuScaleContents gGetCompuScaleContents();

    public void gSetCompuScaleContents(GCompuScaleContents var1);

    public GLimit gGetLowerLimit();

    public void gSetLowerLimit(GLimit var1);

    public GLimit gGetUpperLimit();

    public void gSetUpperLimit(GLimit var1);

    public String gGetShortLabel();

    public void gSetShortLabel(String var1);

    public void gUnsetShortLabel();

    public boolean gIsSetShortLabel();
}

