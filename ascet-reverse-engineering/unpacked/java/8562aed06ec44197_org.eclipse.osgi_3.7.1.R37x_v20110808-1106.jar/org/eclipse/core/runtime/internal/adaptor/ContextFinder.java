/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.IOException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ContextFinder
extends ClassLoader
implements PrivilegedAction<List<ClassLoader>> {
    private static ThreadLocal<Set<String>> cycleDetector = new ThreadLocal();
    static ClassLoader finderClassLoader;
    static Finder contextFinder;
    private static Class<ContextFinder> THIS;
    private final ClassLoader parentContextClassLoader;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        AccessController.doPrivileged(new PrivilegedAction<Object>(){

            @Override
            public Object run() {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.core.runtime.internal.adaptor.ContextFinder");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                finderClassLoader = clazz.getClassLoader();
                contextFinder = new Finder();
                return null;
            }
        });
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.internal.adaptor.ContextFinder");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        THIS = clazz;
    }

    public ContextFinder(ClassLoader contextClassLoader) {
        super(contextClassLoader);
        ClassLoader classLoader;
        if (contextClassLoader != null) {
            classLoader = contextClassLoader;
        } else {
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classLoader = new ClassLoader(clazz.getClassLoader()){};
        }
        this.parentContextClassLoader = classLoader;
    }

    List<ClassLoader> basicFindClassLoaders() {
        Class<?>[] stack = contextFinder.getClassContext();
        ArrayList<ClassLoader> result = new ArrayList<ClassLoader>(1);
        ClassLoader previousLoader = null;
        int i = 1;
        while (i < stack.length) {
            ClassLoader tmp = stack[i].getClassLoader();
            if (stack[i] != THIS && tmp != null && tmp != this) {
                if (this.checkClassLoader(tmp) && previousLoader != tmp) {
                    result.add(tmp);
                    previousLoader = tmp;
                }
                if (tmp == finderClassLoader || tmp instanceof BundleClassLoader) break;
            }
            ++i;
        }
        return result;
    }

    private boolean checkClassLoader(ClassLoader classloader) {
        if (classloader == null || classloader == this.getParent()) {
            return false;
        }
        ClassLoader parent = classloader.getParent();
        while (parent != null) {
            if (parent == this) {
                return false;
            }
            parent = parent.getParent();
        }
        return true;
    }

    private List<ClassLoader> findClassLoaders() {
        if (System.getSecurityManager() == null) {
            return this.basicFindClassLoaders();
        }
        return AccessController.doPrivileged(this);
    }

    @Override
    public List<ClassLoader> run() {
        return this.basicFindClassLoaders();
    }

    private boolean startLoading(String name) {
        Set<String> classesAndResources = cycleDetector.get();
        if (classesAndResources != null && classesAndResources.contains(name)) {
            return false;
        }
        if (classesAndResources == null) {
            classesAndResources = new HashSet<String>(3);
            cycleDetector.set(classesAndResources);
        }
        classesAndResources.add(name);
        return true;
    }

    private void stopLoading(String name) {
        cycleDetector.get().remove(name);
    }

    /*
     * Exception decompiling
     */
    @Override
    protected Class<?> loadClass(String arg0, boolean arg1) throws ClassNotFoundException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 3 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    public URL getResource(String arg0) {
        if (!this.startLoading(arg0)) {
            return null;
        }
        try {
            List<ClassLoader> toConsult = this.findClassLoaders();
            Iterator<ClassLoader> loaders = toConsult.iterator();
            while (loaders.hasNext()) {
                URL result = loaders.next().getResource(arg0);
                if (result == null) continue;
                URL uRL = result;
                return uRL;
            }
            URL uRL = super.getResource(arg0);
            return uRL;
        }
        finally {
            this.stopLoading(arg0);
        }
    }

    @Override
    protected Enumeration<URL> findResources(String arg0) throws IOException {
        if (!this.startLoading(arg0)) {
            Enumeration<URL> result = Collections.enumeration(Collections.EMPTY_LIST);
            return result;
        }
        try {
            List<ClassLoader> toConsult = this.findClassLoaders();
            Iterator<ClassLoader> loaders = toConsult.iterator();
            while (loaders.hasNext()) {
                Enumeration<URL> result = loaders.next().getResources(arg0);
                if (result == null || !result.hasMoreElements()) continue;
                Enumeration<URL> enumeration = result;
                return enumeration;
            }
            Enumeration<URL> enumeration = super.findResources(arg0);
            return enumeration;
        }
        finally {
            this.stopLoading(arg0);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static final class Finder
    extends SecurityManager {
        Finder() {
        }

        public Class<?>[] getClassContext() {
            return super.getClassContext();
        }
    }
}

