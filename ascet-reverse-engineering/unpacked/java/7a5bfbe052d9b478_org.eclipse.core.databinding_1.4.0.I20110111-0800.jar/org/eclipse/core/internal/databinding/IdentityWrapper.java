/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding;

public class IdentityWrapper {
    private static final IdentityWrapper NULL_WRAPPER = new IdentityWrapper(null);
    final Object o;
    static /* synthetic */ Class class$0;

    public static IdentityWrapper wrap(Object obj) {
        return obj == null ? NULL_WRAPPER : new IdentityWrapper(obj);
    }

    private IdentityWrapper(Object o) {
        this.o = o;
    }

    public Object unwrap() {
        return this.o;
    }

    public boolean equals(Object obj) {
        block8: {
            block7: {
                if (obj == null) break block7;
                Class<?> clazz = obj.getClass();
                Class<?> clazz2 = class$0;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$0 = Class.forName("org.eclipse.core.internal.databinding.IdentityWrapper");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (clazz == clazz2) break block8;
            }
            return false;
        }
        return this.o == ((IdentityWrapper)obj).o;
    }

    public int hashCode() {
        return System.identityHashCode(this.o);
    }
}

