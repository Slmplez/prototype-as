/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework;

import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ServiceReference<S>
extends Comparable<Object> {
    public Object getProperty(String var1);

    public String[] getPropertyKeys();

    public Bundle getBundle();

    public Bundle[] getUsingBundles();

    public boolean isAssignableTo(Bundle var1, String var2);

    @Override
    public int compareTo(Object var1);
}

