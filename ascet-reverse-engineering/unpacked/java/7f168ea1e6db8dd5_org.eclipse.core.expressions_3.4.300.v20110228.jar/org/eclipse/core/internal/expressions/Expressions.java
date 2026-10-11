/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdapterManager
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleEvent
 *  org.osgi.framework.BundleListener
 */
package org.eclipse.core.internal.expressions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ICountable;
import org.eclipse.core.expressions.IIterable;
import org.eclipse.core.internal.expressions.ExpressionMessages;
import org.eclipse.core.internal.expressions.ExpressionPlugin;
import org.eclipse.core.internal.expressions.ExpressionStatus;
import org.eclipse.core.internal.expressions.Messages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdapterManager;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleListener;
import org.w3c.dom.Element;

public class Expressions {
    private static WeakHashMap fgKnownClasses;
    public static final boolean TRACING;
    public static final Object[] EMPTY_ARGS;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        TRACING = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.expressions/tracePropertyResolving"));
        EMPTY_ARGS = new Object[0];
    }

    private Expressions() {
    }

    public static boolean isInstanceOf(Object element, String type) {
        if (element == null) {
            return false;
        }
        return Expressions.isSubtype(element.getClass(), type);
    }

    private static synchronized boolean isSubtype(Class clazz, String type) {
        boolean isSubtype;
        Object obj;
        WeakHashMap knownClassesMap = Expressions.getKnownClasses();
        HashMap<String, Boolean> nameMap = (HashMap<String, Boolean>)knownClassesMap.get(clazz);
        if (nameMap != null && (obj = nameMap.get(type)) != null) {
            return (Boolean)obj;
        }
        if (nameMap == null) {
            nameMap = new HashMap<String, Boolean>();
            knownClassesMap.put(clazz, nameMap);
        }
        nameMap.put(type, (isSubtype = Expressions.uncachedIsSubtype(clazz, type)) ? Boolean.TRUE : Boolean.FALSE);
        return isSubtype;
    }

    private static WeakHashMap getKnownClasses() {
        if (fgKnownClasses == null) {
            BundleListener listener;
            fgKnownClasses = new WeakHashMap();
            BundleContext bundleContext = ExpressionPlugin.getDefault().getBundleContext();
            ExpressionPlugin.fgBundleListener = listener = new BundleListener(){

                /*
                 * WARNING - Removed try catching itself - possible behaviour change.
                 * Enabled force condition propagation
                 * Lifted jumps to return sites
                 */
                public void bundleChanged(BundleEvent event) {
                    if (event.getType() != 4) return;
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.Expressions");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    Class<?> clazz2 = clazz;
                    synchronized (clazz) {
                        fgKnownClasses.clear();
                        // ** MonitorExit[var2_2] (shouldn't be in output)
                        return;
                    }
                }
            };
            bundleContext.addBundleListener(listener);
        }
        return fgKnownClasses;
    }

    public static boolean uncachedIsSubtype(Class clazz, String type) {
        if (clazz.getName().equals(type)) {
            return true;
        }
        Class superClass = clazz.getSuperclass();
        if (superClass != null && Expressions.uncachedIsSubtype(superClass, type)) {
            return true;
        }
        Class<?>[] interfaces = clazz.getInterfaces();
        int i = 0;
        while (i < interfaces.length) {
            if (Expressions.uncachedIsSubtype(interfaces[i], type)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static void checkAttribute(String name, String value) throws CoreException {
        if (value == null) {
            throw new CoreException((IStatus)new ExpressionStatus(50, Messages.format(ExpressionMessages.Expression_attribute_missing, name)));
        }
    }

    public static void checkAttribute(String name, String value, String[] validValues) throws CoreException {
        Expressions.checkAttribute(name, value);
        int i = 0;
        while (i < validValues.length) {
            if (value.equals(validValues[i])) {
                return;
            }
            ++i;
        }
        throw new CoreException((IStatus)new ExpressionStatus(51, Messages.format(ExpressionMessages.Expression_attribute_invalid_value, value)));
    }

    public static void checkCollection(Object var, Expression expression) throws CoreException {
        if (var instanceof Collection) {
            return;
        }
        throw new CoreException((IStatus)new ExpressionStatus(3, Messages.format(ExpressionMessages.Expression_variable_not_a_collection, expression.toString())));
    }

    public static void checkList(Object var, Expression expression) throws CoreException {
        if (var instanceof List) {
            return;
        }
        throw new CoreException((IStatus)new ExpressionStatus(4, Messages.format(ExpressionMessages.Expression_variable_not_a_list, expression.toString())));
    }

    public static IIterable getAsIIterable(Object var, Expression expression) throws CoreException {
        IIterable result;
        if (var instanceof IIterable) {
            return (IIterable)var;
        }
        IAdapterManager manager = Platform.getAdapterManager();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.core.expressions.IIterable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((result = (IIterable)manager.getAdapter(var, (Class)clazz)) != null) {
            return result;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.core.expressions.IIterable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (manager.queryAdapter(var, clazz2.getName()) == 1) {
            return null;
        }
        throw new CoreException((IStatus)new ExpressionStatus(3, Messages.format(ExpressionMessages.Expression_variable_not_iterable, expression.toString())));
    }

    public static ICountable getAsICountable(Object var, Expression expression) throws CoreException {
        ICountable result;
        if (var instanceof ICountable) {
            return (ICountable)var;
        }
        IAdapterManager manager = Platform.getAdapterManager();
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.core.expressions.ICountable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((result = (ICountable)manager.getAdapter(var, (Class)clazz)) != null) {
            return result;
        }
        Class<?> clazz2 = class$2;
        if (clazz2 == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.core.expressions.ICountable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (manager.queryAdapter(var, clazz2.getName()) == 1) {
            return null;
        }
        throw new CoreException((IStatus)new ExpressionStatus(3, Messages.format(ExpressionMessages.Expression_variable_not_countable, expression.toString())));
    }

    public static boolean getOptionalBooleanAttribute(IConfigurationElement element, String attributeName) {
        String value = element.getAttribute(attributeName);
        if (value == null) {
            return false;
        }
        return Boolean.valueOf(value);
    }

    public static boolean getOptionalBooleanAttribute(Element element, String attributeName) {
        String value = element.getAttribute(attributeName);
        if (value.length() == 0) {
            return false;
        }
        return Boolean.valueOf(value);
    }

    public static Object[] getArguments(IConfigurationElement element, String attributeName) throws CoreException {
        String args = element.getAttribute(attributeName);
        if (args != null) {
            return Expressions.parseArguments(args);
        }
        return EMPTY_ARGS;
    }

    public static Object[] getArguments(Element element, String attributeName) throws CoreException {
        String args = element.getAttribute(attributeName);
        if (args.length() > 0) {
            return Expressions.parseArguments(args);
        }
        return EMPTY_ARGS;
    }

    public static Object[] parseArguments(String args) throws CoreException {
        int comma;
        ArrayList<Object> result = new ArrayList<Object>();
        int start = 0;
        while ((comma = Expressions.findNextComma(args, start)) != -1) {
            result.add(Expressions.convertArgument(args.substring(start, comma).trim()));
            start = comma + 1;
        }
        result.add(Expressions.convertArgument(args.substring(start).trim()));
        return result.toArray();
    }

    private static int findNextComma(String str, int start) throws CoreException {
        boolean inString = false;
        int i = start;
        while (i < str.length()) {
            char ch = str.charAt(i);
            if (ch == ',' && !inString) {
                return i;
            }
            if (ch == '\'') {
                if (!inString) {
                    inString = true;
                } else if (i + 1 < str.length() && str.charAt(i + 1) == '\'') {
                    ++i;
                } else {
                    inString = false;
                }
            } else if (ch == ',' && !inString) {
                return i;
            }
            ++i;
        }
        if (inString) {
            throw new CoreException((IStatus)new ExpressionStatus(303, Messages.format(ExpressionMessages.Expression_string_not_terminated, str)));
        }
        return -1;
    }

    public static Object convertArgument(String arg) throws CoreException {
        if (arg == null) {
            return null;
        }
        if (arg.length() == 0) {
            return arg;
        }
        if (arg.charAt(0) == '\'' && arg.charAt(arg.length() - 1) == '\'') {
            return Expressions.unEscapeString(arg.substring(1, arg.length() - 1));
        }
        if ("true".equals(arg)) {
            return Boolean.TRUE;
        }
        if ("false".equals(arg)) {
            return Boolean.FALSE;
        }
        if (arg.indexOf(46) != -1) {
            try {
                return Float.valueOf(arg);
            }
            catch (NumberFormatException numberFormatException) {
                return arg;
            }
        }
        try {
            return Integer.valueOf(arg);
        }
        catch (NumberFormatException numberFormatException) {
            return arg;
        }
    }

    public static String unEscapeString(String str) throws CoreException {
        StringBuffer result = new StringBuffer();
        int i = 0;
        while (i < str.length()) {
            char ch = str.charAt(i);
            if (ch == '\'') {
                if (i == str.length() - 1 || str.charAt(i + 1) != '\'') {
                    throw new CoreException((IStatus)new ExpressionStatus(302, Messages.format(ExpressionMessages.Expression_string_not_correctly_escaped, str)));
                }
                result.append('\'');
                ++i;
            } else {
                result.append(ch);
            }
            ++i;
        }
        return result.toString();
    }
}

