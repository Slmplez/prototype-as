/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.util.AmdAutosarInterface;

public class AmdSRInterface
extends AmdAutosarInterface {
    public AmdSRInterface(String name, String uuid, String nameSpace) {
        super(name);
        this.getAmdMainFragment().setSRIterface(name, uuid, nameSpace);
    }
}

