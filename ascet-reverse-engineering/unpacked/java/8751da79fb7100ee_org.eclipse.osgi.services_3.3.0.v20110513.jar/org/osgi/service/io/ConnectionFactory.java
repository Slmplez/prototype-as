/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.microedition.io.Connection
 */
package org.osgi.service.io;

import java.io.IOException;
import javax.microedition.io.Connection;

public interface ConnectionFactory {
    public static final String IO_SCHEME = "io.scheme";

    public Connection createConnection(String var1, int var2, boolean var3) throws IOException;
}

