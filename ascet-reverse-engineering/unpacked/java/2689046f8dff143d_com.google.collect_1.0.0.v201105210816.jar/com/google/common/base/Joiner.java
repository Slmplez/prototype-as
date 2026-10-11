/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
public class Joiner {
    private final String separator;

    public static Joiner on(String separator) {
        return new Joiner(separator);
    }

    public static Joiner on(char separator) {
        return new Joiner(String.valueOf(separator));
    }

    private Joiner(String separator) {
        this.separator = Preconditions.checkNotNull(separator);
    }

    private Joiner(Joiner prototype) {
        this.separator = prototype.separator;
    }

    public <A extends Appendable> A appendTo(A appendable, Iterable<?> parts) throws IOException {
        Preconditions.checkNotNull(appendable);
        Iterator<?> iterator = parts.iterator();
        if (iterator.hasNext()) {
            appendable.append(this.toString(iterator.next()));
            while (iterator.hasNext()) {
                appendable.append(this.separator);
                appendable.append(this.toString(iterator.next()));
            }
        }
        return appendable;
    }

    public final <A extends Appendable> A appendTo(A appendable, Object[] parts) throws IOException {
        return this.appendTo(appendable, Arrays.asList(parts));
    }

    public final <A extends Appendable> A appendTo(A appendable, @Nullable Object first, @Nullable Object second, Object ... rest) throws IOException {
        return this.appendTo(appendable, Joiner.iterable(first, second, rest));
    }

    public final StringBuilder appendTo(StringBuilder builder, Iterable<?> parts) {
        try {
            this.appendTo((Appendable)builder, parts);
        }
        catch (IOException impossible) {
            throw new AssertionError((Object)impossible);
        }
        return builder;
    }

    public final StringBuilder appendTo(StringBuilder builder, Object[] parts) {
        return this.appendTo(builder, (Iterable<?>)Arrays.asList(parts));
    }

    public final StringBuilder appendTo(StringBuilder builder, @Nullable Object first, @Nullable Object second, Object ... rest) {
        return this.appendTo(builder, Joiner.iterable(first, second, rest));
    }

    public final String join(Iterable<?> parts) {
        return this.appendTo(new StringBuilder(), parts).toString();
    }

    public final String join(Object[] parts) {
        return this.join(Arrays.asList(parts));
    }

    public final String join(@Nullable Object first, @Nullable Object second, Object ... rest) {
        return this.join(Joiner.iterable(first, second, rest));
    }

    public Joiner useForNull(final String nullText) {
        Preconditions.checkNotNull(nullText);
        return new Joiner(this){

            CharSequence toString(Object part) {
                return part == null ? nullText : Joiner.this.toString(part);
            }

            public Joiner useForNull(String nullText2) {
                Preconditions.checkNotNull(nullText2);
                throw new UnsupportedOperationException("already specified useForNull");
            }

            public Joiner skipNulls() {
                throw new UnsupportedOperationException("already specified useForNull");
            }
        };
    }

    public Joiner skipNulls() {
        return new Joiner(this){

            @Override
            public <A extends Appendable> A appendTo(A appendable, Iterable<?> parts) throws IOException {
                Object part;
                Preconditions.checkNotNull(appendable, "appendable");
                Preconditions.checkNotNull(parts, "parts");
                Iterator<?> iterator = parts.iterator();
                while (iterator.hasNext()) {
                    part = iterator.next();
                    if (part == null) continue;
                    appendable.append(Joiner.this.toString(part));
                    break;
                }
                while (iterator.hasNext()) {
                    part = iterator.next();
                    if (part == null) continue;
                    appendable.append(Joiner.this.separator);
                    appendable.append(Joiner.this.toString(part));
                }
                return appendable;
            }

            @Override
            public Joiner useForNull(String nullText) {
                Preconditions.checkNotNull(nullText);
                throw new UnsupportedOperationException("already specified skipNulls");
            }

            @Override
            public MapJoiner withKeyValueSeparator(String kvs) {
                Preconditions.checkNotNull(kvs);
                throw new UnsupportedOperationException("can't use .skipNulls() with maps");
            }
        };
    }

    public MapJoiner withKeyValueSeparator(String keyValueSeparator) {
        return new MapJoiner(this, Preconditions.checkNotNull(keyValueSeparator));
    }

    CharSequence toString(Object part) {
        return part instanceof CharSequence ? (CharSequence)part : part.toString();
    }

    private static Iterable<Object> iterable(final Object first, final Object second, final Object[] rest) {
        Preconditions.checkNotNull(rest);
        return new AbstractList<Object>(){

            @Override
            public int size() {
                return rest.length + 2;
            }

            @Override
            public Object get(int index) {
                switch (index) {
                    case 0: {
                        return first;
                    }
                    case 1: {
                        return second;
                    }
                }
                return rest[index - 2];
            }
        };
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class MapJoiner {
        private Joiner joiner;
        private String keyValueSeparator;

        private MapJoiner(Joiner joiner, String keyValueSeparator) {
            this.joiner = joiner;
            this.keyValueSeparator = keyValueSeparator;
        }

        public <A extends Appendable> A appendTo(A appendable, Map<?, ?> map) throws IOException {
            Preconditions.checkNotNull(appendable);
            Iterator<Map.Entry<?, ?>> iterator = map.entrySet().iterator();
            if (iterator.hasNext()) {
                Map.Entry<?, ?> entry = iterator.next();
                appendable.append(this.joiner.toString(entry.getKey()));
                appendable.append(this.keyValueSeparator);
                appendable.append(this.joiner.toString(entry.getValue()));
                while (iterator.hasNext()) {
                    appendable.append(this.joiner.separator);
                    Map.Entry<?, ?> e = iterator.next();
                    appendable.append(this.joiner.toString(e.getKey()));
                    appendable.append(this.keyValueSeparator);
                    appendable.append(this.joiner.toString(e.getValue()));
                }
            }
            return appendable;
        }

        public StringBuilder appendTo(StringBuilder builder, Map<?, ?> map) {
            try {
                this.appendTo((Appendable)builder, map);
            }
            catch (IOException impossible) {
                throw new AssertionError((Object)impossible);
            }
            return builder;
        }

        public String join(Map<?, ?> map) {
            return this.appendTo(new StringBuilder(), map).toString();
        }

        public MapJoiner useForNull(String nullText) {
            return new MapJoiner(this.joiner.useForNull(nullText), this.keyValueSeparator);
        }
    }
}

