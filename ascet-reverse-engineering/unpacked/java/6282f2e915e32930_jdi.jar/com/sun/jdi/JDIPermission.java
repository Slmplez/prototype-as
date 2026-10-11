/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import java.security.BasicPermission;

public class JDIPermission
extends BasicPermission {
    private static final long serialVersionUID = 1L;

    public JDIPermission(String arg1) {
        super(arg1);
    }

    public JDIPermission(String arg1, String arg2) {
        super(arg1, arg2);
    }
}

