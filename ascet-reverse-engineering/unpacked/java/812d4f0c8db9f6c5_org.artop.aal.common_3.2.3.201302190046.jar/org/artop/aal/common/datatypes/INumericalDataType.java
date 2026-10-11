/*
 * Decompiled with CFR 0.152.
 */
package org.artop.aal.common.datatypes;

public interface INumericalDataType {
    public void setRadix(int var1);

    public byte getRadix();

    public void setNoOfDigits(int var1);

    public byte getNoOfDigits();

    public Object basicGetValue();

    public void basicSetValue(Object var1);

    public void decode(String var1);

    public String encode();

    public boolean isNegative();
}

