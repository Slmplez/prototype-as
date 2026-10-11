/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.util.AmdAutosarInterface;

public class AmdNvDataInterface
extends AmdAutosarInterface {
    public AmdNvDataInterface(String name, String uuid, String nameSpace) {
        super(name);
        this.getAmdMainFragment().setNvDataIterface(name, uuid, nameSpace);
    }
}

