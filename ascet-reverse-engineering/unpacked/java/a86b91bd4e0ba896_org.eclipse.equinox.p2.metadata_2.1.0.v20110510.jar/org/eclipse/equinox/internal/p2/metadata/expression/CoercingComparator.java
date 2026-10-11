/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.security.AccessController;
import java.security.PrivilegedAction;
import org.eclipse.equinox.internal.p2.metadata.MetadataActivator;
import org.eclipse.equinox.p2.metadata.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class CoercingComparator<T> {
    private static CoercingComparator<?>[] coercers = new CoercingComparator[]{new ClassCoercer(), new BooleanCoercer(), new LongCoercer(), new IntegerCoercer(), new VersionCoercer(), new StringCoercer()};
    private static final Class<?>[] constructorType;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;

    static {
        Class[] classArray = new Class[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        constructorType = classArray;
    }

    public static <TA, TB> int coerceAndCompare(TA o1, TB o2) throws IllegalArgumentException {
        if (o1 == null || o2 == null) {
            throw new IllegalArgumentException("Cannot compare null to anything");
        }
        if (o1 instanceof Comparable && o1.getClass().isAssignableFrom(o2.getClass())) {
            return ((Comparable)o1).compareTo(o2);
        }
        if (o2 instanceof Comparable && o2.getClass().isAssignableFrom(o1.getClass())) {
            return -((Comparable)o2).compareTo(o1);
        }
        CoercingComparator<TA> ca = CoercingComparator.getComparator(o1, o2);
        CoercingComparator<TB> cb = CoercingComparator.getComparator(o2, o1);
        return ca.getCoercePrio() <= cb.getCoercePrio() ? ca.compare(o1, ca.coerce(o2)) : cb.compare(cb.coerce(o1), o2);
    }

    public static <TA, TB> boolean coerceAndEquals(TA o1, TB o2) throws IllegalArgumentException {
        if (o1 == o2) {
            return true;
        }
        if (o1 == null || o2 == null) {
            return false;
        }
        if (o1.getClass() != o2.getClass()) {
            if (o1.getClass().isAssignableFrom(o2.getClass())) {
                return o1.equals(o2);
            }
            if (o2.getClass().isAssignableFrom(o1.getClass())) {
                return o2.equals(o1);
            }
            try {
                CoercingComparator<TA> ca = CoercingComparator.getComparator(o1, o2);
                CoercingComparator<TB> cb = CoercingComparator.getComparator(o2, o1);
                return ca.getCoercePrio() <= cb.getCoercePrio() ? o1.equals(ca.coerce(o2)) : o2.equals(cb.coerce(o1));
            }
            catch (IllegalArgumentException illegalArgumentException) {}
        }
        return o1.equals(o2);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static <V> CoercingComparator<V> getComparator(V value, Object v2) {
        Class<?> vClass = value.getClass();
        CoercingComparator<?>[] carr = coercers;
        int idx = carr.length;
        while (--idx >= 0) {
            CoercingComparator<?> c = carr[idx];
            if (!c.canCoerceTo(vClass)) continue;
            CoercingComparator<?> cv = c;
            return cv;
        }
        if (value instanceof Comparable && v2 instanceof String) {
            Class<?> cClass = vClass;
            try {
                Class<?> clazz;
                Constructor<?> constructor = cClass.getConstructor(constructorType);
                if (!constructor.isAccessible()) {
                    AccessController.doPrivileged(new SetAccessibleAction(constructor));
                }
                if ((clazz = class$6) == null) {
                    try {
                        clazz = class$6 = Class.forName("org.eclipse.equinox.internal.p2.metadata.expression.CoercingComparator");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class<?> clazz2 = clazz;
                synchronized (clazz) {
                    FromStringCoercer cv;
                    int top = coercers.length;
                    CoercingComparator[] nc = new CoercingComparator[top + 1];
                    System.arraycopy(coercers, 0, nc, 1, top);
                    nc[0] = cv = new FromStringCoercer(cClass, constructor);
                    coercers = nc;
                    // ** MonitorExit[var7_8] (shouldn't be in output)
                    return cv;
                }
            }
            catch (Exception exception) {}
        }
        throw new IllegalArgumentException(new StringBuffer("No comparator for ").append(vClass.getName()).toString());
    }

    protected IllegalArgumentException uncoercable(Object v) {
        StringBuffer sb = new StringBuffer("Cannot coerce ");
        if (v instanceof String) {
            sb.append('\'');
            sb.append(v);
            sb.append('\'');
        } else if (v instanceof Number) {
            sb.append("number ");
            sb.append(v);
        } else {
            sb.append("an object of instance ");
            sb.append(v.getClass().getName());
        }
        sb.append(" into a ");
        sb.append(this.getCoerceClass().getName());
        return new IllegalArgumentException(sb.toString());
    }

    boolean canCoerceTo(Class<?> cls) {
        return cls == this.getCoerceClass();
    }

    abstract T coerce(Object var1);

    abstract int compare(T var1, T var2);

    abstract Class<T> getCoerceClass();

    abstract int getCoercePrio();

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class BooleanCoercer
    extends CoercingComparator<Boolean> {
        BooleanCoercer() {
        }

        @Override
        public int compare(Boolean o1, Boolean o2) {
            return o1.booleanValue() == o2.booleanValue() ? 0 : (o1 != false ? 1 : -1);
        }

        @Override
        Boolean coerce(Object v) {
            if (v instanceof Boolean) {
                return (Boolean)v;
            }
            if (v instanceof String) {
                String sv = ((String)v).trim();
                if (sv.equalsIgnoreCase("true")) {
                    return Boolean.TRUE;
                }
                if (sv.equalsIgnoreCase("false")) {
                    return Boolean.FALSE;
                }
            }
            throw this.uncoercable(v);
        }

        @Override
        Class<Boolean> getCoerceClass() {
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("java.lang.Boolean");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz;
        }

        @Override
        int getCoercePrio() {
            return 7;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class ClassCoercer
    extends CoercingComparator<Class<?>> {
        ClassCoercer() {
        }

        @Override
        public int compare(Class<?> o1, Class<?> o2) {
            return o1.getName().compareTo(o2.getName());
        }

        @Override
        Class<?> coerce(Object v) {
            if (v instanceof Class) {
                return (Class)v;
            }
            if (v instanceof String) {
                try {
                    return MetadataActivator.getContext().getBundle().loadClass(((String)v).trim());
                }
                catch (Exception exception) {}
            }
            throw this.uncoercable(v);
        }

        @Override
        Class<Class<?>> getCoerceClass() {
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("java.lang.Class");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Class<?> cls = clazz;
            return cls;
        }

        @Override
        int getCoercePrio() {
            return 11;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class FromStringCoercer<T extends Comparable<Object>>
    extends CoercingComparator<T> {
        private final Class<T> coerceClass;
        private final Constructor<T> constructor;

        public FromStringCoercer(Class<T> coerceClass, Constructor<T> constructor) {
            this.coerceClass = coerceClass;
            this.constructor = constructor;
        }

        @Override
        T coerce(Object v) {
            if (v instanceof String) {
                try {
                    return (T)((Comparable)this.constructor.newInstance(((String)v).trim()));
                }
                catch (Exception exception) {}
            }
            throw this.uncoercable(v);
        }

        @Override
        int compare(T o1, T o2) {
            return o1.compareTo(o2);
        }

        @Override
        Class<T> getCoerceClass() {
            return this.coerceClass;
        }

        @Override
        int getCoercePrio() {
            return 0;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class IntegerCoercer
    extends CoercingComparator<Integer> {
        IntegerCoercer() {
        }

        @Override
        public int compare(Integer o1, Integer o2) {
            return o1.compareTo(o2);
        }

        @Override
        Integer coerce(Object v) {
            if (v instanceof Integer) {
                return (Integer)v;
            }
            if (v instanceof Number) {
                return new Integer(((Number)v).intValue());
            }
            if (v instanceof String) {
                try {
                    return Integer.valueOf(((String)v).trim());
                }
                catch (NumberFormatException numberFormatException) {}
            }
            throw this.uncoercable(v);
        }

        @Override
        Class<Integer> getCoerceClass() {
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("java.lang.Integer");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz;
        }

        @Override
        int getCoercePrio() {
            return 6;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class LongCoercer
    extends CoercingComparator<Long> {
        LongCoercer() {
        }

        @Override
        public int compare(Long o1, Long o2) {
            return o1.compareTo(o2);
        }

        @Override
        Long coerce(Object v) {
            if (v instanceof Long) {
                return (Long)v;
            }
            if (v instanceof Number) {
                return new Long(((Number)v).longValue());
            }
            if (v instanceof String) {
                try {
                    return Long.valueOf(((String)v).trim());
                }
                catch (NumberFormatException numberFormatException) {}
            }
            throw this.uncoercable(v);
        }

        @Override
        Class<Long> getCoerceClass() {
            Class<?> clazz = class$4;
            if (clazz == null) {
                try {
                    clazz = class$4 = Class.forName("java.lang.Long");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz;
        }

        @Override
        int getCoercePrio() {
            return 5;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class SetAccessibleAction
    implements PrivilegedAction<Object> {
        private final AccessibleObject accessible;

        SetAccessibleAction(AccessibleObject accessible) {
            this.accessible = accessible;
        }

        @Override
        public Object run() {
            this.accessible.setAccessible(true);
            return null;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class StringCoercer
    extends CoercingComparator<String> {
        StringCoercer() {
        }

        @Override
        public int compare(String o1, String o2) {
            return o1.compareTo(o2);
        }

        @Override
        String coerce(Object v) {
            if (v instanceof Class) {
                return ((Class)v).getName();
            }
            return v.toString();
        }

        @Override
        Class<String> getCoerceClass() {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz;
        }

        @Override
        int getCoercePrio() {
            return 10;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class VersionCoercer
    extends CoercingComparator<Version> {
        VersionCoercer() {
        }

        @Override
        public int compare(Version o1, Version o2) {
            return o1.compareTo(o2);
        }

        @Override
        boolean canCoerceTo(Class<?> cls) {
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("org.eclipse.equinox.p2.metadata.Version");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz.isAssignableFrom(cls);
        }

        @Override
        Version coerce(Object v) {
            if (v instanceof Version) {
                return (Version)v;
            }
            if (v instanceof String) {
                return Version.create((String)v);
            }
            if (v instanceof String) {
                try {
                    return Version.create((String)v);
                }
                catch (NumberFormatException numberFormatException) {}
            }
            throw this.uncoercable(v);
        }

        @Override
        Class<Version> getCoerceClass() {
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("org.eclipse.equinox.p2.metadata.Version");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz;
        }

        @Override
        int getCoercePrio() {
            return 1;
        }
    }
}

