/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.net.URL;

public interface ResourceLocator {
    public URL getBaseURL();

    public Object getImage(String var1);

    public String getString(String var1);

    public String getString(String var1, boolean var2);

    public String getString(String var1, Object[] var2);

    public String getString(String var1, Object[] var2, boolean var3);
}

