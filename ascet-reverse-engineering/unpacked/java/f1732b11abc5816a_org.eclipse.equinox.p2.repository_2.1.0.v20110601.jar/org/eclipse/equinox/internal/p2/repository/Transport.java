/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.equinox.internal.p2.repository;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.internal.p2.repository.AuthenticationFailedException;

public abstract class Transport {
    public static final String SERVICE_NAME;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.repository.Transport");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SERVICE_NAME = clazz.getName();
    }

    public abstract IStatus download(URI var1, OutputStream var2, long var3, IProgressMonitor var5);

    public abstract IStatus download(URI var1, OutputStream var2, IProgressMonitor var3);

    public abstract InputStream stream(URI var1, IProgressMonitor var2) throws FileNotFoundException, CoreException, AuthenticationFailedException;

    public abstract long getLastModified(URI var1, IProgressMonitor var2) throws CoreException, FileNotFoundException, AuthenticationFailedException;
}

