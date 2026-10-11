/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.util;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class NLS {
    private static final Object[] EMPTY_ARGS = new Object[0];
    private static final String EXTENSION = ".properties";
    private static String[] nlSuffixes;
    private static final String PROP_WARNINGS = "osgi.nls.warnings";
    private static final String IGNORE = "ignore";
    private static final boolean ignoreWarnings;
    private static FrameworkLog frameworkLog;
    static final int SEVERITY_ERROR = 4;
    static final int SEVERITY_WARNING = 2;
    static final Object ASSIGNED;

    static {
        ignoreWarnings = IGNORE.equals(FrameworkProperties.getProperty(PROP_WARNINGS));
        ASSIGNED = new Object();
    }

    protected NLS() {
    }

    public static String bind(String message, Object binding) {
        return NLS.internalBind(message, null, String.valueOf(binding), null);
    }

    public static String bind(String message, Object binding1, Object binding2) {
        return NLS.internalBind(message, null, String.valueOf(binding1), String.valueOf(binding2));
    }

    public static String bind(String message, Object[] bindings) {
        return NLS.internalBind(message, bindings, null, null);
    }

    public static void initializeMessages(final String baseName, final Class<?> clazz) {
        if (System.getSecurityManager() == null) {
            NLS.load(baseName, clazz);
            return;
        }
        AccessController.doPrivileged(new PrivilegedAction<Object>(){

            @Override
            public Object run() {
                NLS.load(baseName, clazz);
                return null;
            }
        });
    }

    private static String internalBind(String message, Object[] args, String argZero, String argOne) {
        if (message == null) {
            return "No message available.";
        }
        if (args == null || args.length == 0) {
            args = EMPTY_ARGS;
        }
        int length = message.length();
        int bufLen = length + args.length * 5;
        if (argZero != null) {
            bufLen += argZero.length() - 3;
        }
        if (argOne != null) {
            bufLen += argOne.length() - 3;
        }
        StringBuffer buffer = new StringBuffer(bufLen < 0 ? 0 : bufLen);
        int i = 0;
        while (i < length) {
            char c = message.charAt(i);
            switch (c) {
                case '{': {
                    int index = message.indexOf(125, i);
                    if (index == -1) {
                        buffer.append(c);
                        break;
                    }
                    if (++i >= length) {
                        buffer.append(c);
                        break;
                    }
                    int number = -1;
                    try {
                        number = Integer.parseInt(message.substring(i, index));
                    }
                    catch (NumberFormatException e) {
                        throw (IllegalArgumentException)new IllegalArgumentException().initCause(e);
                    }
                    if (number == 0 && argZero != null) {
                        buffer.append(argZero);
                    } else if (number == 1 && argOne != null) {
                        buffer.append(argOne);
                    } else {
                        if (number >= args.length || number < 0) {
                            buffer.append("<missing argument>");
                            i = index;
                            break;
                        }
                        buffer.append(args[number]);
                    }
                    i = index;
                    break;
                }
                case '\'': {
                    int nextIndex = i + 1;
                    if (nextIndex >= length) {
                        buffer.append(c);
                        break;
                    }
                    char next = message.charAt(nextIndex);
                    if (next == '\'') {
                        ++i;
                        buffer.append(c);
                        break;
                    }
                    int index = message.indexOf(39, nextIndex);
                    if (index == -1) {
                        buffer.append(c);
                        break;
                    }
                    buffer.append(message.substring(nextIndex, index));
                    i = index;
                    break;
                }
                default: {
                    buffer.append(c);
                }
            }
            ++i;
        }
        return buffer.toString();
    }

    private static String[] buildVariants(String root) {
        if (nlSuffixes == null) {
            String nl = Locale.getDefault().toString();
            ArrayList<String> result = new ArrayList<String>(4);
            while (true) {
                result.add(new StringBuffer(String.valueOf('_')).append(nl).append(EXTENSION).toString());
                int lastSeparator = nl.lastIndexOf(95);
                if (lastSeparator == -1) break;
                nl = nl.substring(0, lastSeparator);
            }
            result.add(EXTENSION);
            nlSuffixes = result.toArray(new String[result.size()]);
        }
        root = root.replace('.', '/');
        String[] variants = new String[nlSuffixes.length];
        int i = 0;
        while (i < variants.length) {
            variants[i] = new StringBuffer(String.valueOf(root)).append(nlSuffixes[i]).toString();
            ++i;
        }
        return variants;
    }

    private static void computeMissingMessages(String bundleName, Class<?> clazz, Map<Object, Object> fieldMap, Field[] fieldArray, boolean isAccessible) {
        int numFields = fieldArray.length;
        int i = 0;
        while (i < numFields) {
            Field field = fieldArray[i];
            if ((field.getModifiers() & 0x19) == 9 && fieldMap.get(field.getName()) != ASSIGNED) {
                try {
                    String value = new StringBuffer("NLS missing message: ").append(field.getName()).append(" in: ").append(bundleName).toString();
                    if (Debug.DEBUG_MESSAGE_BUNDLES) {
                        System.out.println(value);
                    }
                    NLS.log(2, value, null);
                    if (!isAccessible) {
                        field.setAccessible(true);
                    }
                    field.set(null, value);
                }
                catch (Exception e) {
                    NLS.log(4, new StringBuffer("Error setting the missing message value for: ").append(field.getName()).toString(), e);
                }
            }
            ++i;
        }
    }

    static void load(String bundleName, Class<?> clazz) {
        long start = System.currentTimeMillis();
        Field[] fieldArray = clazz.getDeclaredFields();
        ClassLoader loader = clazz.getClassLoader();
        boolean isAccessible = (clazz.getModifiers() & 1) != 0;
        int len = fieldArray.length;
        HashMap<Object, Object> fields = new HashMap<Object, Object>(len * 2);
        int i = 0;
        while (i < len) {
            fields.put(fieldArray[i].getName(), fieldArray[i]);
            ++i;
        }
        String[] variants = NLS.buildVariants(bundleName);
        int i2 = 0;
        while (i2 < variants.length) {
            block18: {
                InputStream input;
                InputStream inputStream = input = loader == null ? ClassLoader.getSystemResourceAsStream(variants[i2]) : loader.getResourceAsStream(variants[i2]);
                if (input != null) {
                    try {
                        try {
                            MessagesProperties properties = new MessagesProperties(fields, bundleName, isAccessible);
                            properties.load(input);
                        }
                        catch (IOException e) {
                            NLS.log(4, new StringBuffer("Error loading ").append(variants[i2]).toString(), e);
                            if (input != null) {
                                try {
                                    input.close();
                                }
                                catch (IOException iOException) {}
                            }
                            break block18;
                        }
                    }
                    catch (Throwable throwable) {
                        if (input != null) {
                            try {
                                input.close();
                            }
                            catch (IOException iOException) {}
                        }
                        throw throwable;
                    }
                    if (input != null) {
                        try {
                            input.close();
                        }
                        catch (IOException iOException) {}
                    }
                }
            }
            ++i2;
        }
        NLS.computeMissingMessages(bundleName, clazz, fields, fieldArray, isAccessible);
        if (Debug.DEBUG_MESSAGE_BUNDLES) {
            System.out.println(new StringBuffer("Time to load message bundle: ").append(bundleName).append(" was ").append(System.currentTimeMillis() - start).append("ms.").toString());
        }
    }

    static void log(int severity, String message, Exception e) {
        String statusMsg;
        if (severity == 2 && ignoreWarnings) {
            return;
        }
        if (frameworkLog != null) {
            frameworkLog.log(new FrameworkLogEntry("org.eclipse.osgi", severity, 1, message, 0, e, null));
            return;
        }
        switch (severity) {
            case 4: {
                statusMsg = "Error: ";
                break;
            }
            default: {
                statusMsg = "Warning: ";
            }
        }
        if (message != null) {
            statusMsg = new StringBuffer(String.valueOf(statusMsg)).append(message).toString();
        }
        if (e != null) {
            statusMsg = new StringBuffer(String.valueOf(statusMsg)).append(": ").append(e.getMessage()).toString();
        }
        System.err.println(statusMsg);
        if (e != null) {
            e.printStackTrace();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class MessagesProperties
    extends Properties {
        private static final int MOD_EXPECTED = 9;
        private static final int MOD_MASK = 25;
        private static final long serialVersionUID = 1L;
        private final String bundleName;
        private final Map<Object, Object> fields;
        private final boolean isAccessible;

        public MessagesProperties(Map<Object, Object> fieldMap, String bundleName, boolean isAccessible) {
            this.fields = fieldMap;
            this.bundleName = bundleName;
            this.isAccessible = isAccessible;
        }

        @Override
        public synchronized Object put(Object key, Object value) {
            Object fieldObject = this.fields.put(key, ASSIGNED);
            if (fieldObject == ASSIGNED) {
                return null;
            }
            if (fieldObject == null) {
                String msg = new StringBuffer("NLS unused message: ").append(key).append(" in: ").append(this.bundleName).toString();
                if (Debug.DEBUG_MESSAGE_BUNDLES) {
                    System.out.println(msg);
                }
                NLS.log(2, msg, null);
                return null;
            }
            Field field = (Field)fieldObject;
            if ((field.getModifiers() & 0x19) != 9) {
                return null;
            }
            try {
                if (!this.isAccessible) {
                    field.setAccessible(true);
                }
                field.set(null, new String(((String)value).toCharArray()));
            }
            catch (Exception e) {
                NLS.log(4, "Exception setting field value.", e);
            }
            return null;
        }
    }
}

