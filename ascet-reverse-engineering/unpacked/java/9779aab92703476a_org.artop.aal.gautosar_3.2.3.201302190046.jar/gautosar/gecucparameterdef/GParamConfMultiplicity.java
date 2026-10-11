/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gecucparameterdef;

import gautosar.ggenericstructure.ginfrastructure.GARObject;

public interface GParamConfMultiplicity
extends GARObject {
    public String gGetLowerMultiplicityAsString();

    public void gSetLowerMultiplicityAsString(String var1);

    public String gGetUpperMultiplicityAsString();

    public void gSetUpperMultiplicityAsString(String var1);

    public Boolean gGetUpperMultiplicityInfinite();

    public void gSetUpperMultiplicityInfinite(Boolean var1);
}

