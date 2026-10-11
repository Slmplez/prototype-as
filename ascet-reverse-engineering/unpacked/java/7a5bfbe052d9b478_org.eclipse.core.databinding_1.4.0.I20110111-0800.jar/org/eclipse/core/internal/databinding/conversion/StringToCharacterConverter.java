/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.conversion;

import org.eclipse.core.databinding.conversion.IConverter;

public class StringToCharacterConverter
implements IConverter {
    private final boolean primitiveTarget;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public StringToCharacterConverter(boolean primitiveTarget) {
        this.primitiveTarget = primitiveTarget;
    }

    public Object convert(Object source) {
        Character result;
        if (source != null && !(source instanceof String)) {
            throw new IllegalArgumentException("String2Character: Expected type String, got type [" + source.getClass().getName() + "]");
        }
        String s = (String)source;
        if (source == null || s.equals("")) {
            if (this.primitiveTarget) {
                throw new IllegalArgumentException("String2Character: cannot convert null/empty string to character primitive");
            }
            return null;
        }
        if (s.length() > 1) {
            throw new IllegalArgumentException("String2Character: string too long: " + s);
        }
        try {
            result = new Character(s.charAt(0));
        }
        catch (Exception e) {
            throw new IllegalArgumentException("String2Character: " + e.getMessage() + ": " + s);
        }
        return result;
    }

    public Object getFromType() {
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

    public Object getToType() {
        Class<?> clazz;
        if (this.primitiveTarget) {
            clazz = Character.TYPE;
        } else {
            clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("java.lang.Character");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        return clazz;
    }

    public static StringToCharacterConverter toCharacter(boolean primitive) {
        return new StringToCharacterConverter(primitive);
    }
}

