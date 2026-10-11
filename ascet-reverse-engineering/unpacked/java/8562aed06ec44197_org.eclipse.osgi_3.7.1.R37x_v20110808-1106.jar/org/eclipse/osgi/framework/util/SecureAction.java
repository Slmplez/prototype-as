/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLStreamHandler;
import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Properties;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.ServiceReference;
import org.osgi.util.tracker.ServiceTracker;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SecureAction {
    private AccessControlContext controlContext = AccessController.getContext();
    static final ClassLoader bootClassLoader = AccessController.doPrivileged(new PrivilegedAction<ClassLoader>(){

        @Override
        public ClassLoader run() {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return new ClassLoader(clazz.getClassLoader()){};
        }
    });
    static /* synthetic */ Class class$0;

    SecureAction() {
    }

    public static PrivilegedAction<SecureAction> createSecureAction() {
        return new PrivilegedAction<SecureAction>(){

            @Override
            public SecureAction run() {
                return new SecureAction();
            }
        };
    }

    public String getProperty(final String property) {
        if (System.getSecurityManager() == null) {
            return FrameworkProperties.getProperty(property);
        }
        return AccessController.doPrivileged(new PrivilegedAction<String>(){

            @Override
            public String run() {
                return FrameworkProperties.getProperty(property);
            }
        }, this.controlContext);
    }

    public String getProperty(final String property, final String def) {
        if (System.getSecurityManager() == null) {
            return FrameworkProperties.getProperty(property, def);
        }
        return AccessController.doPrivileged(new PrivilegedAction<String>(){

            @Override
            public String run() {
                return FrameworkProperties.getProperty(property, def);
            }
        }, this.controlContext);
    }

    public Properties getProperties() {
        if (System.getSecurityManager() == null) {
            return FrameworkProperties.getProperties();
        }
        return AccessController.doPrivileged(new PrivilegedAction<Properties>(){

            @Override
            public Properties run() {
                return FrameworkProperties.getProperties();
            }
        }, this.controlContext);
    }

    public FileInputStream getFileInputStream(final File file) throws FileNotFoundException {
        if (System.getSecurityManager() == null) {
            return new FileInputStream(file);
        }
        try {
            return AccessController.doPrivileged(new PrivilegedExceptionAction<FileInputStream>(){

                @Override
                public FileInputStream run() throws FileNotFoundException {
                    return new FileInputStream(file);
                }
            }, this.controlContext);
        }
        catch (PrivilegedActionException e) {
            if (e.getException() instanceof FileNotFoundException) {
                throw (FileNotFoundException)e.getException();
            }
            throw (RuntimeException)e.getException();
        }
    }

    public FileOutputStream getFileOutputStream(final File file, final boolean append) throws FileNotFoundException {
        if (System.getSecurityManager() == null) {
            return new FileOutputStream(file.getAbsolutePath(), append);
        }
        try {
            return AccessController.doPrivileged(new PrivilegedExceptionAction<FileOutputStream>(){

                @Override
                public FileOutputStream run() throws FileNotFoundException {
                    return new FileOutputStream(file.getAbsolutePath(), append);
                }
            }, this.controlContext);
        }
        catch (PrivilegedActionException e) {
            if (e.getException() instanceof FileNotFoundException) {
                throw (FileNotFoundException)e.getException();
            }
            throw (RuntimeException)e.getException();
        }
    }

    public long length(final File file) {
        if (System.getSecurityManager() == null) {
            return file.length();
        }
        return AccessController.doPrivileged(new PrivilegedAction<Long>(){

            @Override
            public Long run() {
                return new Long(file.length());
            }
        }, this.controlContext);
    }

    public String getCanonicalPath(final File file) throws IOException {
        if (System.getSecurityManager() == null) {
            return file.getCanonicalPath();
        }
        try {
            return AccessController.doPrivileged(new PrivilegedExceptionAction<String>(){

                @Override
                public String run() throws IOException {
                    return file.getCanonicalPath();
                }
            }, this.controlContext);
        }
        catch (PrivilegedActionException e) {
            if (e.getException() instanceof IOException) {
                throw (IOException)e.getException();
            }
            throw (RuntimeException)e.getException();
        }
    }

    public boolean exists(final File file) {
        if (System.getSecurityManager() == null) {
            return file.exists();
        }
        return AccessController.doPrivileged(new PrivilegedAction<Boolean>(){

            @Override
            public Boolean run() {
                return file.exists() ? Boolean.TRUE : Boolean.FALSE;
            }
        }, this.controlContext);
    }

    public boolean isDirectory(final File file) {
        if (System.getSecurityManager() == null) {
            return file.isDirectory();
        }
        return AccessController.doPrivileged(new PrivilegedAction<Boolean>(){

            @Override
            public Boolean run() {
                return file.isDirectory() ? Boolean.TRUE : Boolean.FALSE;
            }
        }, this.controlContext);
    }

    public long lastModified(final File file) {
        if (System.getSecurityManager() == null) {
            return file.lastModified();
        }
        return AccessController.doPrivileged(new PrivilegedAction<Long>(){

            @Override
            public Long run() {
                return new Long(file.lastModified());
            }
        }, this.controlContext);
    }

    public String[] list(final File file) {
        if (System.getSecurityManager() == null) {
            return file.list();
        }
        return AccessController.doPrivileged(new PrivilegedAction<String[]>(){

            @Override
            public String[] run() {
                return file.list();
            }
        }, this.controlContext);
    }

    public ZipFile getZipFile(final File file) throws IOException {
        try {
            if (System.getSecurityManager() == null) {
                return new ZipFile(file);
            }
            try {
                return AccessController.doPrivileged(new PrivilegedExceptionAction<ZipFile>(){

                    @Override
                    public ZipFile run() throws IOException {
                        return new ZipFile(file);
                    }
                }, this.controlContext);
            }
            catch (PrivilegedActionException e) {
                if (e.getException() instanceof IOException) {
                    throw (IOException)e.getException();
                }
                throw (RuntimeException)e.getException();
            }
        }
        catch (ZipException e) {
            ZipException zipNameException = new ZipException(new StringBuffer("Exception in opening zip file: ").append(file.getPath()).toString());
            zipNameException.initCause(e);
            throw zipNameException;
        }
        catch (IOException e) {
            IOException fileNameException = new IOException(new StringBuffer("Exception in opening zip file: ").append(file.getPath()).toString());
            fileNameException.initCause(e);
            throw fileNameException;
        }
    }

    public URL getURL(final String protocol, final String host, final int port, final String file, final URLStreamHandler handler) throws MalformedURLException {
        if (System.getSecurityManager() == null) {
            return new URL(protocol, host, port, file, handler);
        }
        try {
            return AccessController.doPrivileged(new PrivilegedExceptionAction<URL>(){

                @Override
                public URL run() throws MalformedURLException {
                    return new URL(protocol, host, port, file, handler);
                }
            }, this.controlContext);
        }
        catch (PrivilegedActionException e) {
            if (e.getException() instanceof MalformedURLException) {
                throw (MalformedURLException)e.getException();
            }
            throw (RuntimeException)e.getException();
        }
    }

    public Thread createThread(final Runnable target, final String name, final ClassLoader contextLoader) {
        if (System.getSecurityManager() == null) {
            return this.createThread0(target, name, contextLoader);
        }
        return AccessController.doPrivileged(new PrivilegedAction<Thread>(){

            @Override
            public Thread run() {
                return SecureAction.this.createThread0(target, name, contextLoader);
            }
        }, this.controlContext);
    }

    Thread createThread0(Runnable target, String name, ClassLoader contextLoader) {
        Thread result = new Thread(target, name);
        if (contextLoader != null) {
            result.setContextClassLoader(contextLoader);
        }
        return result;
    }

    public <S> S getService(final ServiceReference<S> reference, final BundleContext context) {
        if (System.getSecurityManager() == null) {
            return context.getService(reference);
        }
        return (S)AccessController.doPrivileged(new PrivilegedAction<S>(){

            @Override
            public S run() {
                return context.getService(reference);
            }
        }, this.controlContext);
    }

    public Class<?> forName(final String name) throws ClassNotFoundException {
        if (System.getSecurityManager() == null) {
            return Class.forName(name);
        }
        try {
            return (Class)AccessController.doPrivileged(new PrivilegedExceptionAction<Class<?>>(){

                @Override
                public Class<?> run() throws Exception {
                    return Class.forName(name);
                }
            }, this.controlContext);
        }
        catch (PrivilegedActionException e) {
            if (e.getException() instanceof ClassNotFoundException) {
                throw (ClassNotFoundException)e.getException();
            }
            throw (RuntimeException)e.getException();
        }
    }

    public Class<?> loadSystemClass(final String name) throws ClassNotFoundException {
        if (System.getSecurityManager() == null) {
            ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
            return systemClassLoader != null ? systemClassLoader.loadClass(name) : bootClassLoader.loadClass(name);
        }
        try {
            return (Class)AccessController.doPrivileged(new PrivilegedExceptionAction<Class<?>>(){

                @Override
                public Class<?> run() throws Exception {
                    ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                    return systemClassLoader != null ? systemClassLoader.loadClass(name) : bootClassLoader.loadClass(name);
                }
            }, this.controlContext);
        }
        catch (PrivilegedActionException e) {
            if (e.getException() instanceof ClassNotFoundException) {
                throw (ClassNotFoundException)e.getException();
            }
            throw (RuntimeException)e.getException();
        }
    }

    public void open(final ServiceTracker<?, ?> tracker) {
        if (System.getSecurityManager() == null) {
            tracker.open();
            return;
        }
        AccessController.doPrivileged(new PrivilegedAction<Object>(){

            @Override
            public Object run() {
                tracker.open();
                return null;
            }
        }, this.controlContext);
    }

    public void start(final Bundle bundle, final int options) throws BundleException {
        if (System.getSecurityManager() == null) {
            bundle.start(options);
            return;
        }
        try {
            AccessController.doPrivileged(new PrivilegedExceptionAction<Object>(){

                @Override
                public Object run() throws BundleException {
                    bundle.start(options);
                    return null;
                }
            }, this.controlContext);
            return;
        }
        catch (PrivilegedActionException e) {
            if (e.getException() instanceof BundleException) {
                throw (BundleException)e.getException();
            }
            throw (RuntimeException)e.getException();
        }
    }

    public void start(Bundle bundle) throws BundleException {
        this.start(bundle, 0);
    }
}

