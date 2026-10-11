/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.core.ProvisionException
 */
package org.eclipse.equinox.p2.engine;

import java.util.Collection;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.engine.IProfile;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IProfileRegistry {
    public static final String SELF = "_SELF_";
    public static final String SERVICE_NAME;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.p2.engine.IProfileRegistry");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
    }

    public IProfile getProfile(String var1);

    public IProfile getProfile(String var1, long var2);

    public long[] listProfileTimestamps(String var1);

    public IProfile[] getProfiles();

    public IProfile addProfile(String var1) throws ProvisionException;

    public IProfile addProfile(String var1, Map<String, String> var2) throws ProvisionException;

    public boolean containsProfile(String var1);

    public void removeProfile(String var1, long var2) throws ProvisionException;

    public void removeProfile(String var1);

    public boolean isCurrent(IProfile var1);

    public IStatus setProfileStateProperties(String var1, long var2, Map<String, String> var4);

    public IStatus setProfileStateProperty(String var1, long var2, String var4, String var5);

    public Map<String, String> getProfileStateProperties(String var1, long var2);

    public Map<String, String> getProfileStateProperties(String var1, String var2);

    public IStatus removeProfileStateProperties(String var1, long var2, Collection<String> var4);
}

