/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.util.AmdSRInterface;

public class AmdCalprmInterface
extends AmdSRInterface {
    public AmdCalprmInterface(String name, String uuid, String nameSpace) {
        super(name, uuid, nameSpace);
        this.getAmdMainFragment().setCalprmInterface();
    }
}

