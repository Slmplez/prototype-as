/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.InvalidSyntaxException
 */
package org.osgi.service.useradmin;

import org.osgi.framework.InvalidSyntaxException;
import org.osgi.service.useradmin.Authorization;
import org.osgi.service.useradmin.Role;
import org.osgi.service.useradmin.User;

public interface UserAdmin {
    public Role createRole(String var1, int var2);

    public boolean removeRole(String var1);

    public Role getRole(String var1);

    public Role[] getRoles(String var1) throws InvalidSyntaxException;

    public User getUser(String var1, String var2);

    public Authorization getAuthorization(User var1);
}

