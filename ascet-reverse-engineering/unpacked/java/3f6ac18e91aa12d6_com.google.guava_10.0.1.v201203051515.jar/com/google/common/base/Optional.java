/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.io.Serializable;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
@GwtCompatible
public abstract class Optional<T>
implements Serializable {
    private static final long serialVersionUID = 0L;

    public static <T> Optional<T> absent() {
        return Absent.INSTANCE;
    }

    public static <T> Optional<T> of(T reference) {
        return new Present<T>(Preconditions.checkNotNull(reference));
    }

    public static <T> Optional<T> fromNullable(@Nullable T nullableReference) {
        return nullableReference == null ? Optional.absent() : new Present<T>(nullableReference);
    }

    private Optional() {
    }

    public abstract boolean isPresent();

    public abstract T get();

    public abstract T or(T var1);

    public abstract Optional<T> or(Optional<? extends T> var1);

    @Nullable
    public abstract T or(Supplier<? extends T> var1);

    @Nullable
    public abstract T orNull();

    public abstract boolean equals(@Nullable Object var1);

    public abstract int hashCode();

    public abstract String toString();

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class Absent
    extends Optional<Object> {
        private static final Absent INSTANCE = new Absent();
        private static final long serialVersionUID = 0L;

        private Absent() {
        }

        @Override
        public boolean isPresent() {
            return false;
        }

        @Override
        public Object get() {
            throw new IllegalStateException("value is absent");
        }

        @Override
        public Object or(Object defaultValue) {
            return Preconditions.checkNotNull(defaultValue, "use orNull() instead of or(null)");
        }

        @Override
        public Optional<Object> or(Optional<?> secondChoice) {
            return Preconditions.checkNotNull(secondChoice);
        }

        @Override
        @Nullable
        public Object or(Supplier<?> supplier) {
            return supplier.get();
        }

        @Override
        @Nullable
        public Object orNull() {
            return null;
        }

        @Override
        public boolean equals(@Nullable Object object) {
            return object == this;
        }

        @Override
        public int hashCode() {
            return 1502476572;
        }

        @Override
        public String toString() {
            return "Optional.absent()";
        }

        private Object readResolve() {
            return INSTANCE;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class Present<T>
    extends Optional<T> {
        private final T reference;
        private static final long serialVersionUID = 0L;

        Present(T reference) {
            this.reference = reference;
        }

        @Override
        public boolean isPresent() {
            return true;
        }

        @Override
        public T get() {
            return this.reference;
        }

        @Override
        public T or(T defaultValue) {
            Preconditions.checkNotNull(defaultValue, "use orNull() instead of or(null)");
            return this.reference;
        }

        @Override
        public Optional<T> or(Optional<? extends T> secondChoice) {
            Preconditions.checkNotNull(secondChoice);
            return this;
        }

        @Override
        public T or(Supplier<? extends T> supplier) {
            Preconditions.checkNotNull(supplier);
            return this.reference;
        }

        @Override
        public T orNull() {
            return this.reference;
        }

        @Override
        public boolean equals(@Nullable Object object) {
            if (object instanceof Present) {
                Present other = (Present)object;
                return this.reference.equals(other.reference);
            }
            return false;
        }

        @Override
        public int hashCode() {
            return 1502476572 + this.reference.hashCode();
        }

        @Override
        public String toString() {
            return "Optional.of(" + this.reference + ")";
        }
    }
}

