/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.microedition.io.Connection
 */
package org.osgi.service.io;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.microedition.io.Connection;

public interface ConnectorService {
    public static final int READ = 1;
    public static final int WRITE = 2;
    public static final int READ_WRITE = 3;

    public Connection open(String var1) throws IOException;

    public Connection open(String var1, int var2) throws IOException;

    public Connection open(String var1, int var2, boolean var3) throws IOException;

    public InputStream openInputStream(String var1) throws IOException;

    public DataInputStream openDataInputStream(String var1) throws IOException;

    public OutputStream openOutputStream(String var1) throws IOException;

    public DataOutputStream openDataOutputStream(String var1) throws IOException;
}

