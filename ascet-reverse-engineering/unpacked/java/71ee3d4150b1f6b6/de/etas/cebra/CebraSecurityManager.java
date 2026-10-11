/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra;

import java.io.FileDescriptor;
import java.net.InetAddress;
import java.net.UnknownHostException;

public class CebraSecurityManager
extends SecurityManager {
    String[] allowedHosts = null;

    public void checkAccept(String host, int port) throws SecurityException {
        super.checkAccept(host, port);
    }

    public void checkAccess(Thread t) throws SecurityException {
        super.checkAccess(t);
    }

    public void checkConnect(String host, int port) throws SecurityException {
        String locHost;
        if (port == -1) {
            return;
        }
        if (host.equals("127.0.0.1")) {
            return;
        }
        try {
            locHost = InetAddress.getLocalHost().getHostAddress();
        }
        catch (UnknownHostException unknownHostException) {
            throw new SecurityException("Connection to unknown host is not allowed.");
        }
        if (host.equals(locHost)) {
            return;
        }
        boolean allowed = false;
        int n = this.allowedHosts.length;
        while (!allowed && n > 0) {
            allowed = host.equals(this.allowedHosts[n]);
        }
        if (allowed) {
            return;
        }
        super.checkConnect(host, port);
    }

    public void checkCreateClassLoader() throws SecurityException {
        super.checkCreateClassLoader();
    }

    public void checkDelete(String file) throws SecurityException {
        super.checkDelete(file);
    }

    public void checkExec(String cmd) throws SecurityException {
        super.checkExec(cmd);
    }

    public void checkExit(int status) throws SecurityException {
        super.checkExit(status);
    }

    public void checkLink(String libname) throws SecurityException {
        super.checkLink(libname);
    }

    public void checkListen(int port) throws SecurityException {
        super.checkListen(port);
    }

    public void checkMemberAccess(Class clazz, int which) throws SecurityException {
    }

    public void checkPackageAccess(String packageName) throws SecurityException {
        super.checkPackageAccess(packageName);
    }

    public void checkPackageDefinition(String packageName) throws SecurityException {
        super.checkPackageDefinition(packageName);
    }

    public void checkPropertiesAccess() throws SecurityException {
        super.checkPropertiesAccess();
    }

    public void checkPropertyAccess(String key) throws SecurityException {
        super.checkPropertyAccess(key);
    }

    public void checkRead(FileDescriptor fd) throws SecurityException {
        super.checkRead(fd);
    }

    public void checkRead(String file) throws SecurityException {
        super.checkRead(file);
    }

    public void checkSetFactory() throws SecurityException {
        super.checkSetFactory();
    }

    public boolean checkTopLevelWindow(Object window) throws SecurityException {
        return super.checkTopLevelWindow(window);
    }

    public void checkWrite(FileDescriptor fd) throws SecurityException {
        super.checkWrite(fd);
    }

    public void checkWrite(String file) throws SecurityException {
        super.checkWrite(file);
    }
}

