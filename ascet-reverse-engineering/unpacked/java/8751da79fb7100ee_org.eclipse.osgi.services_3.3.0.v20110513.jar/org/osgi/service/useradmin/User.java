/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.useradmin;

import java.util.Dictionary;
import org.osgi.service.useradmin.Role;

public interface User
extends Role {
    public Dictionary getCredentials();

    public boolean hasCredential(String var1, Object var2);
}

