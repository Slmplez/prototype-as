/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.engine.spi;

import java.util.Arrays;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class Memento {
    private static final Collection<Class<?>> simples;
    private static final Collection<Class<?>> simpleArrays;
    private static final Collection<Class<?>> primitiveArrays;
    Map<String, Object> mementoMap = new HashMap<String, Object>();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;
    static /* synthetic */ Class class$11;
    static /* synthetic */ Class class$12;
    static /* synthetic */ Class class$13;
    static /* synthetic */ Class class$14;
    static /* synthetic */ Class class$15;
    static /* synthetic */ Class class$16;
    static /* synthetic */ Class class$17;
    static /* synthetic */ Class class$18;
    static /* synthetic */ Class class$19;
    static /* synthetic */ Class class$20;
    static /* synthetic */ Class class$21;
    static /* synthetic */ Class class$22;
    static /* synthetic */ Class class$23;
    static /* synthetic */ Class class$24;
    static /* synthetic */ Class class$25;

    static {
        Class[] classArray = new Class[9];
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
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz2;
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("java.lang.Long");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[2] = clazz3;
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("java.lang.Float");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[3] = clazz4;
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("java.lang.Double");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[4] = clazz5;
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("java.lang.Byte");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[5] = clazz6;
        Class<?> clazz7 = class$6;
        if (clazz7 == null) {
            try {
                clazz7 = class$6 = Class.forName("java.lang.Short");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[6] = clazz7;
        Class<?> clazz8 = class$7;
        if (clazz8 == null) {
            try {
                clazz8 = class$7 = Class.forName("java.lang.Character");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[7] = clazz8;
        Class<?> clazz9 = class$8;
        if (clazz9 == null) {
            try {
                clazz9 = class$8 = Class.forName("java.lang.Boolean");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[8] = clazz9;
        simples = Arrays.asList(classArray);
        Class[] classArray2 = new Class[9];
        Class<?> clazz10 = class$9;
        if (clazz10 == null) {
            try {
                clazz10 = class$9 = Class.forName("[Ljava.lang.String;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[0] = clazz10;
        Class<?> clazz11 = class$10;
        if (clazz11 == null) {
            try {
                clazz11 = class$10 = Class.forName("[Ljava.lang.Integer;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[1] = clazz11;
        Class<?> clazz12 = class$11;
        if (clazz12 == null) {
            try {
                clazz12 = class$11 = Class.forName("[Ljava.lang.Long;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[2] = clazz12;
        Class<?> clazz13 = class$12;
        if (clazz13 == null) {
            try {
                clazz13 = class$12 = Class.forName("[Ljava.lang.Float;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[3] = clazz13;
        Class<?> clazz14 = class$13;
        if (clazz14 == null) {
            try {
                clazz14 = class$13 = Class.forName("[Ljava.lang.Double;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[4] = clazz14;
        Class<?> clazz15 = class$14;
        if (clazz15 == null) {
            try {
                clazz15 = class$14 = Class.forName("[Ljava.lang.Byte;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[5] = clazz15;
        Class<?> clazz16 = class$15;
        if (clazz16 == null) {
            try {
                clazz16 = class$15 = Class.forName("[Ljava.lang.Short;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[6] = clazz16;
        Class<?> clazz17 = class$16;
        if (clazz17 == null) {
            try {
                clazz17 = class$16 = Class.forName("[Ljava.lang.Character;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[7] = clazz17;
        Class<?> clazz18 = class$17;
        if (clazz18 == null) {
            try {
                clazz18 = class$17 = Class.forName("[Ljava.lang.Boolean;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[8] = clazz18;
        simpleArrays = Arrays.asList(classArray2);
        Class[] classArray3 = new Class[8];
        Class<?> clazz19 = class$18;
        if (clazz19 == null) {
            try {
                clazz19 = class$18 = Class.forName("[J");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[0] = clazz19;
        Class<?> clazz20 = class$19;
        if (clazz20 == null) {
            try {
                clazz20 = class$19 = Class.forName("[I");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[1] = clazz20;
        Class<?> clazz21 = class$20;
        if (clazz21 == null) {
            try {
                clazz21 = class$20 = Class.forName("[S");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[2] = clazz21;
        Class<?> clazz22 = class$21;
        if (clazz22 == null) {
            try {
                clazz22 = class$21 = Class.forName("[C");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[3] = clazz22;
        Class<?> clazz23 = class$22;
        if (clazz23 == null) {
            try {
                clazz23 = class$22 = Class.forName("[B");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[4] = clazz23;
        Class<?> clazz24 = class$23;
        if (clazz24 == null) {
            try {
                clazz24 = class$23 = Class.forName("[D");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[5] = clazz24;
        Class<?> clazz25 = class$24;
        if (clazz25 == null) {
            try {
                clazz25 = class$24 = Class.forName("[F");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[6] = clazz25;
        Class<?> clazz26 = class$25;
        if (clazz26 == null) {
            try {
                clazz26 = class$25 = Class.forName("[Z");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[7] = clazz26;
        primitiveArrays = Arrays.asList(classArray3);
    }

    public Object remove(String key) {
        if (key == null) {
            throw new NullPointerException();
        }
        return this.mementoMap.remove(key);
    }

    public Object put(String key, Object value) {
        if (key == null) {
            throw new NullPointerException();
        }
        Memento.validateValue(value);
        return this.mementoMap.put(key, value);
    }

    public Object get(String key) {
        if (key == null) {
            throw new NullPointerException();
        }
        return this.mementoMap.get(key);
    }

    public Enumeration<String> getKeys() {
        return new Enumeration<String>(){
            Iterator<String> keysIterator;
            {
                this.keysIterator = Memento.this.mementoMap.keySet().iterator();
            }

            @Override
            public boolean hasMoreElements() {
                return this.keysIterator.hasNext();
            }

            @Override
            public String nextElement() {
                return this.keysIterator.next();
            }
        };
    }

    private static void validateValue(Object value) {
        if (value == null) {
            return;
        }
        Class<?> clazz = value.getClass();
        if (simples.contains(clazz)) {
            return;
        }
        if (simpleArrays.contains(clazz) || primitiveArrays.contains(clazz)) {
            return;
        }
        throw new IllegalArgumentException(clazz.getName());
    }
}

