/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;

public interface GParameterInAtomicSwcIRef
extends GARObject {
    public GPortPrototype gGetContextPort();

    public void gSetContextPort(GPortPrototype var1);

    public GDataPrototype gGetTargetParameter();

    public void gSetTargetParameter(GDataPrototype var1);
}

