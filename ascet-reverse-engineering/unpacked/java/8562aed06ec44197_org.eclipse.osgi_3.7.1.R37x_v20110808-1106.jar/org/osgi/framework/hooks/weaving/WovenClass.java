/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.hooks.weaving;

import java.security.ProtectionDomain;
import java.util.List;
import org.osgi.framework.wiring.BundleWiring;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface WovenClass {
    public byte[] getBytes();

    public void setBytes(byte[] var1);

    public List<String> getDynamicImports();

    public boolean isWeavingComplete();

    public String getClassName();

    public ProtectionDomain getProtectionDomain();

    public Class<?> getDefinedClass();

    public BundleWiring getBundleWiring();
}

