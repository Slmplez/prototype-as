/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.IOException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.AllPermission;
import java.security.CodeSource;
import java.security.PermissionCollection;
import java.security.ProtectionDomain;
import java.security.cert.Certificate;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFileWrapperChain;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.baseadaptor.loader.ParallelClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DefaultClassLoader
extends ClassLoader
implements ParallelClassLoader {
    protected static final PermissionCollection ALLPERMISSIONS;
    private static final String CLASS_CERTIFICATE_SUPPORT = "osgi.support.class.certificate";
    private static final String CLASS_LOADER_TYPE = "osgi.classloader.type";
    private static final String CLASS_LOADER_TYPE_PARALLEL = "parallel";
    private static final boolean CLASS_CERTIFICATE;
    private static final boolean PARALLEL_CAPABLE;
    private static final Enumeration<URL> EMPTY_ENUMERATION;
    protected ClassLoaderDelegate delegate;
    protected ProtectionDomain domain;
    protected ClasspathManager manager;
    static /* synthetic */ Class class$0;

    static {
        boolean parallelCapable;
        block6: {
            EMPTY_ENUMERATION = Collections.enumeration(Collections.EMPTY_LIST);
            CLASS_CERTIFICATE = Boolean.valueOf(FrameworkProperties.getProperty(CLASS_CERTIFICATE_SUPPORT, "true"));
            AllPermission allPerm = new AllPermission();
            ALLPERMISSIONS = allPerm.newPermissionCollection();
            if (ALLPERMISSIONS != null) {
                ALLPERMISSIONS.add(allPerm);
            }
            boolean typeParallel = CLASS_LOADER_TYPE_PARALLEL.equals(FrameworkProperties.getProperty(CLASS_LOADER_TYPE, CLASS_LOADER_TYPE_PARALLEL));
            parallelCapable = false;
            try {
                if (!typeParallel) break block6;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("java.lang.ClassLoader");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Method parallelCapableMetod = clazz.getDeclaredMethod("registerAsParallelCapable", null);
                parallelCapableMetod.setAccessible(true);
                parallelCapable = (Boolean)parallelCapableMetod.invoke(null, null);
            }
            catch (Throwable throwable) {
                parallelCapable = false;
            }
        }
        PARALLEL_CAPABLE = parallelCapable;
    }

    public DefaultClassLoader(ClassLoader parent, ClassLoaderDelegate delegate, ProtectionDomain domain, BaseData bundledata, String[] classpath) {
        super(parent);
        this.delegate = delegate;
        this.domain = domain;
        this.manager = new ClasspathManager(bundledata, classpath, this);
    }

    @Override
    protected Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        if (Debug.DEBUG_LOADER) {
            Debug.println(new StringBuffer("BundleClassLoader[").append(this.delegate).append("].loadClass(").append(name).append(")").toString());
        }
        try {
            Class<?> clazz = this.delegate.findClass(name);
            if (resolve) {
                this.resolveClass(clazz);
            }
            return clazz;
        }
        catch (Error e) {
            if (Debug.DEBUG_LOADER) {
                Debug.println(new StringBuffer("BundleClassLoader[").append(this.delegate).append("].loadClass(").append(name).append(") failed.").toString());
                Debug.printStackTrace(e);
            }
            throw e;
        }
        catch (ClassNotFoundException e) {
            if (Debug.DEBUG_LOADER) {
                Debug.println(new StringBuffer("BundleClassLoader[").append(this.delegate).append("].loadClass(").append(name).append(") failed.").toString());
                Debug.printStackTrace(e);
            }
            throw e;
        }
    }

    @Override
    public URL getResource(String name) {
        URL url;
        if (Debug.DEBUG_LOADER) {
            Debug.println(new StringBuffer("BundleClassLoader[").append(this.delegate).append("].getResource(").append(name).append(")").toString());
        }
        if ((url = this.delegate.findResource(name)) != null) {
            return url;
        }
        if (Debug.DEBUG_LOADER) {
            Debug.println(new StringBuffer("BundleClassLoader[").append(this.delegate).append("].getResource(").append(name).append(") failed.").toString());
        }
        return null;
    }

    @Override
    protected Enumeration<URL> findResources(String name) throws IOException {
        Enumeration<URL> result = this.delegate.findResources(name);
        if (result == null) {
            return EMPTY_ENUMERATION;
        }
        return result;
    }

    @Override
    protected String findLibrary(String libname) {
        return this.manager.findLibrary(libname);
    }

    @Override
    public ProtectionDomain getDomain() {
        return this.domain;
    }

    @Override
    public ClasspathEntry createClassPathEntry(BundleFile bundlefile, ProtectionDomain cpDomain) {
        return new ClasspathEntry(bundlefile, DefaultClassLoader.createProtectionDomain(bundlefile, cpDomain));
    }

    @Override
    public Class<?> defineClass(String name, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry) {
        return this.defineClass(name, classbytes, 0, classbytes.length, classpathEntry.getDomain());
    }

    @Override
    public Class<?> publicFindLoaded(String classname) {
        return this.findLoadedClass(classname);
    }

    @Override
    public Object publicGetPackage(String pkgname) {
        return this.getPackage(pkgname);
    }

    @Override
    public Object publicDefinePackage(String name, String specTitle, String specVersion, String specVendor, String implTitle, String implVersion, String implVendor, URL sealBase) {
        return this.definePackage(name, specTitle, specVersion, specVendor, implTitle, implVersion, implVendor, sealBase);
    }

    @Override
    public void initialize() {
        this.manager.initialize();
    }

    @Override
    public URL findLocalResource(String resource) {
        return this.manager.findLocalResource(resource);
    }

    @Override
    public Enumeration<URL> findLocalResources(String resource) {
        return this.manager.findLocalResources(resource);
    }

    @Override
    public Class<?> findLocalClass(String classname) throws ClassNotFoundException {
        return this.manager.findLocalClass(classname);
    }

    @Override
    public void close() {
        this.manager.close();
    }

    @Override
    public void attachFragment(BundleData sourcedata, ProtectionDomain sourcedomain, String[] sourceclasspath) {
        this.manager.attachFragment(sourcedata, sourcedomain, sourceclasspath);
    }

    @Override
    public ClassLoaderDelegate getDelegate() {
        return this.delegate;
    }

    public static ProtectionDomain createProtectionDomain(BundleFile bundlefile, ProtectionDomain baseDomain) {
        try {
            SignerInfo[] signers;
            PermissionCollection permissions = baseDomain != null ? baseDomain.getPermissions() : ALLPERMISSIONS;
            Certificate[] certs = null;
            SignedContent signedContent = null;
            if (bundlefile instanceof BundleFileWrapperChain) {
                BundleFileWrapperChain wrapper = (BundleFileWrapperChain)bundlefile;
                while (wrapper != null && !(wrapper.getWrapped() instanceof SignedContent)) {
                    wrapper = wrapper.getNext();
                }
                SignedContent signedContent2 = signedContent = wrapper == null ? null : (SignedContent)((Object)wrapper.getWrapped());
            }
            if (CLASS_CERTIFICATE && signedContent != null && signedContent.isSigned() && (signers = signedContent.getSignerInfos()).length > 0) {
                certs = signers[0].getCertificateChain();
            }
            return new BundleProtectionDomain(permissions, new CodeSource(bundlefile.getBaseFile().toURL(), certs), null);
        }
        catch (MalformedURLException malformedURLException) {
            return baseDomain;
        }
    }

    @Override
    public ClasspathManager getClasspathManager() {
        return this.manager;
    }

    @Override
    public Bundle getBundle() {
        return this.manager.getBaseData().getBundle();
    }

    @Override
    public boolean isParallelCapable() {
        return PARALLEL_CAPABLE;
    }

    @Override
    public List<URL> findEntries(String path, String filePattern, int options) {
        return this.manager.findEntries(path, filePattern, options);
    }

    @Override
    public Collection<String> listResources(String path, String filePattern, int options) {
        return this.delegate.listResources(path, filePattern, options);
    }

    @Override
    public Collection<String> listLocalResources(String path, String filePattern, int options) {
        return this.manager.listLocalResources(path, filePattern, options);
    }
}

