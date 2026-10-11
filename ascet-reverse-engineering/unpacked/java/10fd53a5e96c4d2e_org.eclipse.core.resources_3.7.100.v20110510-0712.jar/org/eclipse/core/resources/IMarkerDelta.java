/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources;

import java.util.Map;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IMarkerDelta {
    public Object getAttribute(String var1);

    public int getAttribute(String var1, int var2);

    public String getAttribute(String var1, String var2);

    public boolean getAttribute(String var1, boolean var2);

    public Map<String, Object> getAttributes();

    public Object[] getAttributes(String[] var1);

    public long getId();

    public int getKind();

    public IMarker getMarker();

    public IResource getResource();

    public String getType();

    public boolean isSubtypeOf(String var1);
}

