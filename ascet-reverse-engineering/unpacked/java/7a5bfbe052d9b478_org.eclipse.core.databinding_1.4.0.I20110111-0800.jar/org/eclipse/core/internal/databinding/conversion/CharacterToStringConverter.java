/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.conversion;

import org.eclipse.core.databinding.conversion.Converter;

public class CharacterToStringConverter
extends Converter {
    private final boolean primitive;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    private CharacterToStringConverter(boolean primitive) {
        Class<?> clazz;
        Class<?> clazz2;
        if (primitive) {
            clazz2 = Character.TYPE;
        } else {
            clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("java.lang.Character");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz2, clazz);
        this.primitive = primitive;
    }

    public Object convert(Object fromObject) {
        if (fromObject == null) {
            if (this.primitive) {
                throw new IllegalArgumentException("'fromObject' is null. Cannot convert to primitive char.");
            }
            return "";
        }
        if (!(fromObject instanceof Character)) {
            throw new IllegalArgumentException("'fromObject' is not of type [Character].");
        }
        return String.valueOf(((Character)fromObject).charValue());
    }

    public static CharacterToStringConverter fromCharacter(boolean primitive) {
        return new CharacterToStringConverter(primitive);
    }
}

