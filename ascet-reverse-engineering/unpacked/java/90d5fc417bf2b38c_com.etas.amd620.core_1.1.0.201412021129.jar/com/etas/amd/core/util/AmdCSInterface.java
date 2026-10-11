/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.util.AmdAutosarInterface;
import com.etas.amd620.core.ComponentMain.MethodT;

public class AmdCSInterface
extends AmdAutosarInterface {
    public AmdCSInterface(String name, String uuid, String nameSpace) {
        super(name);
        this.getAmdMainFragment().setCSInterface(name, uuid, nameSpace);
        this.getAmdSpecificationFragment().setSpec();
    }

    public void addMethod(MethodT meth) {
        this.getAmdMainFragment().addMethod(meth);
        this.getAmdSpecificationFragment().addMethod(meth.getName());
    }
}

