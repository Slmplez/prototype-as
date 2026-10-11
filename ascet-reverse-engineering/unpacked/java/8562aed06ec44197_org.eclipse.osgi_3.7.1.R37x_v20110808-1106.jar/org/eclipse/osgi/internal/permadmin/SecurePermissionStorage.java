/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import org.eclipse.osgi.framework.adaptor.PermissionStorage;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SecurePermissionStorage
implements PermissionStorage,
PrivilegedExceptionAction<String[]> {
    private final PermissionStorage storage;
    private String location;
    private String[] data;
    private String[] infos;
    private int action;
    private static final int GET = 1;
    private static final int SET = 2;
    private static final int LOCATION = 3;
    private static final int GET_INFOS = 4;
    private static final int SAVE_INFOS = 5;

    public SecurePermissionStorage(PermissionStorage storage) {
        this.storage = storage;
    }

    @Override
    public String[] run() throws IOException {
        switch (this.action) {
            case 1: {
                return this.storage.getPermissionData(this.location);
            }
            case 2: {
                this.storage.setPermissionData(this.location, this.data);
                return null;
            }
            case 3: {
                return this.storage.getLocations();
            }
            case 5: {
                this.storage.saveConditionalPermissionInfos(this.infos);
                return null;
            }
            case 4: {
                return this.storage.getConditionalPermissionInfos();
            }
        }
        throw new UnsupportedOperationException();
    }

    @Override
    public String[] getPermissionData(String loc) throws IOException {
        this.location = loc;
        this.action = 1;
        try {
            return AccessController.doPrivileged(this);
        }
        catch (PrivilegedActionException e) {
            throw (IOException)e.getException();
        }
    }

    @Override
    public String[] getLocations() throws IOException {
        this.action = 3;
        try {
            return AccessController.doPrivileged(this);
        }
        catch (PrivilegedActionException e) {
            throw (IOException)e.getException();
        }
    }

    @Override
    public void setPermissionData(String location, String[] data) throws IOException {
        this.location = location;
        this.data = data;
        this.action = 2;
        try {
            AccessController.doPrivileged(this);
        }
        catch (PrivilegedActionException e) {
            throw (IOException)e.getException();
        }
    }

    @Override
    public void saveConditionalPermissionInfos(String[] updatedInfos) throws IOException {
        this.action = 5;
        this.infos = updatedInfos;
        try {
            AccessController.doPrivileged(this);
        }
        catch (PrivilegedActionException e) {
            throw (IOException)e.getException();
        }
    }

    @Override
    public String[] getConditionalPermissionInfos() throws IOException {
        this.action = 4;
        try {
            return AccessController.doPrivileged(this);
        }
        catch (PrivilegedActionException e) {
            throw (IOException)e.getException();
        }
    }
}

