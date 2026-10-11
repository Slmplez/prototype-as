/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.constants;

import autosar40.commonstructure.constants.ValueSpecification;

public interface TextValueSpecification
extends ValueSpecification {
    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();
}

