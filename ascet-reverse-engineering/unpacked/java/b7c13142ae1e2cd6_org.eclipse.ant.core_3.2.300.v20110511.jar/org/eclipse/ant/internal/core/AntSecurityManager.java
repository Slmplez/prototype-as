/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ant.internal.core;

import java.io.FileDescriptor;
import java.net.InetAddress;
import java.net.SocketPermission;
import java.security.Permission;
import java.util.PropertyPermission;
import org.eclipse.ant.core.AntSecurityException;

public class AntSecurityManager
extends SecurityManager {
    private SecurityManager fSecurityManager = null;
    private Thread fRestrictedThread = null;
    private static final PropertyPermission fgPropertyPermission = new PropertyPermission("*", "write");
    private boolean fAllowSettingSystemProperties = true;

    public AntSecurityManager(SecurityManager securityManager, Thread restrictedThread, boolean allowSettingProperties) {
        this.fSecurityManager = securityManager;
        this.fRestrictedThread = restrictedThread;
        this.fAllowSettingSystemProperties = allowSettingProperties;
    }

    public AntSecurityManager(SecurityManager securityManager, Thread restrictedThread) {
        this(securityManager, restrictedThread, true);
    }

    public void checkExit(int status) {
        if (Thread.currentThread() == this.fRestrictedThread) {
            throw new AntSecurityException();
        }
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkExit(status);
        }
    }

    public void checkAccept(String host, int port) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkAccept(host, port);
        }
    }

    public void checkAccess(Thread t) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkAccess(t);
        }
    }

    public void checkAccess(ThreadGroup g) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkAccess(g);
        }
    }

    public void checkAwtEventQueueAccess() {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkAwtEventQueueAccess();
        }
    }

    public void checkConnect(String host, int port, Object context) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkConnect(host, port, context);
        }
    }

    public void checkConnect(String host, int port) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkConnect(host, port);
        }
    }

    public void checkCreateClassLoader() {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkCreateClassLoader();
        }
    }

    public void checkDelete(String file) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkDelete(file);
        }
    }

    public void checkExec(String cmd) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkExec(cmd);
        }
    }

    public void checkLink(String lib) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkLink(lib);
        }
    }

    public void checkListen(int port) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkListen(port);
        }
    }

    public void checkMemberAccess(Class clazz, int which) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkMemberAccess(clazz, which);
        }
    }

    public void checkMulticast(InetAddress maddr, byte ttl) {
        if (this.fSecurityManager != null) {
            String host = maddr.getHostAddress();
            if (!host.startsWith("[") && host.indexOf(58) != -1) {
                host = "[" + host + "]";
            }
            this.checkPermission(new SocketPermission(host, "accept,connect"));
        }
    }

    public void checkMulticast(InetAddress maddr) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkMulticast(maddr);
        }
    }

    public void checkPackageAccess(String pkg) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkPackageAccess(pkg);
        }
    }

    public void checkPackageDefinition(String pkg) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkPackageDefinition(pkg);
        }
    }

    public void checkPermission(Permission perm, Object context) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkPermission(perm, context);
        }
    }

    public void checkPermission(Permission perm) {
        if (!this.fAllowSettingSystemProperties && fgPropertyPermission.implies(perm) && this.fRestrictedThread == Thread.currentThread()) {
            throw new AntSecurityException();
        }
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkPermission(perm);
        }
    }

    public void checkPrintJobAccess() {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkPrintJobAccess();
        }
    }

    public void checkPropertiesAccess() {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkPropertiesAccess();
        }
        super.checkPropertiesAccess();
    }

    public void checkPropertyAccess(String key) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkPropertyAccess(key);
        }
    }

    public void checkRead(FileDescriptor fd) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkRead(fd);
        }
    }

    public void checkRead(String file, Object context) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkRead(file, context);
        }
    }

    public void checkRead(String file) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkRead(file);
        }
    }

    public void checkSecurityAccess(String target) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkSecurityAccess(target);
        }
    }

    public void checkSetFactory() {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkSetFactory();
        }
    }

    public void checkSystemClipboardAccess() {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkSystemClipboardAccess();
        }
    }

    public boolean checkTopLevelWindow(Object window) {
        if (this.fSecurityManager != null) {
            return this.fSecurityManager.checkTopLevelWindow(window);
        }
        return super.checkTopLevelWindow(window);
    }

    public void checkWrite(FileDescriptor fd) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkWrite(fd);
        }
    }

    public void checkWrite(String file) {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.checkWrite(file);
        }
    }

    public boolean getInCheck() {
        if (this.fSecurityManager != null) {
            return this.fSecurityManager.getInCheck();
        }
        return super.getInCheck();
    }

    public Object getSecurityContext() {
        if (this.fSecurityManager != null) {
            return this.fSecurityManager.getSecurityContext();
        }
        return super.getSecurityContext();
    }

    public ThreadGroup getThreadGroup() {
        if (this.fSecurityManager != null) {
            this.fSecurityManager.getThreadGroup();
        }
        return super.getThreadGroup();
    }
}

