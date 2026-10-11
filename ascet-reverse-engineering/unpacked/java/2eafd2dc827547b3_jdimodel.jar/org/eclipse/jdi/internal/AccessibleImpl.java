/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Accessible
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.Accessible;
import java.lang.reflect.Field;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public abstract class AccessibleImpl
extends MirrorImpl
implements Accessible {
    public static final int MODIFIER_SYNTHETIC = -268435456;
    public static final int MODIFIER_ACC_PUBLIC = 1;
    public static final int MODIFIER_ACC_PRIVATE = 2;
    public static final int MODIFIER_ACC_PROTECTED = 4;
    public static final int MODIFIER_ACC_STATIC = 8;
    public static final int MODIFIER_ACC_FINAL = 16;
    public static final int MODIFIER_ACC_SYNCHRONIZED = 32;
    public static final int MODIFIER_ACC_SUPER = 32;
    public static final int MODIFIER_ACC_BRIDGE = 64;
    public static final int MODIFIER_ACC_VOLITILE = 64;
    public static final int MODIFIER_ACC_TRANSIENT = 128;
    public static final int MODIFIER_ACC_VARARGS = 128;
    public static final int MODIFIER_ACC_ENUM = 256;
    public static final int MODIFIER_ACC_NATIVE = 256;
    public static final int MODIFIER_ACC_ABSTRACT = 1024;
    public static final int MODIFIER_ACC_STRICT = 2048;
    public static final int MODIFIER_ACC_SYNTHETIC = 4096;
    private static String[] fgModifiers = null;
    static /* synthetic */ Class class$0;

    public AccessibleImpl(String description, VirtualMachineImpl vmImpl) {
        super(description, vmImpl);
    }

    public boolean isPackagePrivate() {
        return !this.isPrivate() && !this.isPublic() && !this.isProtected();
    }

    public boolean isPrivate() {
        return (this.modifiers() & 2) != 0;
    }

    public boolean isPublic() {
        return (this.modifiers() & 1) != 0;
    }

    public boolean isProtected() {
        return (this.modifiers() & 4) != 0;
    }

    public static void getConstantMaps() {
        if (fgModifiers != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.AccessibleImpl");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        fgModifiers = new String[32];
        int i = 0;
        while (i < fields.length) {
            String name;
            Field field = fields[i];
            int modifiers = field.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 8) != 0 && (modifiers & 0x10) != 0 && (name = field.getName()).startsWith("MODIFIER_")) {
                name = name.substring(9);
                try {
                    int value = field.getInt(null);
                    int j = 0;
                    while (j < 32) {
                        if ((1 << j & value) != 0) {
                            AccessibleImpl.fgModifiers[j] = name;
                            break;
                        }
                        ++j;
                    }
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
            ++i;
        }
    }

    public static String[] getModifierStrings() {
        AccessibleImpl.getConstantMaps();
        return fgModifiers;
    }
}

