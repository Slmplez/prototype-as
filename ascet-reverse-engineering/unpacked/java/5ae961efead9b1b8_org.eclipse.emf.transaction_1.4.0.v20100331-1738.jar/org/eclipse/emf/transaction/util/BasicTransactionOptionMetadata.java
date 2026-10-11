/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.util;

import java.util.Map;
import org.eclipse.emf.transaction.Transaction;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicTransactionOptionMetadata
implements Transaction.OptionMetadata {
    private final Object option;
    private boolean isTag;
    private boolean isHereditary;
    private Class<?> type;
    private Object defaultValue;

    public BasicTransactionOptionMetadata(Object option) {
        this(option, true, true, Object.class, null);
    }

    public BasicTransactionOptionMetadata(Object option, boolean isTag, boolean isHereditary, Class<?> type, Object defaultValue) {
        this.option = option;
        this.isTag = isTag;
        this.isHereditary = isHereditary;
        this.type = type;
        this.defaultValue = defaultValue;
    }

    @Override
    public Object getDefaultValue() {
        return this.defaultValue;
    }

    @Override
    public final Object getOption() {
        return this.option;
    }

    @Override
    public Class<?> getType() {
        return this.type;
    }

    @Override
    public boolean isHereditary() {
        return this.isHereditary;
    }

    @Override
    public boolean isTag() {
        return this.isTag;
    }

    @Override
    public Object getValue(Map<?, ?> options) {
        return options.containsKey(this.option) ? options.get(this.option) : this.getDefaultValue();
    }

    @Override
    public boolean isSet(Map<?, ?> options) {
        return options.containsKey(this.option);
    }

    @Override
    public boolean sameSetting(Map<?, ?> options1, Map<?, ?> options2) {
        return this.safeEquals(this.getValue(options1), this.getValue(options2));
    }

    @Override
    public void inherit(Map<?, ?> parentOptions, Map<Object, Object> childOptions, boolean force) {
        if ((force || this.isHereditary()) && !this.isSet(childOptions)) {
            childOptions.put(this.option, this.getValue(parentOptions));
        }
    }

    protected boolean safeEquals(Object a, Object b) {
        return a == null ? b == null : a.equals(b);
    }

    protected Class<?> safeClass(Object o) {
        return o == null ? Void.class : o.getClass();
    }

    public static Transaction.OptionMetadata newBoolean(Object option, boolean defaultValue) {
        return new BasicTransactionOptionMetadata(option, false, true, Boolean.class, defaultValue);
    }

    public String toString() {
        return "Option[key=" + this.getOption() + ", isTag=" + this.isTag() + ", isHereditary=" + this.isHereditary() + ", type=" + this.getType().getName() + ", default=" + this.getDefaultValue() + ']';
    }
}

