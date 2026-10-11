/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.urlconversion;

import java.io.IOException;
import java.net.URL;

public interface URLConverter {
    public URL toFileURL(URL var1) throws IOException;

    public URL resolve(URL var1) throws IOException;
}

