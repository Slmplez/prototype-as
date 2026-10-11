/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.launching;

import java.io.IOException;
import java.net.ConnectException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Random;

public class SocketUtil {
    private static final Random fgRandom = new Random(System.currentTimeMillis());

    /*
     * Unable to fully structure code
     */
    public static int findUnusedLocalPort(String host, int searchFrom, int searchTo) {
        i = 0;
        while (i < 10) {
            block18: {
                s = null;
                port = SocketUtil.getRandomPort(searchFrom, searchTo);
                try {
                    s = new Socket(host, port);
                }
                catch (ConnectException v0) {
                    var7_6 = port;
                    if (s != null) {
                        try {
                            s.close();
                        }
                        catch (IOException v1) {}
                    }
                    return var7_6;
                }
                catch (IOException v2) {
                    try {
                        ** if (s == null) goto lbl-1000
                    }
                    catch (Throwable var6_7) {
                        if (s != null) {
                            try {
                                s.close();
                            }
                            catch (IOException v4) {}
                        }
                        throw var6_7;
                    }
lbl-1000:
                    // 1 sources

                    {
                        try {
                            s.close();
                        }
                        catch (IOException v3) {}
                    }
lbl-1000:
                    // 2 sources

                    {
                        break block18;
                    }
                }
                if (s == null) break block18;
                try {
                    s.close();
                }
                catch (IOException v5) {}
            }
            ++i;
        }
        return -1;
    }

    private static int getRandomPort(int low, int high) {
        return (int)(fgRandom.nextFloat() * (float)(high - low)) + low;
    }

    /*
     * Loose catch block
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int findFreePort() {
        ServerSocket socket = null;
        socket = new ServerSocket(0);
        int n = socket.getLocalPort();
        if (socket == null) return n;
        try {
            socket.close();
            return n;
        }
        catch (IOException iOException) {}
        return n;
        catch (IOException iOException) {
            try {
                if (socket == null) return -1;
            }
            catch (Throwable throwable) {
                if (socket == null) throw throwable;
                try {
                    socket.close();
                    throw throwable;
                }
                catch (IOException iOException2) {}
                throw throwable;
            }
            try {
                socket.close();
                return -1;
            }
            catch (IOException iOException3) {}
            return -1;
        }
    }
}

