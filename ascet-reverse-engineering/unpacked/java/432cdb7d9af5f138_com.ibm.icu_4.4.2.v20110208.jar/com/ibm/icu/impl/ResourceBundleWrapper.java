/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.ICUDebug;
import com.ibm.icu.impl.Utility;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Enumeration;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;
import java.util.Vector;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceBundleWrapper
extends UResourceBundle {
    private ResourceBundle bundle = null;
    private String localeID = null;
    private String baseName = null;
    private Vector<String> keys = null;
    private static final boolean DEBUG = ICUDebug.enabled("resourceBundleWrapper");

    private ResourceBundleWrapper(ResourceBundle bundle) {
        this.bundle = bundle;
    }

    @Override
    protected void setLoadingStatus(int newStatus) {
    }

    @Override
    protected Object handleGetObject(String aKey) {
        ResourceBundleWrapper current = this;
        Object obj = null;
        while (current != null) {
            try {
                obj = current.bundle.getObject(aKey);
                break;
            }
            catch (MissingResourceException missingResourceException) {
                current = (ResourceBundleWrapper)current.getParent();
            }
        }
        if (obj == null) {
            throw new MissingResourceException("Can't find resource for bundle " + this.baseName + ", key " + aKey, this.getClass().getName(), aKey);
        }
        return obj;
    }

    @Override
    public Enumeration<String> getKeys() {
        return this.keys.elements();
    }

    private void initKeysVector() {
        ResourceBundleWrapper current = this;
        this.keys = new Vector();
        while (current != null) {
            Enumeration<String> e = current.bundle.getKeys();
            while (e.hasMoreElements()) {
                String elem = e.nextElement();
                if (this.keys.contains(elem)) continue;
                this.keys.add(elem);
            }
            current = (ResourceBundleWrapper)current.getParent();
        }
    }

    @Override
    protected String getLocaleID() {
        return this.localeID;
    }

    @Override
    protected String getBaseName() {
        return this.bundle.getClass().getName().replace('.', '/');
    }

    @Override
    public ULocale getULocale() {
        return new ULocale(this.localeID);
    }

    @Override
    public UResourceBundle getParent() {
        return (UResourceBundle)this.parent;
    }

    public static UResourceBundle getBundleInstance(String baseName, String localeID, ClassLoader root, boolean disableFallback) {
        UResourceBundle b = ResourceBundleWrapper.instantiateBundle(baseName, localeID, root, disableFallback);
        if (b == null) {
            String separator = "_";
            if (baseName.indexOf(47) >= 0) {
                separator = "/";
            }
            throw new MissingResourceException("Could not find the bundle " + baseName + separator + localeID, "", "");
        }
        return b;
    }

    protected static synchronized UResourceBundle instantiateBundle(String baseName, String localeID, ClassLoader root, boolean disableFallback) {
        ResourceBundleWrapper b;
        if (root == null) {
            root = Utility.getFallbackClassLoader();
        }
        final ClassLoader cl = root;
        String name = baseName;
        ULocale defaultLocale = ULocale.getDefault();
        if (localeID.length() != 0) {
            name = String.valueOf(name) + "_" + localeID;
        }
        if ((b = (ResourceBundleWrapper)ResourceBundleWrapper.loadFromCache(cl, name, defaultLocale)) == null) {
            block38: {
                boolean loadFromProperties;
                ResourceBundleWrapper parent;
                block35: {
                    parent = null;
                    int i = localeID.lastIndexOf(95);
                    loadFromProperties = false;
                    if (i != -1) {
                        String locName = localeID.substring(0, i);
                        parent = (ResourceBundleWrapper)ResourceBundleWrapper.loadFromCache(cl, String.valueOf(baseName) + "_" + locName, defaultLocale);
                        if (parent == null) {
                            parent = (ResourceBundleWrapper)ResourceBundleWrapper.instantiateBundle(baseName, locName, cl, disableFallback);
                        }
                    } else if (localeID.length() > 0 && (parent = (ResourceBundleWrapper)ResourceBundleWrapper.loadFromCache(cl, baseName, defaultLocale)) == null) {
                        parent = (ResourceBundleWrapper)ResourceBundleWrapper.instantiateBundle(baseName, "", cl, disableFallback);
                    }
                    try {
                        Class<ResourceBundle> cls = cl.loadClass(name).asSubclass(ResourceBundle.class);
                        ResourceBundle bx = cls.newInstance();
                        b = new ResourceBundleWrapper(bx);
                        if (parent != null) {
                            b.setParent(parent);
                        }
                        b.baseName = baseName;
                        b.localeID = localeID;
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        loadFromProperties = true;
                    }
                    catch (NoClassDefFoundError noClassDefFoundError) {
                        loadFromProperties = true;
                    }
                    catch (Exception e) {
                        if (DEBUG) {
                            System.out.println("failure");
                        }
                        if (!DEBUG) break block35;
                        System.out.println(e);
                    }
                }
                if (loadFromProperties) {
                    try {
                        block37: {
                            final String resName = String.valueOf(name.replace('.', '/')) + ".properties";
                            InputStream stream = AccessController.doPrivileged(new PrivilegedAction<InputStream>(){

                                @Override
                                public InputStream run() {
                                    if (cl != null) {
                                        return cl.getResourceAsStream(resName);
                                    }
                                    return ClassLoader.getSystemResourceAsStream(resName);
                                }
                            });
                            if (stream != null) {
                                stream = new BufferedInputStream(stream);
                                try {
                                    try {
                                        b = new ResourceBundleWrapper(new PropertyResourceBundle(stream));
                                        if (parent != null) {
                                            b.setParent(parent);
                                        }
                                        b.baseName = baseName;
                                        b.localeID = localeID;
                                    }
                                    catch (Exception exception) {
                                        try {
                                            stream.close();
                                        }
                                        catch (Exception exception2) {}
                                        break block37;
                                    }
                                }
                                catch (Throwable throwable) {
                                    try {
                                        stream.close();
                                    }
                                    catch (Exception exception) {}
                                    throw throwable;
                                }
                                try {
                                    stream.close();
                                }
                                catch (Exception exception) {}
                            }
                        }
                        if (b == null) {
                            String defaultName = defaultLocale.toString();
                            if (localeID.length() > 0 && localeID.indexOf(95) < 0 && defaultName.indexOf(localeID) == -1 && (b = (ResourceBundleWrapper)ResourceBundleWrapper.loadFromCache(cl, String.valueOf(baseName) + "_" + defaultName, defaultLocale)) == null) {
                                b = (ResourceBundleWrapper)ResourceBundleWrapper.instantiateBundle(baseName, defaultName, cl, disableFallback);
                            }
                        }
                        if (b == null) {
                            b = parent;
                        }
                    }
                    catch (Exception e) {
                        if (DEBUG) {
                            System.out.println("failure");
                        }
                        if (!DEBUG) break block38;
                        System.out.println(e);
                    }
                }
            }
            b = (ResourceBundleWrapper)ResourceBundleWrapper.addToCache(cl, name, defaultLocale, b);
        }
        if (b != null) {
            b.initKeysVector();
        } else if (DEBUG) {
            System.out.println("Returning null for " + baseName + "_" + localeID);
        }
        return b;
    }
}

