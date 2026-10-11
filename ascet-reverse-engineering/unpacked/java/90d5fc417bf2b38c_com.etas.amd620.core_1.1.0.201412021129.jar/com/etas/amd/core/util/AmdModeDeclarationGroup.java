/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.util.AbstractAmdItem;
import java.math.BigInteger;

public class AmdModeDeclarationGroup
extends AbstractAmdItem {
    private BigInteger index = BigInteger.ZERO;

    public AmdModeDeclarationGroup(String name, String uuid, String nameSpace) {
        this.getAmdMainFragment().setModeDeclarationGroup(name, uuid, nameSpace);
    }

    public void addMode(String modeName) {
        this.getAmdMainFragment().addMode(this.index, modeName);
        this.index = this.index.add(BigInteger.ONE);
    }
}

