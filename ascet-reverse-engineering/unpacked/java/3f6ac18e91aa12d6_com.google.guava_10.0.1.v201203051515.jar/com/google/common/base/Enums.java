/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
@Beta
public final class Enums {
    private Enums() {
    }

    public static <T extends Enum<T>> Function<String, T> valueOfFunction(Class<T> enumClass) {
        return new ValueOfFunction(enumClass);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class ValueOfFunction<T extends Enum<T>>
    implements Function<String, T>,
    Serializable {
        private final Class<T> enumClass;
        private static final long serialVersionUID = 0L;

        private ValueOfFunction(Class<T> enumClass) {
            this.enumClass = Preconditions.checkNotNull(enumClass);
        }

        @Override
        public T apply(String value) {
            try {
                return Enum.valueOf(this.enumClass, value);
            }
            catch (IllegalArgumentException e) {
                return null;
            }
        }

        @Override
        public boolean equals(@Nullable Object obj) {
            return obj instanceof ValueOfFunction && this.enumClass.equals(((ValueOfFunction)obj).enumClass);
        }

        public int hashCode() {
            return this.enumClass.hashCode();
        }

        public String toString() {
            return "Enums.valueOf(" + this.enumClass + ")";
        }
    }
}

