/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.ElementCache;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.VerboseElementCache;
import org.eclipse.jdt.internal.core.util.LRUCache;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaModelCache {
    public static boolean VERBOSE = false;
    public static final int DEFAULT_PROJECT_SIZE = 5;
    public static final int DEFAULT_ROOT_SIZE = 50;
    public static final int DEFAULT_PKG_SIZE = 500;
    public static final int DEFAULT_OPENABLE_SIZE = 250;
    public static final int DEFAULT_CHILDREN_SIZE = 5000;
    public static final String RATIO_PROPERTY = "org.eclipse.jdt.core.javamodelcache.ratio";
    public static final Object NON_EXISTING_JAR_TYPE_INFO = new Object();
    protected double memoryRatio = -1.0;
    protected Object modelInfo;
    protected HashMap projectCache;
    protected ElementCache rootCache;
    protected ElementCache pkgCache;
    protected ElementCache openableCache;
    protected Map childrenCache;
    protected LRUCache jarTypeCache;

    public JavaModelCache() {
        double ratio = this.getMemoryRatio();
        double openableRatio = this.getOpenableRatio();
        this.projectCache = new HashMap(5);
        if (VERBOSE) {
            this.rootCache = new VerboseElementCache((int)(50.0 * ratio), "Root cache");
            this.pkgCache = new VerboseElementCache((int)(500.0 * ratio), "Package cache");
            this.openableCache = new VerboseElementCache((int)(250.0 * ratio * openableRatio), "Openable cache");
        } else {
            this.rootCache = new ElementCache((int)(50.0 * ratio));
            this.pkgCache = new ElementCache((int)(500.0 * ratio));
            this.openableCache = new ElementCache((int)(250.0 * ratio * openableRatio));
        }
        this.childrenCache = new HashMap((int)(5000.0 * ratio * openableRatio));
        this.resetJarTypeCache();
    }

    private double getOpenableRatio() {
        String property = System.getProperty(RATIO_PROPERTY);
        if (property != null) {
            try {
                return Double.parseDouble(property);
            }
            catch (NumberFormatException e) {
                Util.log(e, "Could not parse value for org.eclipse.jdt.core.javamodelcache.ratio: " + property);
            }
        }
        return 1.0;
    }

    public Object getInfo(IJavaElement element) {
        switch (element.getElementType()) {
            case 1: {
                return this.modelInfo;
            }
            case 2: {
                return this.projectCache.get(element);
            }
            case 3: {
                return this.rootCache.get(element);
            }
            case 4: {
                return this.pkgCache.get(element);
            }
            case 5: 
            case 6: {
                return this.openableCache.get(element);
            }
            case 7: {
                Object result = this.jarTypeCache.get(element);
                if (result != null) {
                    return result;
                }
                return this.childrenCache.get(element);
            }
        }
        return this.childrenCache.get(element);
    }

    public IJavaElement getExistingElement(IJavaElement element) {
        switch (element.getElementType()) {
            case 1: {
                return element;
            }
            case 2: {
                return element;
            }
            case 3: {
                return (IJavaElement)this.rootCache.getKey(element);
            }
            case 4: {
                return (IJavaElement)this.pkgCache.getKey(element);
            }
            case 5: 
            case 6: {
                return (IJavaElement)this.openableCache.getKey(element);
            }
            case 7: {
                return element;
            }
        }
        return element;
    }

    protected double getMemoryRatio() {
        if ((int)this.memoryRatio == -1) {
            long maxMemory = Runtime.getRuntime().maxMemory();
            this.memoryRatio = maxMemory == Long.MAX_VALUE ? 4.0 : (double)maxMemory / 6.7108864E7;
        }
        return this.memoryRatio;
    }

    protected Object peekAtInfo(IJavaElement element) {
        switch (element.getElementType()) {
            case 1: {
                return this.modelInfo;
            }
            case 2: {
                return this.projectCache.get(element);
            }
            case 3: {
                return this.rootCache.peek(element);
            }
            case 4: {
                return this.pkgCache.peek(element);
            }
            case 5: 
            case 6: {
                return this.openableCache.peek(element);
            }
            case 7: {
                Object result = this.jarTypeCache.peek(element);
                if (result != null) {
                    return result;
                }
                return this.childrenCache.get(element);
            }
        }
        return this.childrenCache.get(element);
    }

    protected void putInfo(IJavaElement element, Object info) {
        switch (element.getElementType()) {
            case 1: {
                this.modelInfo = info;
                break;
            }
            case 2: {
                this.projectCache.put(element, info);
                this.rootCache.ensureSpaceLimit(info, element);
                break;
            }
            case 3: {
                this.rootCache.put(element, info);
                this.pkgCache.ensureSpaceLimit(info, element);
                break;
            }
            case 4: {
                this.pkgCache.put(element, info);
                this.openableCache.ensureSpaceLimit(info, element);
                break;
            }
            case 5: 
            case 6: {
                this.openableCache.put(element, info);
                break;
            }
            default: {
                this.childrenCache.put(element, info);
            }
        }
    }

    protected void removeInfo(JavaElement element) {
        switch (element.getElementType()) {
            case 1: {
                this.modelInfo = null;
                break;
            }
            case 2: {
                this.projectCache.remove(element);
                this.rootCache.resetSpaceLimit((int)(50.0 * this.getMemoryRatio()), element);
                break;
            }
            case 3: {
                this.rootCache.remove(element);
                this.pkgCache.resetSpaceLimit((int)(500.0 * this.getMemoryRatio()), element);
                break;
            }
            case 4: {
                this.pkgCache.remove(element);
                this.openableCache.resetSpaceLimit((int)(250.0 * this.getMemoryRatio() * this.getOpenableRatio()), element);
                break;
            }
            case 5: 
            case 6: {
                this.openableCache.remove(element);
                break;
            }
            default: {
                this.childrenCache.remove(element);
            }
        }
    }

    protected void resetJarTypeCache() {
        this.jarTypeCache = new LRUCache((int)(250.0 * this.getMemoryRatio()));
    }

    public String toString() {
        return this.toStringFillingRation("");
    }

    public String toStringFillingRation(String prefix) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(prefix);
        buffer.append("Project cache: ");
        buffer.append(this.projectCache.size());
        buffer.append(" projects\n");
        buffer.append(prefix);
        buffer.append(this.rootCache.toStringFillingRation("Root cache"));
        buffer.append('\n');
        buffer.append(prefix);
        buffer.append(this.pkgCache.toStringFillingRation("Package cache"));
        buffer.append('\n');
        buffer.append(prefix);
        buffer.append(this.openableCache.toStringFillingRation("Openable cache"));
        buffer.append('\n');
        buffer.append(prefix);
        buffer.append(this.jarTypeCache.toStringFillingRation("Jar type cache"));
        buffer.append('\n');
        return buffer.toString();
    }
}

