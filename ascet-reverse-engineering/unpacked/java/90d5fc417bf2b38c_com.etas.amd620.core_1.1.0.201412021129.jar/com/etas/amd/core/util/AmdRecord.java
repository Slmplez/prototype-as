/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.util.AbstractAmdComponent;

public class AmdRecord
extends AbstractAmdComponent {
    public AmdRecord(String name, String uuid, String nameSpace) {
        super(name);
        this.getAmdMainFragment().setRecord(name, uuid, nameSpace);
    }
}

