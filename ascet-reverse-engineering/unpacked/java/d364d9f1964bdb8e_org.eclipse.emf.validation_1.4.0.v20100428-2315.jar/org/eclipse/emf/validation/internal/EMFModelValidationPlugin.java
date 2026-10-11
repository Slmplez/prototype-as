/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.EMFPlugin$EclipsePlugin
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.eclipse.osgi.service.debug.DebugOptionsListener
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.emf.validation.internal;

import java.util.Collection;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.service.debug.DebugOptionsListener;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class EMFModelValidationPlugin
extends EMFPlugin {
    protected static final String PARENTHESIS_OPEN = "(";
    protected static final String PARENTHESIS_CLOSE = ")";
    protected static final String PREFIX_CHANGING = "CHANGING ";
    protected static final String PREFIX_CATCHING = "CAUGHT ";
    protected static final String PREFIX_THROWING = "THROWN ";
    protected static final String PREFIX_ENTERING = "ENTERING ";
    protected static final String PREFIX_EXITING = "EXITING ";
    protected static final String SEPARATOR_METHOD = "#";
    protected static final String SEPARATOR_PARAMETER = ", ";
    protected static final String SEPARATOR_RETURN = ":";
    protected static final String SEPARATOR_SPACE = " ";
    protected static final String LABEL_OLD_VALUE = "old=";
    protected static final String LABEL_NEW_VALUE = "new=";
    private static final String LIST_SEPARATOR = ValidationMessages.list_separator;
    private static final String LIST_PREFIX = ValidationMessages.list_prefix;
    private static final String LIST_SUFFIX = ValidationMessages.list_suffix;
    private static final String DEFAULT_LIST_SEPARATOR = ", ";
    private static final String DEFAULT_LIST_PREFIX = "";
    private static final String DEFAULT_LIST_SUFFIX = "";
    public static final String CONSTRAINT_PROVIDERS_EXT_P_NAME = "constraintProviders";
    public static final String MODELED_CONSTRAINT_PROVIDERS_EXT_P_NAME = "modeledConstraintProviders";
    public static final String CONSTRAINT_BINDINGS_EXT_P_NAME = "constraintBindings";
    public static final String VALIDATION_LISTENERS_EXT_P_NAME = "validationListeners";
    public static final String EVENT_TYPES_EXT_P_NAME = "eventTypes";
    public static final EMFModelValidationPlugin INSTANCE = new EMFModelValidationPlugin();
    private static Implementation plugin;

    public EMFModelValidationPlugin() {
        super(new ResourceLocator[0]);
    }

    public ResourceLocator getPluginResourceLocator() {
        return plugin;
    }

    public static Implementation getPlugin() {
        return plugin;
    }

    public static String getPluginId() {
        if (!EMFPlugin.IS_ECLIPSE_RUNNING) {
            return "org.eclipse.emf.validation";
        }
        return EMFModelValidationPlugin.getPlugin().getBundle().getSymbolicName();
    }

    public static IExtensionTracker getExtensionTracker() {
        return plugin == null ? null : plugin.extensionTracker;
    }

    public static void catching(Class<?> class1, String functionName, Throwable exception) {
        Tracing.catching(EMFModelValidationDebugOptions.EXCEPTIONS_CATCHING, class1, functionName, exception);
    }

    public static void throwing(Class<?> class1, String functionName, Throwable exception) {
        Tracing.throwing(EMFModelValidationDebugOptions.EXCEPTIONS_THROWING, class1, functionName, exception);
    }

    public static void log(int code, String message, Throwable exception) {
        Status s = new Status(1, plugin.getSymbolicName(), code, message != null ? message : "", exception);
        EMFModelValidationPlugin.getPlugin().log(s);
    }

    public static void warning(int code, String message, Throwable exception) {
        Status s = new Status(2, plugin.getSymbolicName(), code, message != null ? message : "", exception);
        EMFModelValidationPlugin.getPlugin().log(s);
    }

    public static String getMessage(String messagePattern, Object ... args) {
        return EMFModelValidationPlugin.formatMessage(messagePattern, args);
    }

    private static String formatMessage(String messagePattern, Object ... args) {
        try {
            return NLS.bind((String)messagePattern, (Object[])args);
        }
        catch (Exception e) {
            EMFModelValidationPlugin.catching(EMFModelValidationPlugin.class, "formatMessage", e);
            return messagePattern;
        }
    }

    public static String formatList(Collection<?> items) {
        switch (items.size()) {
            case 0: {
                return "";
            }
            case 1: {
                return String.valueOf(items.iterator().next());
            }
            case 2: {
                return EMFModelValidationPlugin.formatPair(items);
            }
        }
        return EMFModelValidationPlugin.formatList2(items);
    }

    private static String formatList2(Collection<?> items) {
        Iterator<?> iter = items.iterator();
        int max = items.size() - 1;
        String sep = EMFModelValidationPlugin.getString(LIST_SEPARATOR, ", ");
        StringBuffer result = new StringBuffer(32);
        result.append(EMFModelValidationPlugin.getString(LIST_PREFIX, ""));
        int i = 0;
        while (i <= max) {
            if (i == 1) {
                result.append(EMFModelValidationPlugin.getString(LIST_SEPARATOR, sep));
            } else if (i == max) {
                result.append(EMFModelValidationPlugin.getString(LIST_SEPARATOR, sep));
            } else if (i > 1) {
                result.append(sep);
            }
            result.append(iter.next());
            ++i;
        }
        result.append(EMFModelValidationPlugin.getString(LIST_SUFFIX, ""));
        return result.toString();
    }

    private static String getString(String message, String defaultResult) {
        return message != null ? message : defaultResult;
    }

    private static String formatPair(Collection<?> items) {
        Iterator<?> iter = items.iterator();
        StringBuffer result = new StringBuffer(32);
        result.append(iter.next());
        result.append(EMFModelValidationPlugin.getString(LIST_SEPARATOR, ", "));
        result.append(iter.next());
        return result.toString();
    }

    public static class Implementation
    extends EMFPlugin.EclipsePlugin {
        private ExtensionTracker extensionTracker = new ExtensionTracker();

        public Implementation() {
            plugin = this;
        }

        public void start(BundleContext context) throws Exception {
            super.start(context);
            this.extensionTracker = new ExtensionTracker();
            Hashtable<String, String> props = new Hashtable<String, String>(4);
            ((Dictionary)props).put("listener.symbolic.name", EMFModelValidationPlugin.getPluginId());
            context.registerService(DebugOptionsListener.class.getName(), (Object)new _DebugOptionsListener(), props);
        }

        public void stop(BundleContext context) throws Exception {
            this.extensionTracker.close();
            this.extensionTracker = null;
            super.stop(context);
        }

        private static class _DebugOptionsListener
        implements DebugOptionsListener {
            private _DebugOptionsListener() {
            }

            public void optionsChanged(DebugOptions options) {
                Tracing.invalidateCache();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Tracing {
        private static final Map<String, Boolean> cachedOptions = new HashMap<String, Boolean>();
        private static Boolean debugging = null;

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected static void invalidateCache() {
            Map<String, Boolean> map = cachedOptions;
            synchronized (map) {
                cachedOptions.clear();
                debugging = null;
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected static boolean shouldTrace() {
            if (plugin == null) {
                return false;
            }
            Map<String, Boolean> map = cachedOptions;
            synchronized (map) {
                if (debugging == null) {
                    debugging = plugin.isDebugging();
                }
            }
            return debugging;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public static boolean shouldTrace(String option) {
            if (Tracing.shouldTrace()) {
                Boolean value = null;
                Map<String, Boolean> map = cachedOptions;
                synchronized (map) {
                    value = cachedOptions.get(option);
                    if (value == null) {
                        value = Boolean.valueOf(Platform.getDebugOption((String)option));
                        cachedOptions.put(option, value);
                    }
                }
                return value;
            }
            return false;
        }

        protected static String getArgumentString(Object argument) {
            return String.valueOf(argument);
        }

        protected static String getArgumentsString(Object[] arguments) {
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            while (i < arguments.length) {
                buffer.append(Tracing.getArgumentString(arguments[i]));
                if (i < arguments.length - 1) {
                    buffer.append(", ");
                }
                ++i;
            }
            return buffer.toString();
        }

        public static void trace(String message) {
            if (Tracing.shouldTrace()) {
                System.out.println(message);
            }
        }

        public static void trace(String option, String message) {
            if (Tracing.shouldTrace(option)) {
                Tracing.trace(message);
            }
        }

        public static void changing(String option, String valueDescription, Object oldValue, Object newValue) {
            if (Tracing.shouldTrace(option)) {
                Tracing.trace(EMFModelValidationPlugin.PREFIX_CHANGING + valueDescription + EMFModelValidationPlugin.SEPARATOR_SPACE + EMFModelValidationPlugin.LABEL_OLD_VALUE + Tracing.getArgumentString(oldValue) + ", " + EMFModelValidationPlugin.LABEL_NEW_VALUE + Tracing.getArgumentString(newValue));
            }
        }

        public static void changing(String option, Class<?> clazz, String methodName, String valueDescription, Object oldValue, Object newValue) {
            if (Tracing.shouldTrace(option)) {
                Tracing.trace(EMFModelValidationPlugin.PREFIX_CHANGING + valueDescription + EMFModelValidationPlugin.SEPARATOR_SPACE + EMFModelValidationPlugin.LABEL_OLD_VALUE + Tracing.getArgumentString(oldValue) + ", " + EMFModelValidationPlugin.LABEL_NEW_VALUE + Tracing.getArgumentString(newValue) + EMFModelValidationPlugin.SEPARATOR_SPACE + EMFModelValidationPlugin.PARENTHESIS_OPEN + clazz.getName() + EMFModelValidationPlugin.SEPARATOR_METHOD + methodName + EMFModelValidationPlugin.PARENTHESIS_CLOSE);
            }
        }

        public static void catching(String option, Class<?> clazz, String methodName, Throwable throwable) {
            if (Tracing.shouldTrace(option)) {
                Tracing.trace(EMFModelValidationPlugin.PREFIX_CATCHING + throwable.getMessage() + EMFModelValidationPlugin.SEPARATOR_SPACE + EMFModelValidationPlugin.PARENTHESIS_OPEN + clazz.getName() + EMFModelValidationPlugin.SEPARATOR_METHOD + methodName + EMFModelValidationPlugin.PARENTHESIS_CLOSE);
                throwable.printStackTrace(System.err);
            }
        }

        public static void throwing(String option, Class<?> clazz, String methodName, Throwable throwable) {
            if (Tracing.shouldTrace(option)) {
                Tracing.trace(EMFModelValidationPlugin.PREFIX_THROWING + throwable.getMessage() + EMFModelValidationPlugin.SEPARATOR_SPACE + EMFModelValidationPlugin.PARENTHESIS_OPEN + clazz.getName() + EMFModelValidationPlugin.SEPARATOR_METHOD + methodName + EMFModelValidationPlugin.PARENTHESIS_CLOSE);
                throwable.printStackTrace(System.err);
            }
        }

        public static void entering(String option, Class<?> clazz, String methodName, Object ... parameters) {
            if (Tracing.shouldTrace(option)) {
                Tracing.trace(EMFModelValidationPlugin.PREFIX_ENTERING + clazz.getName() + EMFModelValidationPlugin.SEPARATOR_METHOD + methodName + EMFModelValidationPlugin.PARENTHESIS_OPEN + Tracing.getArgumentsString(parameters) + EMFModelValidationPlugin.PARENTHESIS_CLOSE);
            }
        }

        public static void exiting(String option, Class<?> clazz, String methodName) {
            if (Tracing.shouldTrace(option)) {
                Tracing.trace(EMFModelValidationPlugin.PREFIX_EXITING + clazz.getName() + EMFModelValidationPlugin.SEPARATOR_METHOD + methodName);
            }
        }

        public static void exiting(String option, Class<?> clazz, String methodName, Object returnValue) {
            if (Tracing.shouldTrace(option)) {
                Tracing.trace(EMFModelValidationPlugin.PREFIX_EXITING + clazz.getName() + EMFModelValidationPlugin.SEPARATOR_METHOD + methodName + EMFModelValidationPlugin.SEPARATOR_RETURN + Tracing.getArgumentString(returnValue));
            }
        }
    }
}

