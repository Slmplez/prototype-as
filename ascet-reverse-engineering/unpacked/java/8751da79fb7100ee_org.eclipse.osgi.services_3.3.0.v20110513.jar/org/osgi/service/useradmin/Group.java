/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.useradmin;

import org.osgi.service.useradmin.Role;
import org.osgi.service.useradmin.User;

public interface Group
extends User {
    public boolean addMember(Role var1);

    public boolean addRequiredMember(Role var1);

    public boolean removeMember(Role var1);

    public Role[] getMembers();

    public Role[] getRequiredMembers();
}

