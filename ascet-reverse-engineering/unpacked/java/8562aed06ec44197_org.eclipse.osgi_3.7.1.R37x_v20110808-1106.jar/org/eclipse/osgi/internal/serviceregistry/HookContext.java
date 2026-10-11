/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import org.osgi.framework.ServiceRegistration;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HookContext {
    public void call(Object var1, ServiceRegistration<?> var2) throws Exception;

    public String getHookClassName();

    public String getHookMethodName();
}

