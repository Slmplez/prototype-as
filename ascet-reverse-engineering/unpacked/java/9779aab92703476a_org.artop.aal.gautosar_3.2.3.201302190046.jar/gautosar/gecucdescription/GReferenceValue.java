/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gecucdescription;

import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

public interface GReferenceValue
extends GConfigReferenceValue {
    public GIdentifiable gGetValue();

    public void gSetValue(GIdentifiable var1);
}

