/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework;

import java.util.Dictionary;
import java.util.Map;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Filter {
    public boolean match(ServiceReference<?> var1);

    public boolean match(Dictionary<String, ?> var1);

    public String toString();

    public boolean equals(Object var1);

    public int hashCode();

    public boolean matchCase(Dictionary<String, ?> var1);

    public boolean matches(Map<String, ?> var1);
}

