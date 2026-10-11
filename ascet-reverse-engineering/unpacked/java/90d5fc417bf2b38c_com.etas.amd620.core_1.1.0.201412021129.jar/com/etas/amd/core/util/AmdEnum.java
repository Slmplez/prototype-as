/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.util.AbstractAmdItem;
import java.math.BigInteger;

public class AmdEnum
extends AbstractAmdItem {
    public AmdEnum(String name, String uuid, String nameSpace) {
        this.getAmdMainFragment().setEnumeration(name, uuid, nameSpace);
    }

    public void addEnumerator(BigInteger index, String value) {
        this.getAmdMainFragment().addEnumerator(index, value);
    }
}

